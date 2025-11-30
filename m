Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A63B1A2630
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764546174; cv=none; b=hfeJZp889ZRFBWpTaNXeXJT3aWJQ+Lh93KURqp//q4Bz9n9ssg4AfGjO6opTn2y1iaKrkcJL3yCndXwTSlmtjQj/8JVYKaTSI8t4F1jZT4fNl2kLlrQ+ilqyDCEOEHd6l/jjPHScjobNtHjd2wFAlU8CUYLoGhg5qTPMyjnJ9ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764546174; c=relaxed/simple;
	bh=L9rpPSBgIm/1Aj1A+pxnrd+6l0HyH6uZn1Jd177ec9U=;
	h=To:Subject:From:Message-Id:Date; b=RZOQzY+hHP/51lJzWPVLDJACU9xtKTrBUHn474Ba7wbxB14k6ejYpQJ4kufVSJGWHLVBVOv3uR1R4N0z1AAjXhB3UVK+H0oMOJUlwG1cG6Uh7AQDz4QJFMwIc9ffVRiep1IUM3cNUhoZO9eXb2I6+B7YUQCcsu1wUQzTRnn0C8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/785K7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/785K7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4C1C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764546173;
	bh=L9rpPSBgIm/1Aj1A+pxnrd+6l0HyH6uZn1Jd177ec9U=;
	h=To:Subject:From:Date:From;
	b=K/785K7CKiWqm3L0iA1OuydGEfHY0BlmCP/0qBbR9hXDSlVL+fbUSkKvgsNixEcNx
	 VgrsZnkownMvS4fRDI9z8so5uV9CnBHcMF2hB3ThpUM1a2CObdCeWQUTRg2MDQqqBn
	 FgYSFl1XmFdy21P1dIx0++L33Vf41yibnB1dO0wG7Cuen4Qvtw+N0aTZbVUKxyQisw
	 ILcKn60PWnf7iMONzlxOE3tF0wGFDvjChqbKuQyXCPiEwXJ3pQCCg1y/EYKirurFeV
	 nQViJn1iFtUCWfC5Ltrgb0GXRkAyZEOEo+SnZi6VTyxubWplSrc8tJ3mQYkgthEJKC
	 n2bqU7le57z3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98306CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454617358.30846.7889229353312089071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c1ce26c1d659d05d48fcf173ddb914e05830a38ff6910e98db270f1c4fc3298
Date: Sun, 30 Nov 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764546173
