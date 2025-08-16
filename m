Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CAC155333
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755316194; cv=none; b=lIbf+xNp0svLqlUab8otxVMBZ9U9XkWMIrHb4vZA/cIFRONm2/Sh7wFPGplHVBrHUJ17LmieHF85MUuE2yEIFUm7JqjM/GfFrYqY/vwOVcRcwUNVOwi8y+xp/mb4aOvipUx/pT9hQZXv+/eOJJt3Zj2Y3sCslKjuQVcXsk/pXDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755316194; c=relaxed/simple;
	bh=cKX7XAAal4A9MPqRqaoqlmrTGnqtjWTXBCrsuxUTGCE=;
	h=To:Subject:From:Message-Id:Date; b=sV92bvYGF/edmSNOqouYaQmcEuAH3y/E5zb27FQF+fKyGHIEPyWLnXol+C0nf3b4jlFeN5nT35FjxoKF7YEAwB3wIZSob2UI97CGIS3sv+q97A5Q2QWqup39qRy3rTLBqi7bpDTMYDOwnWtxsC2iOnQxd8Ltfwk45eTNV8by0Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzj5syjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzj5syjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2815C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755316193;
	bh=cKX7XAAal4A9MPqRqaoqlmrTGnqtjWTXBCrsuxUTGCE=;
	h=To:Subject:From:Date:From;
	b=tzj5syjJtjErJBjCCCgrmBziopb2rYGVeVZphdvZG1e55Wh9HTb5Tr0D44mUU7ne0
	 +w5IKlI4e/T694w/i27m2+ezGlLLwWCXkU7ToOsy7cgVNOHqQ2lXlIa36fi57uRUu8
	 tcN5szBQVPe78t/R9hanr3YldKiU0yX7DwWk9oYHidli3eYCwAWwgBf11ECKqkYkZ6
	 IXeOsMTzG5nTZpk5Tgw4cj5jyJE/qUH94EMpIh3hvIFgpyIdrjPtK1t4EewEo7LTdO
	 HL7DUBfhSxly02n1G0POmkRTsq0KGK38aXVxtEf0JFdMmlCGI3DSewzF/4zjcTR6Cg
	 JyEmSKdP4/HOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9190CC87FCF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531619357.31382.17527764611500275807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05262ad5e9d0ece8c109318b13c97efda625bfe4ebb606d02baaeb7aada01ae4
Date: Sat, 16 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755316193
