Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8143D9DBA
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784755774; cv=none; b=G2p/+KZZwDXztV7QD8S1cJ9uGhbyxH3CdTrHwbtOn2YVlLFiqNlZgL7ScRDt1y88bv4jFrf1WPI5bEUsfwa+hNrCk2IRK4HjOfbeCUjlhBNzhpARYbnTp1lGScFyUuIIkoLeJt2accQ5K/OxDWIeQQhD8pYUQTnmRqjWuxMdFJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784755774; c=relaxed/simple;
	bh=4Gm8lOjsoGQGB6il6FM/6fhd+XuXti9GDnOqW4bH6rg=;
	h=To:Subject:From:Message-Id:Date; b=ld0rxvnH4BfZb572xeWbXuF6A0TdUALWtG8sB3zRl+jLKDOcKCI2PoRJP2bGz8nxHSgnU51GXIhcWztiI0SBDp+OWJ5r2mcL4qeSUInDhVMZeXJBfEvCngnoilYSN0nhmgyaqZoPBXUNoTxxltVwF03N5l/vYTEYHSpTwwf25bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMtnlIxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMtnlIxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E5FC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784755773;
	bh=4Gm8lOjsoGQGB6il6FM/6fhd+XuXti9GDnOqW4bH6rg=;
	h=To:Subject:From:Date:From;
	b=nMtnlIxOCx7q6PV8xWI/ASGd9EZsITVfHBc3wSauGrICuMMd+GxdAqhpHNgGsJsKr
	 BwkoV1b/9KzIw/0FydSISP1tnIqsQQdsrigsFLSIKJPvPZAUKoC+t4zr+qt1soZU9w
	 ERFEBd2F8F/5dNbnf8qQaPnCV6C0rAIp0m8cwKArNEQrhhjqMuRGd69u6Mx/r306hX
	 o1VsH7v1MUPXrodFCNGj2rsN4CK5suzG9omD0o2z7Z2SgQVUihQAaKp9RKWPtkCSDN
	 7D3sa9B1fvpGDCbG6j7v0wSnyd2IgBVGIHqaeX17XszYfpzfE8msZUNpTu3ZLSTM6i
	 za9SZyWdOUDQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABED5C4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475577369.18129.2511543594471780782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d3600834bf31b7c05a5c04150c6ab1704535086518f733f6a5f6620fb37d6d
Date: Wed, 22 Jul 2026 21:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784755773
