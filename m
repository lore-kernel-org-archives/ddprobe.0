Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37BE334C2C
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766067234; cv=none; b=GqPjwx1wzZ7JGxdBdiv17zmAW36AJIfoPrdiRrbV7rxeJg+Ub0D3xOsPxpr90jD/GM6GEycwnsSLBf4kSvsV2uxEyq+KNNdgNPPVcxnZkVomqGbRrNuAcKVQTNZ3X5BPxQ0z0w7KeaK9S6ESO/2Mb0ay/o7xW1uTOfjoeqZNqPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766067234; c=relaxed/simple;
	bh=VeNUdcx/nujzAjlKNYg3ynoOiRvmltB9FVnC6v7saeY=;
	h=To:Subject:From:Message-Id:Date; b=SNiyu8WdThBjGXK+pfq20tKJElYd+665fXlp8ej2l9SqrHWZSR8KC3sON8sOM7y0FuvEyr5ITSZ1vp+PZ6zTiex50MXnfLrxriQ+gxnpdDl20fDvX462uBzGwSBXLc0eSgA7/V4Z56cctADUsBkExF8xze3sdUuZ8JTcpPSKn04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAndq/t7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAndq/t7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A374AC116D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766067233;
	bh=VeNUdcx/nujzAjlKNYg3ynoOiRvmltB9FVnC6v7saeY=;
	h=To:Subject:From:Date:From;
	b=FAndq/t713fu2Rp/H5OJsuSsyM2/q7g9fuZ1iqm9VVg0n+RaOZML64pVxfpl8gCQC
	 RUKZgMZyB5Q/DO/dp/LN5bAMJ6NNKmYuvrfsoUt3/6AnouXdc1Z+0g7JfrdUccs7cs
	 rd0ZJZASxk4pUlvY9QLWI2x9LTK0ohkIU3EVV5ORD6hOKoDECXklFk+AddpsawSLCN
	 nizeQgP65nGl6CIL9RyQRjB3l+7zloowN1tKdsHPt/SRJpx5yeohJ7aes5zD5ucNq6
	 z6o9eHmleXOKRiagef67ZdE/YceySmP3hudw3GVLeuq+KWbBDHl9msR9noxFU95n3J
	 vZoLFDwFPqmFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90606D6D224
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606723358.25145.6447275008687825786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5026e61c214ce12dfe13ca723d4ce89b2a944bd2b45dad455e1b4030357164f6
Date: Thu, 18 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766067233
