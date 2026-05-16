Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F41283FCF
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778905834; cv=none; b=Ja6r8qLKqDCiDAphRsc3DcfHcIugGDQQiFqPZLFiBl1ALSt0qZ/23idMTfCI78Xw5NG9VblaR9NEnrR5CiNG2sJH1JSj3tUQFYRt9PyPgqZll3s1W6XuUiBaJDyXujiIOZspdC1i+bvw4q48ke6Yd/ItfiOSJmPVGLEVYgxmR34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778905834; c=relaxed/simple;
	bh=sCGzg5hFRJYoW9eRfZgYRN7INbwR/IYD7iagMqqskm4=;
	h=To:Subject:From:Message-Id:Date; b=YARGlN0iUaZwu9c9CEcX1R++L1cv4yZOTeAl8OX4n1Cibflo8thAUz1MLLNjHZeITLchQb+XBEZONFyYSe+qityrR/KhyRo3kQZYnudZSrA4SOaniZWTvuiX41rxyoljd7pTI6W8A+Lykxyi60x+LwV1XSMfmk3cHkk7N461dys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lG7aPtL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lG7aPtL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7063C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778905833;
	bh=sCGzg5hFRJYoW9eRfZgYRN7INbwR/IYD7iagMqqskm4=;
	h=To:Subject:From:Date:From;
	b=lG7aPtL024hnSO4kaBg+FvwfankwS5cmotvt6d7aBYg6r7uOkuG6ZOqPMXY87cMvy
	 N8fx/qn92C8Hbqh3s6UveTchIshB5cOtm5fyqziYqBZe/AkuYUqqk3M4njITLDYILK
	 nOr+mdQc5wmfLFoI4kVpAncSVqu/veb7j/JcwSdiYVDrytQ75jZEripOB/6o1zBb/y
	 WwXYxE0sN1YJuQ8SFQSiR3/bk7dIUCAjWayOfhHgsRO6ugB1jWbOY2S6ZIz2mLAaHF
	 99zjheOvV0eSz5zKbYx7APC2eO1ShLZ4eZKCnF7j4bba6XbRmlGB3eehfqsyHjVKsZ
	 EKeE7nWLReq8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1321CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890583370.22972.7734887163969110629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e357a88a6361bfb65402c202704e352a0bca4249a53b3e2406c7034e6613ede4
Date: Sat, 16 May 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778905833
