Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE7E1B6CE9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777871854; cv=none; b=hPDlWSZldVrFXNbW+q/b/qK13Aa9juPh1FUPo58PSJwkRBRcXYOyxNsYf+B2KW2frLafw4AnxgOrJ1Pe53JbaDvgvUiKobIiX6wDnj5k4aAV33X2MBejAC8BvdoTm7rN4ToJyTpUXkmrj+YijPsk713YCj1UlJ/xV01CwNw3ew4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777871854; c=relaxed/simple;
	bh=m7MeqQAgzSVN4FsDPYg7ESbQkFity+jwsCAMjpkaF90=;
	h=To:Subject:From:Message-Id:Date; b=gRvbvmuRZ3rYZ39fGBXx3UC6+mGBWwPOaMVIbVaxPmNsjFV/Nd6jRLZjIajjJ1KVs+Dfi/HOFWxhZgCREWTRBluBrx4Dye4ynfGhQesNRmNFoBj5fxQlZI9EW1s85W6xLy3Kty5kac53RyhPGg7Puhtp7romnlTcNiccTeK2OWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDShpH0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDShpH0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10FFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777871853;
	bh=m7MeqQAgzSVN4FsDPYg7ESbQkFity+jwsCAMjpkaF90=;
	h=To:Subject:From:Date:From;
	b=HDShpH0zmTZroEoiCu2VKzvLAK21pp5m3v2WIJrXtQIgnRbet9x7wgML4ChufWq9t
	 kz69Tv2hZHp4Q7Ln+dfiwVV2eIGF1XvzW14DbhQVky7WZtmOqPIYeQB4KYbDNzJfOk
	 q3Oqwy8IbZoKv9qmOZsvg+l2FatMzBg83T0Bw5wtytbPtnB9EqFvD7HWBrBafSNyQK
	 Ekenb4XRY7OXm4AP/m2aOAn2ALT573Wu4uh/WLZ1wl/F6xIuluKI4SKUFiXuY4fP6f
	 EUOlDPWqmcxDq+ksSvI+ASgvHMqGUbOlm9Iwb9JlriPhVjs9/zthi+P6pwYJlUqOe/
	 Qhjp7k6aizkXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCC0FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787185368.18119.3660773342723472737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218b80f19d5baa3478e907ab18e982019f7f246326790b320f2e011edc81eaaa
Date: Mon, 04 May 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777871853
