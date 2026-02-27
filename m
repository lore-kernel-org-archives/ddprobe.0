Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3513E9F9C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772174694; cv=none; b=NcJXVbgF/rYAaJxSNjPPP5XF/DO/GDRo+aVIxb6FGxJzxOqz6xqbuWYFEyMK3CAaQHjC1yAHJULgUEW6z95pExnlwJb01FaLxPE5JMdB1chfUOu8f2EzgR9p79DAmusO3NDhxQ/BfFtLg5E2wc7+S8ER5fiKxN3eL+X7iwOiH3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772174694; c=relaxed/simple;
	bh=7zCsTfxT1Qrny6JNKIcuYkrDpj5U3ktlkXRP2Sbfx90=;
	h=To:Subject:From:Message-Id:Date; b=Kfp5VAwGQ374Une/PKPE0Q4OoBddFoY42DUSBtUE3xnB25UAtlvvgdeWp9d0mbpKYMi/2M91JRaFNmQuCKAVieyEViSh+dYSC4Lci0RIl4fn7ztquejpJjwlGztJ0nIrPYv9kIcvvNoPDj0KcMNpeDEVRCWiYlznrQRmSKPzDLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gz3gYxCa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gz3gYxCa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB07C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772174693;
	bh=7zCsTfxT1Qrny6JNKIcuYkrDpj5U3ktlkXRP2Sbfx90=;
	h=To:Subject:From:Date:From;
	b=Gz3gYxCaaa92FtQbDZSah5JvxKhe4TiPAdmYW5gRL8fWQBo7lkRngTa107cJe/qzO
	 o3g5c7cnMGWDAmlP9MM1M8LmSSmu+LDFkbo8RqhYJBXrVIm3zGUFxeA7VnnbyX3uxX
	 9URQyHJrlXiOrdjOjnS0RSGnPLB/Xs1sJ7erGZLJjmU2DRvCkunG98Oup3MlWbD++A
	 XLVMBzB+aZQenD6n3csUX539CmXHIs4QRQmI5/E7MBNJYJCr8E7TJwH4raYJgVC4Rv
	 GrelQHayXy+inuo0VIYC2mtV+UhGA3HPwcXJYE5ATcwrLKwz+sUBbZbWYPIki3mHy8
	 XN8/1kZDNfspA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DC4FD4600
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217469360.16809.1916134826784950522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5433fb62f6af9ad15ed0b4ddff98163a2d1df589188788086a025d14f14ee98f
Date: Fri, 27 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772174693
