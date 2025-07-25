Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11485248176
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753479594; cv=none; b=gf++Gdfq7Uto8ix117910UURyshR4/Z4G5NrvH/yG16H1QOe2tSynd59k9t3U8OXQN5fg4TEpF/p0YvS3PvzU20MYOe6g1o5/EBnlqZZDCt/4vMVNR4Y8/+nDdno+QOBfWGE/JN8blltZV7+H4UecqlDS31TfFK8A6bGwhlNVCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753479594; c=relaxed/simple;
	bh=yeAkQiCNgPV0pKq1OeyPnxn1PUTS5lUp8Ibl3/aHJdo=;
	h=To:Subject:From:Message-Id:Date; b=V6ZVeEUqPcTvn3wyItdl1lgFghfTbHjWel4AZLjmB2suYxSApYseeF+WJ4i+iUH5os9+NtChTz7IJewYfHKroMpiaSpZRLQpF/i8A/sOBt/uOnj3d5KSxSV0iRQGZ5xiNKgrOXMcJIXhxGfSpYA544PEqGhaKqSzc7idi1OCE2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAqgzpy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAqgzpy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C9AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753479593;
	bh=yeAkQiCNgPV0pKq1OeyPnxn1PUTS5lUp8Ibl3/aHJdo=;
	h=To:Subject:From:Date:From;
	b=pAqgzpy2ehltNEvA85vZCM8f+yV7Tmcn6dCDCF9zksUhNVEfGJiQt9YY/z56fj90S
	 s2HXlg5ZmEhhBkwanV1a6qBqDJEsabDVv60evnE3ciyL053dB8uLyTGdLuatD4YWhs
	 u+aOPkIPvfkWBpdoeOJlucRrfisXrY6t1jvg6lwnOCY/VhkSUvacJUlpMHt7+Q2xig
	 lpddC6OjIS8P+Wrw0QsYnOZtFsZGphc4ckzcoe2O7ngq5ARj2BHKoA0dpYSEDBZCwm
	 R3y5VD8Zuz75qbOv26o0fgrYTwHdsLq2S3aqgHUBCtoLZC5pCESEgfzVWHA3LZSGUg
	 fnBCyUqw85JrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB22C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347959357.16653.666574423408661940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c428e8a3ad321cea4597249870a77104625f208b7f6429964e59323df9db3d6d
Date: Fri, 25 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753479593
