Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B72321ADB4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736771754; cv=none; b=BIcIZgac08BKhxUJhZAMbtNmEtDjOsErUjxn5TydGJRLBDrNbS40oqvJqjc738X8u7e1cuEnDUaIJjSXAHQfWeZnC412racYhcSXo/VC3+Oz6U9wsreG7kQnxGF99sSw0ArCOwaL2v+94A5nMOBY40dW8P+GRJ7Q833tw+3YcCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736771754; c=relaxed/simple;
	bh=MNXFy4dw9A/SWbfwAOSiJSwzoGsdeN2dU4gmI+t3LBg=;
	h=To:Subject:From:Message-Id:Date; b=YhofQTln/lwRAx2EH/LQLVkh/qP/JaYMqPwo5MFVKOPgprCv6UbpuaDriIbCoW4TfFfenMCOp/NGzj/yLnx/SUzrmWZ1p6uEkKmJC4cdsUDCC9GRv9EuEv4n/UTuaJKXoo8Xd8YKG1Bte1GCdxro8CT0bqz5l7kXZrFVFff6/6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVuS3SKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVuS3SKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE418C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736771753;
	bh=MNXFy4dw9A/SWbfwAOSiJSwzoGsdeN2dU4gmI+t3LBg=;
	h=To:Subject:From:Date:From;
	b=VVuS3SKgzM9DveYMGzpiHTZPFVVAx/yEC3vQFwmLZPOoXYxx4yXSbCSKrLmrnkW4U
	 aDMZzSbjyPrcGvPeomcVCSnvEyTCqsNd2ImrUHwFMew8HU2sec2Oo5LPRo1WI9+zQF
	 P2XPIJAiRRJN9UCzdIzHS/qYQDyZ+/VWZPtZ4O3zhCwMAYkk0LZ+z568FiIgUMmHG1
	 yFomgoY+CwUgo3cdxXgHci2SSBwUfu+iFsGfVwk0t/165rAG1384AlAzkpYyTftgoP
	 isojYEmoIC4IYm+M/SfllHG8DfaXCTuYCbLgdR0UpaJt13y5D/nQqXfaInVFw+IhgT
	 EdgvhZ7lhvJfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952FAE7719F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173677175360.20564.4317741369618138924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b9fee3c2249a387534383aaf7381a344816574ad695fe54a515d54fa828eff
Date: Mon, 13 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736771753
