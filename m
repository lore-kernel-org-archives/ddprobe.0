Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175FB256D
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771675494; cv=none; b=GDGdg+aryIeDYHRERsRAkhnQoixG0MAkSqKCXFQKJ/mUmyRmad3hHwpQrCAmeTi+dStusubQEGlqc4JzHx9K+Sz36CdGhuTEKDVhPR9sKM4wr/Qn+ZFnUhMvueT3aIsXvKh+VBoxog1uITeBa8PN9k6KwNR8BLJ91ZIGdA2dAF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771675494; c=relaxed/simple;
	bh=hN7PQZq3s7PRlg3Bt1aNpU6ZZahcgEppk/Q/D/w3+kg=;
	h=To:Subject:From:Message-Id:Date; b=FJ+U7I42gHAoSt5t0fnQpBWi2UNiPGtR5bf6aD2joeP/T5fe3G+3i0PHJIjxdJNrn2o4+e6AQ93SBKNH8VnaLKX/BwnL8msn+ojTzCX5deU9i2Epxh7ON0hS5/puZSkYQbQEQXXWj8fWePsSmBgo18idgkxjPYTNk/3GE/aiBvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qu0N/1ET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qu0N/1ET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D5BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771675493;
	bh=hN7PQZq3s7PRlg3Bt1aNpU6ZZahcgEppk/Q/D/w3+kg=;
	h=To:Subject:From:Date:From;
	b=Qu0N/1ETmHzd4mcNQ1jJ8tWlHfwtEokivGyyab5ZNihhcVyfNTrInNM220AFIiNus
	 lQm/PaJZ+3SPmPJzCCXE35R94alRCYlQnUj16HtQn9T7qqk4HuCuRiRXw/Kukx2MY5
	 t+0+HD9tV32okvb5j3NYYfOhr2gwKLsWgTbBJ66kvJFiWT9mNOj4QpR00l1dPj+ab3
	 JMeGAvdRgVjr61hSxJzXX6hjjpoct6bd3sf0d8rehfxag4R3feQgwYo5wgTW7wlKXv
	 m1ddrS7hq8tDXpLLJIEKtPZyfHK32JfqPPlArOKdKq4SrkBDczqjUsIxQM9F+aAgnF
	 yBSGSxgv2DccA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FBBC61DE2
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167549358.5042.7692667776274172403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb18937ededa91151dc18568b2bd67c908242bc45f1afbab8f883d671950f44e
Date: Sat, 21 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771675493
