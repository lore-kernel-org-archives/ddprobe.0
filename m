Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F0A2EACF8
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758277194; cv=none; b=U3JcOZAazaEcuie5ZL512sPRJT4rEVJuK014Tgt+WPUGPjiomnfjFgQOL4MJEN8h1Pch4cwxKVGt9ghqrTu08flTah6QHwv9C2NJzaMvvtz4kuoNTyjvoPzqXejMiLekUqyCierXto/v4ldtpgV6a8yj7BPqk9cGuuSRaPmaRp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758277194; c=relaxed/simple;
	bh=eujV+W1flLOp8ZJbeAc0zQIes+8T1KOd0dVOyLK5OrY=;
	h=To:Subject:From:Message-Id:Date; b=r5fqNL2y0DjXfJW+//p7LFb0lclGWhXp322NXcQtFBhM2/f+3iKtv8a/P0yR6cbSJNjZVrI1go3p0eqysg4FTWnwkYEHkGR4fhIINz1fr7zY9NS7VChjPbwhkkv2nn2qOhwnHAh22ZgPyDIlD5HN1XauL0FsLQiAzLeZrwVS7WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQxP+Bdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQxP+Bdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F0BC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758277193;
	bh=eujV+W1flLOp8ZJbeAc0zQIes+8T1KOd0dVOyLK5OrY=;
	h=To:Subject:From:Date:From;
	b=PQxP+BdyvnkLcAQm54c6Z+X7XkItf/9BIWArHv/ARm/wZZV1AYEOz1KbS6oyhMK4+
	 K0zuk2QCg2J/HYAPXvaH6kTARwOzoJWskqrk1HVGMw5iZJtm7t3si9nDckX/+q+vqw
	 +QE6cGMxfz2YB5+7jgD8k6Lb39TolkAK/6UC0U3BoKzdMJdA0SJ5mxwtnw4MnlegAs
	 fnTRWgqDTZIWJpwSjSRwrTrrbUaWQ0YmS2cu4Ugww7bGPFMcXxlBBO7h/KemRzfiMF
	 OdgtBWNs04ChHYjTF6YkFXdxV4Da5bvWZ2dSaqm1MlMn92Jp0N4xa+hIxQPEUrw9yU
	 iXBMdR/5bOEhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0F8CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827719363.8651.9945159631349405072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7240834ffe0bc805a2e53b9f6a75190d79d8d15ecab0dfcf866b85939f9c47ed
Date: Fri, 19 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758277193
