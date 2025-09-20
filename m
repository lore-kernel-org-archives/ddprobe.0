Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2CA322156A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758387594; cv=none; b=V7EEWHhiY70FRQGPHk65OQX4Qslq2LygARtAfbVCCOmpiFHTfKJ5sZz0alGT5MXO2Hb+jZegsIbiqvg0fWVBMQzzyoWXlvlle5941sC5/0CLcHYDmeoj53ZsKOkqkYsF+YQZYIrRig2TdtN1eEMTE/DHyvH16Tr3KX5DA6mgcYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758387594; c=relaxed/simple;
	bh=tG0cUudQ4Bv8Huwdd+XF4bKnbQDdvLih5xAgzq2HuBQ=;
	h=To:Subject:From:Message-Id:Date; b=bnMIXpGjTNN989S/Wj7CylVjTRSNRrhafcTmGZawzMQoz0bgpdCXeoJFcUxM8Sg5qGadtyBQF/JePqUVBkyfSVAr+cbO/b8yrWUx2KX+R7/IQ9EvtUL8y/8PZ7hgZ/XoVAWEaecI1ynN+ILLbcplwMkNS9kGXQ20z/4oHR7jXtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k567Z8Gv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k567Z8Gv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F00C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758387593;
	bh=tG0cUudQ4Bv8Huwdd+XF4bKnbQDdvLih5xAgzq2HuBQ=;
	h=To:Subject:From:Date:From;
	b=k567Z8GvIa4/CZmmGzfL6Cr2euY8SU31dQ/QbY2U+oJ6YDqKNjUX1eV0NE5aemnnY
	 awDaLBbeo02myzmITXT6jiUfvzqkE12LXwxF1sph3xajc+z+Q8iSHHPhX87345ZL9A
	 o2oEKu/BSn1Rd2xoVHvPZW97yA68a40BFbBMpVLocPQfu7Q/n5JU07A56DvjzyPka4
	 eVT2yrtGmnueGwzlAOSRFR1h9y0EqgWUaCt+I7n3y0DPpC8IRiXhoqg9PA6KbJo8e3
	 9IKgi/wOUCVQ6qUSNYeyo8pTDC/uPKFWD+5s6wpqm/EThDx212Q0769TZJU3/1ADOF
	 yuG1wxmTV0TEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A92CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838759358.20434.10172633437308041839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1877196428a263e8ad6a195690086586c85f424049294bffe249f6d5d8ff92
Date: Sat, 20 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758387593
