Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6428A1078B
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715418143; cv=none; b=pjpsI4tJxtLTK+HgqzZbIbfEWIsIsBmd2Dl9xYEnMrXXlOSB0F1WFrIq0oArt98ard0vYeTpSJsp398Lf2xItZYXoAF2mv69DNWl6pwJudlc3xldrCmH+dNL7piLFCurnShen+6Mcn2XHn6ku9lFD8S7NAv2/WiyyAn+NEMHZIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715418143; c=relaxed/simple;
	bh=cmjmS3eCizz6lVzRXp+8DJJMoD8yx6rs/P2QRsqjOuY=;
	h=To:Subject:From:Message-Id:Date; b=Ujayvlhp4NN3gWbfFTaejlkNz+AcHVHFMkYdxHas72IAPQ8swltYXO++HZR8h0yS8jwNOXCQ4oW6aqRX01f5fIC4yaTP/3fd7JqG2rywp2uVRuFQNUKo5ZxtuJqVMvknSItadufQwYD/hCyF2Zsc25TR9fr8bK95QqFBYLzx4p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjkIq6sr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjkIq6sr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBFE6C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715418143;
	bh=cmjmS3eCizz6lVzRXp+8DJJMoD8yx6rs/P2QRsqjOuY=;
	h=To:Subject:From:Date:From;
	b=mjkIq6srwm0p+NGjqZWHJ2BhPP8bSN+NFCmkb1Vz/jiJ1/FfsErGyswaX7JqlQgeW
	 lfXSte0QEU07fkFVI42LAU67SrF8mc7OAv4v93zCv9wKw5nF68PKIgFzbGML8zz2+6
	 yspqw4ygl9LZkVCs0exisLpp31OxBIsxVG1LVPyETzrnBkFqhqXL8k5/Qzs0cnL6ha
	 pSo2Q8dfKhsmnjmOx9da4Wah4b+CE9KBd9Ic8+AO/wNxnjQSVk9/cq2nW0Wx+OkzuA
	 ydeWvVC7frxlr2KgSI64pWzMcOmoqxDNh5vph1cwxGVv2qnHBcHAdqiCgQ106GrjEv
	 K45/4X2tzGvUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9AF2C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171541814278.19706.7683300604289499427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45ab0271943158cb2e90279c7ee1593fc124ca767e6d96c2edfa0917324ca35
Date: Sat, 11 May 2024 09:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715418142
