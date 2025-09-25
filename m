Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9762E6CA6
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758769194; cv=none; b=DgJIYmDI4J+y6xeuNxTXy/alLNC53XbFbXASxloG6XY06JNZy73Fob7PqVaEq08EiZcT3bDJkWHWqyUb14BJYFBwiODs60z6PxIEeEoHg0y0POOioBwReY5mFdOPr5sfKWC8i4j9HIzqb0L7NNkwtu+Sbw6c08b0qCiNNnxHue8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758769194; c=relaxed/simple;
	bh=TakgHQu8HAuqjL9Xf0hVcQaQusP2rXAmJT0UWjkgKWc=;
	h=To:Subject:From:Message-Id:Date; b=T8dQC3BtnrJP93Nr+nvwdeBYCDlUlw7FxgTtSZXQPFusAWTub66z9IC+mux7FCLUZ1c59zA+43xwfP93Rp2eXy52qrDguzhZsDLOIJS1XmZbWiIoTenOwfQJ27Wrj4CWDdh/BHaSUx122EA8n4Rtu24cnlGM+ltTNu517ZaiBYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjDVcNz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjDVcNz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A668EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758769193;
	bh=TakgHQu8HAuqjL9Xf0hVcQaQusP2rXAmJT0UWjkgKWc=;
	h=To:Subject:From:Date:From;
	b=TjDVcNz8AZ9ISE0TCfE3td1I06aqf0NzFnO+OdhY1r20KHGrDEXsnC38dr23tuoHD
	 Z25Pgp31LRuOcrzEA1cN9DlIlwVHKC9PEnP5Y7g7ASnhfppXXjxccCobviQOkBgAla
	 vwO3ew0ZoSblSO6NfQ4shoCzUhL046vnSGWH37n8KEPuc5fjpYcm4mrnCQN+9KnkWm
	 nWDGd/xBHMviuoVe0A9r1JOUp5oH56ECq+tm+ztT/4WCdkHqs0FrA2QRbTdsvBUtMx
	 yOIAu8CMu9Nyv4/BKChd7fOdWmgK9S/eenPPf9ut/fcsQztbZohhrmI/qcMDISyQyA
	 vSaKQifahUOeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB9CAC5AE
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876919357.30448.1545365152812314421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61047e36f8a5810fadd3825b6be456869f43ea4f61aeb79082f7124fc36e0246
Date: Thu, 25 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758769193
