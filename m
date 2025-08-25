Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE2D139E
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756084794; cv=none; b=ETnpDXRPbNBYm/CartZk5r/rkd5asYbG2uO9Nl9fXBciIB4ddoiCqGZDffcthx1HPduFV9CCv2qhlzzxVE+4VM6E3P+eAY8H0KzZmMY1lF//BwXGEbx2HHFO2zVyeVCiINh1eMaZFpmYE+P0h1O71UWcctP+4i6d7y9URuJAVB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756084794; c=relaxed/simple;
	bh=cI7QNo6ba3vcZKXhJuublJBttBDpiKOdhedq08nZ9DA=;
	h=To:Subject:From:Message-Id:Date; b=Q6AFQNtgQUEac3/S6FVaVcet+uULY8SzwK8Zkj7zILO+yiZ2UwznWn/g0MRD677FUmPJKs7JUsVYPAoPJtDaRi+j1gzVt3v/xXLCjYAx2G/mKIhpzsg6hU/j/vds5k/WpmDfTjTV/ye4OQzH/BGu/V80lGLcI/CRmFoU2dspYNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaF/hD/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaF/hD/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0355C116B1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756084793;
	bh=cI7QNo6ba3vcZKXhJuublJBttBDpiKOdhedq08nZ9DA=;
	h=To:Subject:From:Date:From;
	b=VaF/hD/d3hHI+ZMSdMLINRMlNgGa4NJfRD3ymB2Mz9FBrBxaBJWyN7DXiAyv4qeuZ
	 7xN1umW2qnVZkmt1+0SeFsIyzOaM9R0b3I3eVRRKFWm30+LxZaHa+LC7be6OWfh4e+
	 /ue5VSQaP6Wwy/Uw0IJwPUGq8tPyY0jCliFSi81UJ1fIFB3tWszWbqwHhiwAc66kPx
	 Gyc35C5wfWAQEpiZNNgd+QAJ0fLmAXrFBf20Xx1xX841PDIV9HlC9AKbr1NGyPuBcO
	 24P+xjFihFenXQ2qQkrVenTzC3ViKdhhaoxsFAO1YmTzF3XfiaXGppl9EyzBLds+wV
	 A+9+DlajnBlDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE5CA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608479357.14347.17240181136226308230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c03c3b321d354115b877933a1eec2ec69843bf1dbbf5690cebde03a01932d2
Date: Mon, 25 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756084793
