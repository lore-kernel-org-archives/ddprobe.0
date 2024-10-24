Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E381166F06
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729759554; cv=none; b=oT+viQ1NFCTelZOxohe3d0MSm8g76/Mw6p9tx8mIFGh2Qpi/YtXH986Zq9PH1VRrfh7cShIH3gXQwZOYfATuOR/1O+BnHktEn1yjJgemOI85fig1+/valyVlqASqCPQO62WQ96+U6ghxxed6LteO99D3FCbTR6BoWywCMvcme5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729759554; c=relaxed/simple;
	bh=JssQoAKvigNJlVowPtDlRUjwX/o426nVYQinqVCFTVQ=;
	h=To:Subject:From:Message-Id:Date; b=AynNgm3TzuBXkILiFakYnMtEICf1SRd2cga/jZLUC+KBJF5Y4z4Re40AX3gtNFDgRu5j2/b4GJ0segHlb9n4L84iFqU8H2x2C3q3SVcE2SdY5rtdQOzHcbIVMG/ducCKwsrUegTKlG1FhBsI7zTm1l27k5sW+FqQwUk6FSY8uTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAxElkuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAxElkuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B001BC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729759553;
	bh=JssQoAKvigNJlVowPtDlRUjwX/o426nVYQinqVCFTVQ=;
	h=To:Subject:From:Date:From;
	b=WAxElkuvjDBUNq30NDd9YWQ3QXCT2IlaSR5/DF61CxBDvItaIn0i8GjLofqjT5MuS
	 7jyK0l2STp0xaunTv7CqFCrO0wu1ASn00V0N+IRjWL8BsoxjiZWPJGJmuIs/Sbh1uM
	 lX5z/Ej/ZnTULlVw7c6RoRQkjFIDtL2WvPBpsq6/Xasc5MlkgqpHsYjNs66BOTWJQn
	 cNHpVZC/bpzlSuniOQg+s22UXcKrmYzd9eFJ/VFFuogI8sIsjDw6PiTBFMqi6nuOpK
	 eEx5CjTyenfkqCKm0umXNZUAL9G1IiGNE/kSELi5Mq69J+zOl2LokXCNc2C/nOD+e6
	 L+VQnX8kzXKOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C65DD0BB72
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172975955362.4213.2615743678280077268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c50f5c9c31e7f188c51d78cedd51c923591aaee33ecf57d4bd7f8fad35974b5
Date: Thu, 24 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729759553
