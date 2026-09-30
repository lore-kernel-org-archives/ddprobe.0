Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD941CAA6C
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790794834; cv=none; b=rTHwp0H2Kjr62EVV12l3AP+JJ2/XcQQRn6XGuxrA7sGzcfV8tA8JiH/ToN//PQQb9nynJIwxJ8rN8cPbRUyJxQ3ld4WTLKFAHRDr3GMNDdN5KyWogQ69x1GS+TqUGBSt2dbwDTU24AzlMtuQRYxEFIzsSzm01lmZviQoe4H7AUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790794834; c=relaxed/simple;
	bh=AAmaBdt/5jCObGSPdtadNE9ftNj6QkgJWEMRGUqH9D8=;
	h=To:Subject:From:Message-Id:Date; b=akv1cw/+mnWwoHIov2He7WbriLCm0fpZpuUzQtgVKAraoEQ1kXT3G7e5sZ/nf3T5yxBoFt3nSL+p+EjYX1vCTBy0hW/paBHdiK5ZKSU2dWRlTDOIHvYlnfiIh6AC/5Aogd5ai+5KauUCeoytcVQ4eEpXmA42IezGvY2681tkELw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLb2ZPaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLb2ZPaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06F8C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790794833;
	bh=AAmaBdt/5jCObGSPdtadNE9ftNj6QkgJWEMRGUqH9D8=;
	h=To:Subject:From:Date:From;
	b=LLb2ZPaGhATTGwJxWJ7Mz9dC5NOxf7H8iTP4jkE/oQhSt669y/Oc/Dd/Kjj3vLUDA
	 qiP0O5rjZIpLMzolFlXHRyxBk3Ubkc0+DFEPPLWMy9epmn1AfdSq2EIkHgVan+ZeJl
	 KDevJzpvO+ukJvut/qV5wRB6m1nF9boKiyYTxqnKtk7jDV2Za9/KosahqWCPNlazsL
	 biesToelQKNdD1qW6oBeFBj+SJsprLroLvsncFxawn+lH3gp6FzL5gYVcHtPNqzNRo
	 ivueU38hh9hRwZw6cOvYjurNU6caOVnVUVg/kkUfpYJWSe8t/VL7DA3FmfMbvzzvi3
	 eVgdEhNEX82+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC504CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079483369.7631.4120593240165981244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b6fbd304ac5c894fea663c16a361a808b39ad29ccfd90ed9c3a1c5f6320a06f
Date: Wed, 30 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790794833
