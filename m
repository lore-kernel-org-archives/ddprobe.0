Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3CA2459E1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781251594; cv=none; b=ifdkdrsGTEl0z3k/RpmT7VDSFQpdWHtR0c48S/d4p6xymROaUoy7FF5q18alQNSrOdRe9IBb1tzycYJBr/3frWRRCXQ2RwmOAsfIPxe7UXm0e24Y8qs3yQ6C2vvV82QFiKSQJRL3gT6r/Ki0sjAMvBmPhp2Cv27glHFEuLCjjvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781251594; c=relaxed/simple;
	bh=L7xlcalpgtXafxCcOOYnN4HRrKoPMrqvSOXnkTBUsb4=;
	h=To:Subject:From:Message-Id:Date; b=lgieDPKaQ3yTLGOvolHY4CgRlcomKqbqfuGxEqYnJuTsVFVhrQIlFlTCkc29uUNyeoRcAPXSFNJ22q4J1oH4eAuDtjeKi2zx/4XY/rHOcA0empV2x9FUv0Ej8cpYPdjvPuKttfl7c3cpugxfNbX3VH6GavM2bpT+Pf90GSM8FaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+8biVG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+8biVG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23FBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781251593;
	bh=L7xlcalpgtXafxCcOOYnN4HRrKoPMrqvSOXnkTBUsb4=;
	h=To:Subject:From:Date:From;
	b=V+8biVG8OxOnF/lmfnBQdUjOfS3LAtoY4UmVYPkmMXyvYLrhQtZlaM4oy/NSFbbMJ
	 n0ejp+5tA76I2qTo1QK6a2zhOPmCuHub/af8xN+eGhFESfkFjhJffMQkxIfYTHNS3k
	 pbCQ42KxEl546iWeVVDmbjL2AV4CbhzyoTFn7AbmN1ht70NUw2GyoglqPeBn5ET56v
	 Gox47gMtESpwUm3dNsdABWPXIv4yQRgOCmuOz6xIvslUHHj1FV1p8l/QDr+2jGVPrZ
	 R99NfTa1RbQf5Cj1RQqJwgYDq3ubVCk07V4HxXKaUhHdRq0OnhId1YL3dAwjJlXZj5
	 CX+aSEq2jsPyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E86CD4F2C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125159367.26882.16539537359789999133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141d637adc1f4bfa9c2bc45f7097f11d2729657e4f33d83508f47fd87232f2ce
Date: Fri, 12 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781251593
