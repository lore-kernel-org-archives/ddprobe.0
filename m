Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3B51A270
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 14:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740925134; cv=none; b=h6zN24kw0pXOnM1JLV565n22KkzG6Ct1coO1D8BsXoktiDjhe+kfcVDQezrvGpb684Te4crw+NAiDpZ+SbGvZwJGcxrAJaz+/SN2Lx+ftCPSNpHPPrEBiEQ/3FCx45wSHD0MNZ+5JmyS/LPETcOx5OLSIXjJSj0e+ZNSfNrKrso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740925134; c=relaxed/simple;
	bh=2iGwgg3QcqhXP4u9xOZiAaUi2xYHJZPs0G9Vq8U8GgE=;
	h=To:Subject:From:Message-Id:Date; b=RkspzE4c1Y5r0Xg+KYRp4dILDAiLL2mtkwgfSRj1QbZjshDql4vKc1DOrEtTlC9EBlRcHDtje4TzT5+2ptF34v0KEGjex1CxrNKCr4nnokrrOsFwlpj7m1NUPIqzzMU9PPfGxjZlehlRo+emX3sPco3OXxQY0oxPv5KP97YV0wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCYrgybW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCYrgybW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9223C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 14:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740925133;
	bh=2iGwgg3QcqhXP4u9xOZiAaUi2xYHJZPs0G9Vq8U8GgE=;
	h=To:Subject:From:Date:From;
	b=nCYrgybW0qaQ/yKKojBlrGa+o8nmVpCEisyxyKQqYjcxdMRRRnzJWx0B+ImUNvzVA
	 MKR7QofMTLIQFrFg6mU9VNXlwNwaQ3mBlYXvQLNDRPI1tN7eE5KyXoWEfSiuwUBFF0
	 uCkHxTRUW/HmwgIFCkxYV0/kDeEoG/Q61tckE7FG8ZX42iTg10FB8mwbzbkD1Bluwx
	 xv8z5PfZ2TUEoTxLjq/lw6AD1CCERIRVpqoRZBQeX6KLJO3iqEmRB26Bfa9k5JXSjb
	 XxriTdMc/E99OKpsbT0kd0jyf8i0Ruzo5qYb70euL5GDLdU3bJu9sWilSlsNzqZPrk
	 QVU+EHgcrfIMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC8DC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 14:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174092513366.19297.10726998111037899958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08de55d6d4ad8225c6646b8d0b42e31b8a8e4db5f3e8965405052b0ff814b52f
Date: Sun, 02 Mar 2025 14:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740925133
