Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FAD17D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760165994; cv=none; b=lTOIVj8BKWUXsIAyaT92Z7BcFl5O0yWQdXuB8MXGQ/xc0MU5XJderSdmDU/tLUQjoPPeGkmuXjL1ZPcH8DepfZnoCnbKzhCmGM+oB8Aoa9gx81iVqmNTqD4N+rwlW3ObN4b8XXskW2zvx1WN1ZYoVck0Ye4pF3ucWMZVsUw1sqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760165994; c=relaxed/simple;
	bh=/VppGUTrD2yypWt5O75Ou0jkNE57h2qJH0qBz6tVa2s=;
	h=To:Subject:From:Message-Id:Date; b=TWwkF2h7O9raF8XsHaVN5hTOtrukA9snPAMXkL7k6QPL+l8x3x7iKiDKmWPBhvTx8TMQHsXw+GDy94MVVpefUPLThklc5Is/L3wPx6jEO5QhPDDfgp5G8hQoJF0PsXpurMoocLCgq6IW7ZJWRhX+yZfM/puET0MhrHg7aRxxC0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqfvh+e+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqfvh+e+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60B4C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760165993;
	bh=/VppGUTrD2yypWt5O75Ou0jkNE57h2qJH0qBz6tVa2s=;
	h=To:Subject:From:Date:From;
	b=dqfvh+e+OFDmojMf1iGmyCCpLemwkF2UJVb09a6Ika6Rau3/ZQsjuMBea8rGcGPZ+
	 IgukS3m6X3FwdZ1VTz4nyJgzgbOnXkm8+jgqTpMwvJq/9fdvS0lkyMQHwNvVzPDwhd
	 UqNjdnJz1xmnoT1kq9llliTfVJK3Fk6EPJQ7fEsnM9ueN5rZH2/aqTJO3R+/ywj1Fc
	 UXfpPiY1reiplM6FHmdDqJoJYhOM7lm/LZgrX1SxeqYpsX7qfoUoLjjejUu/6SOCgx
	 Nj7rGzp35cKl/g7LeKXZ6VbjxYDTJuuCIa4TiR86Y4A2RPlsYr1S2OZcm6Zt2fVaEF
	 VSyr5oOO08M9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B21CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016599357.15401.7323340165216311412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c4e8078da023d0daa25e0a33ed8921ab8dd4f0ca09d6015313bb53f9b8a1ba7
Date: Sat, 11 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760165993
