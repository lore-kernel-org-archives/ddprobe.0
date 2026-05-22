Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFEA2477E24
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779468754; cv=none; b=l80rra5NNBvVLXDOcO8JvdUD+VTPRbJ1xNtJMKgrs68cgzZKAFAegFl4/CLW19J5icLKTMVs+HV4a4iK8e8qqsKzHWL+ck2ic3ayohJzhh3cuoJilRS8/3nqglHneVOFoViqsdUNd+YGjSyBF1IXW4P+nHHEZ9u8f6U+GDdO1eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779468754; c=relaxed/simple;
	bh=2Iu+GisEcUBi+PvwfV6JecmNKqt/HmS5OYZwoQS9m7s=;
	h=To:Subject:From:Message-Id:Date; b=E+OeemLqPTsYmT0Q0UXIhBLak2psSNT3ctNogiAkqIEb4gtRvghhvj58690AuFKlpmhXJDhyg90ODeK+Doj0IuaF6HAeqyfZAoXaOpUaWgWhTYVqQXnoRFvRbYYNQU8g7mwWREHc6yXPggurCADwaYx3g5VNoeymscThInBPMQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzJnmbFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzJnmbFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6843C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779468753;
	bh=2Iu+GisEcUBi+PvwfV6JecmNKqt/HmS5OYZwoQS9m7s=;
	h=To:Subject:From:Date:From;
	b=lzJnmbFjOVTupMLJdG87qpFXoE2B3mRh71duV/gwddvd57OxD8I9P0/SxB3guTKoB
	 9Xl99arZ6DY2y111D0jO4931TFr6CXdSoGWDecQmVgSP4tTdHjp6z2/XtQg8vxTbVQ
	 x5873QZ4MtjTs/odOI4YaTDuSQRntN8uZXQiavd7wJDKeT2pinAogVkudrbL8x5Bqb
	 8/bORJvOQyFMoP37w18ixYaahnFhINj/SDSufN++cQCXtkafgT0vABAfGgZ5NddLCr
	 UyL8YTikxa9fd0RccHmwZxAKJq7x+KLobTsEsKONJdvGSUFny4c+kKvkWxd5DHI5nb
	 kbdMimtEFXWrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA26CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946875368.23065.1480736529906296250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5083e35dc9a32df9292f3362fdce74d487074dbccafd522614602bf38fa216d
Date: Fri, 22 May 2026 16:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779468753
