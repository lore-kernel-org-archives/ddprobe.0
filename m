Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264CBAD5A
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754621995; cv=none; b=Quh2E2tfyZp3+aFlESoXZijY5lMSUj22lIZLF6ZPnXG8LRPJxxDr0RlaO5BxjnqgAKSX0N9740UzT63soQ5DiAVcMdQ9Yltpu2ovBbaQt+7XnGfOn5eqf9pSl6gJf4RV4njDuqmkf6Ciuygon3HJqO5BK6Xj2/ukjJW3oCov7y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754621995; c=relaxed/simple;
	bh=me1AVCBkBtPyp0cFn45fX58DOE2R4LqiyxXNRMWT9b8=;
	h=To:Subject:From:Message-Id:Date; b=QQhvfO+PkiaUOoU7TVnxk1pZiu6/jvgNb4kVRlGEvRzotj9Uq4oaB8F1PckynMEph/I+rVqH8qPV5ufXStdUGybn0W03oTPvzsRg03HtU/YCCESqYKvWkvpiqpeGKmgHu3HhdObnaIUqXWO60MyINpK6+UIVCoREA0MCfDBSa/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYoo9WUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYoo9WUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E9AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754621993;
	bh=me1AVCBkBtPyp0cFn45fX58DOE2R4LqiyxXNRMWT9b8=;
	h=To:Subject:From:Date:From;
	b=bYoo9WUsHkPZR4Tf44whfmX62C0ClKe+wDL7+/HdV7/ii2wiua3KmrB3AJGufTuL5
	 GQETi1bLJ3nz42sb0MqrGk+5I8X3c7i+Kczpyt2P2T31Wy9jO6FN+QduYpUgaViYlu
	 6zlKEXuFQdy+RO3Vb0weRazXHS98k6Mw292xfO8po6+x8ztXj0sp6yhtLXXX1U9lWk
	 d1yjk2UZPjySIRGQUegFFQhuPWzOpWlPhBK3DEoWikchia3r6LUOXAs/C5h0eK/6xA
	 vY2zR0g7oSpy2GsmgwqAKlm7x57pyheeJGOltSwb47R5d8SBb6Nm26Hup9wbqHzJvC
	 UuMPPY2nLF/Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A4C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462199358.25107.4564995996839646440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fedd3775f943ab856058767e5cbba222611179baec9de681e925bf6d77e4f96c
Date: Fri, 08 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754621993
