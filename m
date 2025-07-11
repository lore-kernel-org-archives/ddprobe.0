Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD20B1B423B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752212394; cv=none; b=nvC9jWx3Qz6r6x+jT5NzaBkQ0B10DJyWgNBCH118df1a2zO+Ppuv8WVctDx3asE984pub99S/b5n6m7uOWBp08dLm9oqvA+jXy+HaFUTNuOf9MQ9F6Mn2JLjZgIMlvSlCCcDX8+MxWkyPVk8Cx/g9edyK4iATt4mUffAx68isFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752212394; c=relaxed/simple;
	bh=1CZssuDo/hLaSgZM13Z5Pekyx+RviQ1ktpXmASWT+y8=;
	h=To:Subject:From:Message-Id:Date; b=lkgvPbNm6tUrxbHocKwvLdZra9wyQDcPILLjbGp4cjgwMij6xZpU0zzT8vRyGGr1h+NRJ55AhEQxR2sazQODPovhiA1NdIFzgVk5HdIssxwQOyssSbpkTf0VSWWP3+6VJxn+7VObYkR8Eux3EnZ9bSHpvsNT/skYbFNFNoJs3ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QN9Psegk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QN9Psegk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA17C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752212393;
	bh=1CZssuDo/hLaSgZM13Z5Pekyx+RviQ1ktpXmASWT+y8=;
	h=To:Subject:From:Date:From;
	b=QN9PsegkHeWqnTis6UPcasFFMPFMbNBj6D9pCP2/3QsICvKyg88qW8Z60mDxk70dw
	 eyuerfi7tJ1Lpl778ZERPbDzpMbKXtKVdlDdE5fDXmpvdNz3v1I/SMusHktnia6exO
	 +3p9CmJDbxkINy9l9VvG4Oyd9OszHRwi/7hUY3egf/bxc06BPb+icFwvEgukEq4YU0
	 4uXq6CxBHYl2bSUewAH45tqtU3IOpLgAMDy/pUvFC2xzaMl2ARQ9vc8E1DOocR8hCK
	 rzY1lg30KYwlibOl9G2bIwSmbAw8rmOa70peXDgtVDu+K216kkGItkLVqdRgFoxglm
	 n2G165deYgKhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA5C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221239357.29197.10381985007838015611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a40dc20877d697b31c8fae8121b57621862216be73db15f645b89fa0b1d7cf
Date: Fri, 11 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752212393
