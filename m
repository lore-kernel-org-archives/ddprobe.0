Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2387482
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747884595; cv=none; b=HOldQcRGNQRApCE4hIwpX1U1G9nhlMtSZlLuCIUBhDms3ul7rWNJKxF9yUftlLuGaazYa5A6VRzTyow/xJr9yQ6GT3AFSaX9qATz0yPx86Uil4lSRTFbhYUX4NwiYSaenVuOO8v9rf6FOG1j8g8fPNr7fBMLXZevrmX+yW01Qa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747884595; c=relaxed/simple;
	bh=Q0V6aMwJGlC8INzJLPxFSGmrGPEacSwXdygcmuuh21M=;
	h=To:Subject:From:Message-Id:Date; b=qG0vepp//NAIMT5m9QyHUIk5itKXC5E58JoCB1GaTmSVTYXkmIkgINISih60xPTivd/C6jLvVfvMcqaQUsjsvqMtK8ghzPuVAVs/qflu7PqavkrGBLsap+5ui+TIOiqGDbGcSKnbuYuuvMXwawT8qEx/JMA+XtHNy1G6zIiPg84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/PIZ10t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/PIZ10t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D69C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747884593;
	bh=Q0V6aMwJGlC8INzJLPxFSGmrGPEacSwXdygcmuuh21M=;
	h=To:Subject:From:Date:From;
	b=R/PIZ10tC5bCd/AS+RqkuwS4f8DN7M8eARhepk3vxWBbJ/Y8v1EhhiSMWh8JfjuRI
	 0qzCQwp59MypaXPEMIvd1NfSeQGIkK5VG5FlabsnU1JlxhNGwK/71dthQ5fP8nFF4m
	 NYyoM/ZI59bY1d1hPue8J0zGbRckzvx+d/bkgvR+pt5J+JegskOmIYhTJKH0n35AHE
	 0gAvogD/zqFo+qGUtuwSTKE32UV5ew1wdT7oBamtbjJbfrT+Rspd8SOczukLZ3Apf8
	 2kV8JFj3N9dW74DjSlDK483VVpfZZkp5kC8m+cdGI8rMgtcG5NB3tkiLdHRL5dAhWP
	 6Pjv3n2mfTZnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E386C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788459357.17583.10228139484558229503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b680b1ca051c86007aead7c3421b7f4c72a553497c51749728d04c209974a0e5
Date: Thu, 22 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747884593
