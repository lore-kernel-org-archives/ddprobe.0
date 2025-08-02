Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391F518786A
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754165994; cv=none; b=dDeA/BiHjPEjMt/sIdQuK644VykjcKGa85jGuyh+/5MyG8+q0Cfj/Ud/k8JzlQ8UNAR8Ae2FQcALilfPgc2h59+ftSGoW/kjEUE+vFBi4oSi0fvRYHWdh23VPfNxnyexxsSYKzWR4kkzwl+GXxiEIY9CfrGe0SO6EYOSajD596o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754165994; c=relaxed/simple;
	bh=RqN1eRMd60Msv73cqvrFfViIa0wCSRii6rnAUpiNnkc=;
	h=To:Subject:From:Message-Id:Date; b=EovWRfk19+rEFfcuEH3ngMInhAveYrV0x+ibWgJ0Ixv+31Krt2ixsrttgd25iG6eYN6AObmgi6xNK2Y3hl9DgTLZ74/56JpUHvG6b1f5rxbokYV773B8eEpbCA7hUqHVT0FTCK2VAaQ1lYdJj5tGb0o4MBm/7C+VSPXPQoP7DdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2NgKI39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2NgKI39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DD7C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754165993;
	bh=RqN1eRMd60Msv73cqvrFfViIa0wCSRii6rnAUpiNnkc=;
	h=To:Subject:From:Date:From;
	b=s2NgKI39SyxwGr0fjX2UaBVYinLS1MByTUTSn+Wou9603z5Bt5IsL9ZyJG3yX+tbz
	 b6/AXqY4BhJm2X4g7m0E0gF40k9lQrUQxQ9xsOCsG1lHjphDApm0C8BC7dkKDsUUSp
	 oDzPyZAOxZ1mLt7Cl/sId7JZpLohwle5uxhGLAaF+vOPuFACtXawX671qUCZykcEy1
	 bN9KrmzKNb27JybvvE0gLWnbbx9OzWjqKuAspQXFJCoInDLBhJ+fhQjwZ1Ku4JCNwY
	 XXgYy0uLwISJ7UDqVuapgZuqME1mXjK+J+0G6tQxuK52MBPqBtwGaFBomLI3O5A4Ge
	 pZ35QaeRaTIcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90532C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416599358.23253.17919436427908554978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c25e5e67ec982b9b252cb68de48e491805cb7ee1e5375ec622b21ee622ee00f
Date: Sat, 02 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754165993
