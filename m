Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C976F1A5B8B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769473433; cv=none; b=QdDz9dW2Sdzsjl1CfWGOzcVkU4eZNdx9Qcw6jXByTsJ0b7IRiQocEZbPOe3pduPzdD84oxfhaI2p3omX35QVWSmcXyRFdzZXhgGhSIcY3XGfI1dCmCSwvxY/bRJ9fmYNwad6vmEUKtkgylrrOBrkW8XKe814HXIf5AzUT2ot+TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769473433; c=relaxed/simple;
	bh=02a8V8TMBEcIAp4SVi5zG4/+jwt1iznqAOU6LsNFIKE=;
	h=To:Subject:From:Message-Id:Date; b=oHxJ98QuAF8F9dsII04H0IDYwmoeWylRTskS5d466+tsWymfkyBDoi6ZVYbJBWJVYBARba0m4qQxEDpEym9X+OCjEzMTkcm7g4uMT6/f4c2Opv57MFBxwKtk1pCBhoUhxcnHYOLXCRUKIFXBBmaKAkOJnQCD72/HydEob8e63W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ho8hbtg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ho8hbtg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3727C19422
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769473433;
	bh=02a8V8TMBEcIAp4SVi5zG4/+jwt1iznqAOU6LsNFIKE=;
	h=To:Subject:From:Date:From;
	b=ho8hbtg8qShG9hU0ZoQSEgHnRGTI46wfUWKk6De77v0FsdotJv4CA+q47lpnOv4d6
	 yY50pKTdrXlOFXCzB8F3O/Nbpv0SIL5k1QUhp+xeAergjp6rUTiUQI2dl00foA3C71
	 QKs/z6VGWzOz3I1UnCcYi2dZDb/mPU4FXUjBOOLaIlS5vus1TSoEn8Gk4KvSCYOIZV
	 jr5sevqytSWMYhhSL5wuGLQGjlugQKIQKIjaGnryiL1IK3SJwVTDJoHb/R53hd5AMm
	 TWKK/M/Az13AuWNawbtcuHKju3hWTjo1MhUVHVBwPY/Mymuek7yYUiRmix/tWFb5uw
	 r5AQeiJTbaLYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D75D19511
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947343358.14762.11518883858343933975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017ba4145f013015a75384b744653efdb0087caa02156cfa556caccf6a401b4b
Date: Tue, 27 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769473433
