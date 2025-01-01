Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EFB12F5A5
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735727754; cv=none; b=DBlA5/HWDSO+cSZDEGRDtS9k8Zw8y48B68VATebq0/vpRZ0zBJRECgN1dZXhmpX3sI4ILue42buLCx66E19wJD5qhclTmDGPSPnXWQjZ7opC5Nl9nex+Mf0H7mo1l8nlVjbTZfA70Z7T15D4CxBUPOIxVh2PtTJkGYRp2UeN9FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735727754; c=relaxed/simple;
	bh=rx0FNtgz15+3rIgL0AIYnIH2ohXyCb4xdVAT3i2pA9o=;
	h=To:Subject:From:Message-Id:Date; b=CuR20g1MFeIESONJviPFzPD3WcHTVmAYmMHIlPQWmyCOnJed8HbO7+x8boN+geaxDtkHxlUWy37elK4uRmyv8pfnz3qx5IuF6iBljkPcTLp/lIyIJcZAYDNDY3G5h2T+xtVGFrHaLhUxgfKLN2wim4ms627TM+fKt6GoUYXBvJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jK187SmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jK187SmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21BAC4CEDE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735727753;
	bh=rx0FNtgz15+3rIgL0AIYnIH2ohXyCb4xdVAT3i2pA9o=;
	h=To:Subject:From:Date:From;
	b=jK187SmC178Gi+klqvkT9lJ9IbWGf5fZ+rlpLakmex7YbaCGoivu/pkydVbPhbEIL
	 4M3q1GCghoueiIAVwY1VYUEppV51rSXgeY14PtINk+GJGvXKbYwDMCSWifbrMlgXue
	 024LpkwDCIZJdQ54eo8jzU84X4MQXxP8AtzgZ10RwBu+rDvqMiY2MzBouPq/ROYC0T
	 k2Kc7GpTGmUH+6EIAHGHDumNYBoGvY9jDN4Ng4FwBMgYmHd/55JT1i24aYENLusxBb
	 KhcdPV0evvH5q6WtU4Jl6JkFjKZATDCtQ+oEKmT/r/qrRAvnNZ9kcoFAXSVth/hZa1
	 Foa4P1n2ld7ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91540E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173572775358.9866.852621481886593704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646cb6df50dfb0c9fe3363fef54f1c5164a0243a93b1aacd7987a4288bb7953f
Date: Wed, 01 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735727753
