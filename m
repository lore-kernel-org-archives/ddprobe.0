Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F881B86F3
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720605983; cv=none; b=r/KmOfNnQ81tXKmPqwn4wZOmYUgIPUIguurNSvFzoiFeyVse+MhQUiUsdYec/QYLBRAzba2oOAZPEHSArj0QMnbHvsXJnFHZifIzeWbjK6Tma91BcpKJEiReL3tlTNFYcQgaDLrM573zCj6U8cXUxg8h+vfFdi+5T+WyMczAL9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720605983; c=relaxed/simple;
	bh=4vXBmjJyJyfAVfkb/UsJ5uUseVW6DpYWnbcGFYn+YTs=;
	h=To:Subject:From:Message-Id:Date; b=d4nMXopcrpTUdg9wQ9UPTGLhfap00eKEDML9WpvtYrTZO/KKlsdLUNoWem9MuiLSr1GWrWcLTB+zMU1YM318B/AyM3Log+K2LhpXsF0b9DrA/nJ7FyLozm+yPMT72n9KhBrVefop1kSrlVsBBxYNdatP5qDrf442pWx+tmX+R0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8xZlh/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8xZlh/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF7DC32786
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720605982;
	bh=4vXBmjJyJyfAVfkb/UsJ5uUseVW6DpYWnbcGFYn+YTs=;
	h=To:Subject:From:Date:From;
	b=i8xZlh/Qb1Gqf3nh4kP88bXXRtheCaWAlSAjmYtt/6FxaHksQerkPd620mEQSTZsW
	 NkGOiRd0FQRS5oFrTGCPa6Wue0fcKVlKufHbZFBcw1r7oIYXqCScbZ83Zo1CNXRU8T
	 H5rx2F65e2tP71RR8iCbnUZOtoNAAfNQA9dig7xfgsP0k4MnhS9hB3CY4rOJ9R3O/o
	 JPChklxrLyJSP1dbwfc9rOSFOn45y1DVBoAmQeczBHFnDYEsTgMuhOPtYUX+QIFCq0
	 rkxHES0Ub0e+W0TQV1DUyX7YWvzMnTSDWGGdJn1TDbOmpq+M0TPo42d4qhDf2rYOBt
	 9k/z43A70Wrrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6310C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060598280.3879.7196514722094132187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99a802056b294547ff09898d3e0e3c257c6300480cf5384fa031f3283baf277a
Date: Wed, 10 Jul 2024 10:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720605982
