Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246D772633
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752854994; cv=none; b=qZcjWZ7/ookODI4GPHK7rF2MLITXbuFRkT78UUx3nECkHJtG1ejQqrPh7vUOroaW4MbDkNF23KwI/47y7sdGajJfSNaJGqvC3Vn0Q/uxAn7FdfzW6aU8bdIwl+hsYCXpMV5J0Vxc2yCYdorsxe4DpIbTNoQ4Sxa7kVpJDUZjwr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752854994; c=relaxed/simple;
	bh=a1Yto2FbL1wgca7N6WRy+qYZb8I8R5+ccF/bGvgaRzc=;
	h=To:Subject:From:Message-Id:Date; b=PH5/A/IL96F6Wqrpl9aT7dQyBHhm2DDnobSTYwOZD7aUio9i4CSI29KusFRZI1G7JZ53ak1hEwe8EI90fjmm9heyvKZYbx6yNJrp53ERvt7qzFqism2oQJjlzm0qX+mUAZ7QLR3etHT34YsB2wKVXJWfXttribhiRPlzdrf78Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqdAoKXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqdAoKXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A381AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752854993;
	bh=a1Yto2FbL1wgca7N6WRy+qYZb8I8R5+ccF/bGvgaRzc=;
	h=To:Subject:From:Date:From;
	b=GqdAoKXJ/Tm5xsCEApui/0D8UChG8zLLlCzAeHiM1eyvAwjeiUssUvZLiVApIrEsF
	 eu3QJD26ir34G6Z9692Hmn178Sx6TahWN0Qc7M/WvIxJhig91GIcp7NI4LgCYN8lBi
	 pzWVqjNp6DawoKMdUmHcUQ0oCyPtR4k0DhRfdmy1KTqOU7ZF0PbU8Cf06jnNk7JcNH
	 pNar9BTCmwg84++ikYh3LmLwBpNDUz4YyCR8QdBpzHDUCNfUZixUxSZk0G9KCUoP9l
	 zs9DEBP3WHuQoN7fjsp0cYJbZsWt4r80UZa5zxUkcKHH4olpe3VvdiF//Xbve1i3+I
	 jKQYz0/ZEb0Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F96C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285499358.18087.12413599952115662619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0517101538dae0081181e4d181133505216ff7b2b877462c187a6a335affd3c9
Date: Fri, 18 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752854993
