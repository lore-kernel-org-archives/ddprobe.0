Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECDF81C68F
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710689897; cv=none; b=roMj4y5mlo/5gxbv1OWBBDRnD3ns7kPQGUjGq5iu9N+Q0x55b/8ud47+YYrvp4MW43Yfy8L8mFlaEfn82oequxweSEbJRsgCh+JJ+wxbt1jY/6Av4A8VdYbH122Ju2HeBJyQ+3h3/TauRI+i/zS2shO4CjtmCH4QPUQb15mGp4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710689897; c=relaxed/simple;
	bh=TM4PdJ2oUQtmEbuw6KH9Ud/q+2JaWOGRW32U39dhYUY=;
	h=To:Subject:From:Message-Id:Date; b=f/SvV9+scCYL9nE+9gVG277LObQxSIa102FouP0wEj7I4U5aXQtADZtcl9Jc8K+RM981r44lzWeNrpnVTAO9E6rw3tFlmfFzjlBt/VXi+7mNbRnaBndYrLFCT5iJbDwaourRiX7vjfGxK9+giHi+dak/xhMy6u4TGWvKvFha4EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDZ+nivE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDZ+nivE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB47C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710689896;
	bh=TM4PdJ2oUQtmEbuw6KH9Ud/q+2JaWOGRW32U39dhYUY=;
	h=To:Subject:From:Date:From;
	b=CDZ+nivE5OBkLdkGQZED5V9fHFU0p36YZ58u7XXODkvpZ97I3BcvABSpBCG8E5ar2
	 Kqf8oz+eSR18Gm3M3ysLfz5OrS3Twhn0TwriV3Z7qlOO37n153lQdod/lV1IomxC2a
	 y06bu4EJx66VEvBHjDL3jlsf2E/2SO0yLTsNaUapPBZYUC5KOlhAzJDgk8eEekoXPy
	 Jvz/Yum7u3eRzfBwxD30nT1EVyjixXcWqQWa6pkmXOF2k/Ye2EklL8VLBCDWrVb1pR
	 1BO4I02iJdZ2eH/7kCAZUpfQgOPaPm/RYJj08T4MFfs3WS7dCHrqEH6Yc35nAJe2+u
	 ndsMjH6/duXxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D173C54E67
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171068989637.15589.8889063521029733670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c561afb31a2170fdf3cde631dfd226555e6f5b147aa39968e165cdceeca8ab90
Date: Sun, 17 Mar 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710689896
