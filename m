Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4521386B4
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722088554; cv=none; b=Wt4PooBisUMrW5nSFlhJEaDptOSYQCDAsD5lzafgF4ERrYz8BpU9N+ikOjojwajKshvTACuMVzaVyAjx+DnDMv1dqVf1WnNSZwGiyNJNLglFVFHrTT3rWoOAjmnRbfgssRH25U/UUOkUzOao9BMUd4qUvf02yYF8vRqAUMRxsRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722088554; c=relaxed/simple;
	bh=zy+dLltugxFYw2ZPTze13CGaInrTlfDMttlBJPyM56c=;
	h=To:Subject:From:Message-Id:Date; b=McaYZFbfsrrGP+3WWJUtRocuZ0Kqa/m6zvdvgPaKpphozHbnRohRe65bS1BCauC4h3hSl2TAN6THj2a2di2BNcjOQ/5O4K3RA7z2E4cOIm4grNDlKne0iyyGpzOu4tfsQSxI3u29SV8nRVcZVF5+q/qsz0cXq+dZwQmtVbqgjpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Exq/fypl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Exq/fypl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DA4C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722088553;
	bh=zy+dLltugxFYw2ZPTze13CGaInrTlfDMttlBJPyM56c=;
	h=To:Subject:From:Date:From;
	b=Exq/fyplgMWrFRAFzblDcO4Fldatd5dxSMri++OAMjPFuA8kN+0CIAUcorQkRoC4B
	 IaHYoqHmFLhN3hGgWWlddrDTeW7rD2RohHYSqQvCruua9eoxGB3dLiubPC0PjAlyhg
	 Yaw5W3yOw59apG0QDN0LePmdV4K/wK6gMsNxBRNuZ12Ac54cZt55sYYaeMhQkRgjeA
	 pkHsY9z9Njqt7weDhBn+skjGMbAUJNKa7ZCBLxb85TWo14qTIhKRozjxEMwmhxcLg8
	 G9PGj60PnC10zPGZWc+cFtMaopa+zclX5B/jZeQL5IwfzIXKH39YcWzcATdmv5l+ei
	 Es7IdESNr/bYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBCEC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172208855360.3323.3619074530055248444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9920aed6f65536685e38cbd6cf17bd8af6d664ae69bdf557fea30cfafda420d
Date: Sat, 27 Jul 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722088553
