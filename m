Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5F92727FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763092794; cv=none; b=J7RGIEr0L4oVBXZUdt6Ew1OgBNwKb7pT1bzbZFYi68ggGyp7Rjb/OTIAOqCqpsYk9HhAf6WDxX+/A4hYn4sfiD55fqvmC0hsX3EjdZYsN8uiCu7akpifCCHYCJA0FuvTvOhixO8kGlwMF6dQ5p1iPRAtrZ/7KsKas+9IAZFHMpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763092794; c=relaxed/simple;
	bh=MryFAzsHK1G+Ob589uRmHLs9izXs4V6WfaGzeBD0L2s=;
	h=To:Subject:From:Message-Id:Date; b=CkIDArdWQgJQgsmfW1cBUTzCPbI4/cqbvxvsgyJUHbZhufJcj4H+JZaUYFpCajvqJwYx+Zs1NNyn5gs2wq1mr0IdVMHwrs0DlU8naChwAMlW6XuSoJOLaKPRyB5B3HNjbLssuvxttNJIkc4Iunk3ioVrUzBsxl8eEPFPHDTupac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXXjSM+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXXjSM+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC86C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763092793;
	bh=MryFAzsHK1G+Ob589uRmHLs9izXs4V6WfaGzeBD0L2s=;
	h=To:Subject:From:Date:From;
	b=WXXjSM+1N8LjSQC3ODKdGoIvsuvvNgSd+vKKyhq470f2beXukYpiNWSzNQAyilKM3
	 4Zd3CkUyqMcxO72Wbf5tiNlBX04u/XG4GDxOBTEubT+pHm7hgNI8k0Awk/BbiRDKJX
	 2jpp7gptPFOzyIqxRI4zRPEVqjC6lr0IloYyaHkOdDwFM+BXf5oBk508/gs3R2OtkI
	 pO6XJOmm659Z0MsCDuX78i0fFqj25jNh0BeumTcZbdgm0KBPxSmhUIeP4nqPKrx2Y6
	 CZtYoV5z2cTPOdZv8XYhpAb3NYgfGKxEROYD6LI9e/TyHP9aT0fiUQIgWbIW3zUajC
	 FhZZqcVDuRB/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B3CDE001
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309279358.3610.5432332645340991575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdebc6a9b0a5c30f1f0c67cd13b7fb6d73830cbc2b2d8cf4a030b37d333698de
Date: Fri, 14 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763092793
