Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231AC2309AC
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731518754; cv=none; b=IvEwx/F0lLDRa9BZ1Y45qljvmXB7SF2XtNAyp548yLWj4x8VxtgZZMZe2JRkrZ8bLBpsgp5N1bFBlTL/aBEJ3wZtdQbb0s+nkeAUYP2Hw++ePwI9ILVyioApPoialC092fBVo/dBiG/DQSlkaxfbdJBGRYEVPfPe3SLxVCsb5a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731518754; c=relaxed/simple;
	bh=YOHsrcutPDxsGST8vUI13wyF6nldRw6LORXYa2UiLdU=;
	h=To:Subject:From:Message-Id:Date; b=G8I3sjxXftlvDOETNafJb9Z3fWRhMDOrZ6N2pHuJsgTKnigRwUeRHea3G7C9mmXbC5lsq61xsYR0e7gyvNtnJ58wpIL2mPfTr+Kiot+OmKzaQEbjG9x0WjiSzgZYUuWVpVMzM9dbBlUR6sBjmX1S1tUL156RpDOn+qkoPLEHwvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQhqIZeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQhqIZeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1891C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731518753;
	bh=YOHsrcutPDxsGST8vUI13wyF6nldRw6LORXYa2UiLdU=;
	h=To:Subject:From:Date:From;
	b=oQhqIZeoyindLYGhZA5SfRT/AAmF17Y8+n/SflOLFcwZMGlVnpBkTOJNfdKhhQ7H8
	 uowPeqHTBHNtGxhIXv+bzxLw2PMVbO+NGLorTQTFVXT5rdjCCCL0XGWhuHMUv+arEY
	 OrRnkVYkc3jht5TIqpWkNb1q5xOZf8S19k09v2beDtyGsOrSc9m5Gstv9gQYtDRrTg
	 rSBc1nWnrOUN9vKI0argFVnqO51AIPvnMuTI+p0/a2O7XnkbxxQHLjoSCMkrd9FO5T
	 Q6B1vIvZe43cj00y+/P0k3mL7LV4eLS0+W1/RSsZ95kLW+Z1sDgr0fyuQXJs1QeuyV
	 1qRzXik0W3qZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90829D637A0
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173151875358.3676.8211150639364985751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84117350e6b16afc887b27b6e98c4417f00b931188a32a6659c4c563c758e1c9
Date: Wed, 13 Nov 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731518753
