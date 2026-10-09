Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFE93A8FE1
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791566434; cv=none; b=LLvswTYsxU67aBW2bXJtUnJP8Z2N2TJyTIq+yXtZbOrB36dnxv/FITdpgGIqaiBPwHjeoiZI8cNbF22TuR8OMhhLoGecE3IPifndXHWxZ+nuVgxSm6bHR/hYYCzt2gKyGAkNfx8W8466yRnBHBcQORanljFTHWujBL8ipZfdMLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791566434; c=relaxed/simple;
	bh=/0nHnWPAKN5nxZll/DnXUj7KfNSL/OXmJpamwhQLcio=;
	h=To:Subject:From:Message-Id:Date; b=bE7nXWiDBSLVg22dBqZ/Cj0W2PQnKyhBTcanJw07vDBL/eNaBTOnXYG1teQ5OXbLWkrBlx80F5J5BoEGT43V4fP4O55CEcdRpxwXeNdBEIA+PbeemD7wdjELu4NaKNOse/yXGs90HdK8HxxUg1QcT7ZCJPM3GPTHFT2nYBe1iNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h13YTudC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h13YTudC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5554C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791566433;
	bh=/0nHnWPAKN5nxZll/DnXUj7KfNSL/OXmJpamwhQLcio=;
	h=To:Subject:From:Date:From;
	b=h13YTudC6QO7RcAjSu6UM3EJsSOwOtsA44E5i+BP//IAb4+eMs0tzFlyrHp94CArp
	 IgjVmWIpEc2hRz91EFqyEaTTW3BoB2IOJVMc7Ilwf497bg+llIik3itbBIdTwY2t+9
	 TOCCRZZjaIPBBwSnzY8NAtfWb3V65hPKu0P7gGnlwKIoNdRN788fomjXIvDSo5uMuY
	 nqs3+n9UZlVU3dhV/mruoDgpLK3G71u+P6K/qXfUVR1dEdcdFAl4oh8vfbXGUcjA6I
	 twdMECVdAjRNY8DsZ5ThOnABVrQlHeneSQWWjS4iZ7vhTKBY8SqH+Fw/I4B4+n3fpS
	 yQMUpheFk8tqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06EECA9EBE
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156643368.20355.1146699876475289439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d00ae0d35ef086cce3c61a2cd57eeb48885bbde4f3f962b3bdfdada700ce53
Date: Fri, 09 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791566433
