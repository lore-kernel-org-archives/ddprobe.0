Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC4128CF41
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765121574; cv=none; b=GiBkFM5vs69uZkZtUYGFD12hcF+garf/fn1RhovrbOrRBIw7Kc9ttRbTIpnvgOuOFODObPibsN++HdUBbC9OF0Xy3D/nQs7754+zQosN0uof7qnZpp4KD+DbtdtzqaUWGcPKLxzZYr1E2EnWmypTB7gh0S1AP0crIvysNL2rG1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765121574; c=relaxed/simple;
	bh=XwJrDpwI2WWZtBtOlfe8n5GwvHTG8WQpYtoKzIT5n+w=;
	h=To:Subject:From:Message-Id:Date; b=OgTy/on4DytAAAlAuSdFrXijzt2+SACQo2ra6elsrsm6tnbUlh4v5TicmWz/Prop7eAdJF2pXlDuTNUZ+j39l4htcHwm2zZWIZIABU2/bISHbwdDal0bkD1/igc7G/78S4PwumyAv/rND6po8PBDKJx4ZGCDXftcpmnrQBx/fUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7C/nog9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7C/nog9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41C6C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765121573;
	bh=XwJrDpwI2WWZtBtOlfe8n5GwvHTG8WQpYtoKzIT5n+w=;
	h=To:Subject:From:Date:From;
	b=t7C/nog9Y0Lzm8Uef5WKrD8jxuspXKuGqfb7rZ26H3oqtlnDdkMRM421SFSfXwycY
	 iXEm2DRiScKZ3RyO1VLGQte3FptRnO9Gvrwm3kVexr2K09xtOq0JGQ05BQhleH0nKE
	 CYz8PnWZrQE0V5cVoujchw+mU/opkhZ0kYrY40fz10glBN6xsq3P/d/ykAlzF/cq4r
	 SnzvbEfEMbfuIO2fjvEX+dvtKfeCEnwbLx7oZFjf8TFCQPwr35SDTVv/f6zXcakXxC
	 eqkPywpKNoqhi4Zd/mt54DB/yrPyMwe5E/PXYa4iMl5C3xSi3HsyQaKaM6HewLEawj
	 F/hEB55s+cj5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957C3D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512157358.8336.14443435328204874290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb942678909abc950013c78a6e4021632338faf5fe27a2997e6d3d35dbb63637
Date: Sun, 07 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765121573
