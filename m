Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3540641C62
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728028554; cv=none; b=Al0bFZypDKt3jf0386L2FGB+e8XgY5ILLm5OR23PQMwqX8s0rWJ4WH5wQlzWQ7/6D3Yt/YoETetonITX02nscBDKEjsRqI6fLILeTZf4HSF/Th3R6UDiGRwFs/Tal2E1/jaFv14hisFuZMvPsUZK3/Z3z+zQ93v4Uo1YpUUNlw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728028554; c=relaxed/simple;
	bh=AVgPzsn1TSeVqDZA3wpqc+/xQkoRAy8+XosmerGSf7Q=;
	h=To:Subject:From:Message-Id:Date; b=sCwzOksGyhK4c93tGcbPq2wVv22GWV/Dy7xI0ulHpMzlareeEDV2ebCJYtLWjdAq3Owk1W+z1DWVoCaon5qe75kpZUsRuTDYfkObbTpynjlRbLob42v2mQoLMFjSvJTWA0ceyzVh++lV4P/HN+YsmmcWLFI17uXDaUfOibo8Ay4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8jmdAEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8jmdAEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABC1C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728028553;
	bh=AVgPzsn1TSeVqDZA3wpqc+/xQkoRAy8+XosmerGSf7Q=;
	h=To:Subject:From:Date:From;
	b=N8jmdAEoBgikdiIwyhoonAEyVM6v9EFFT3U7TaymALcyggtxkm3KEioe650QKh5Sm
	 rzGmyHjeGDDtQZVOJkJ13D2m/lrrLo2e+JfM4x3QVJIHxHoNX/DymGmldKVxqeKmNx
	 IjGHK80ecdAD0jGPwN1521Ts86yppBvWATIMENThKDhdo0Hs9ioZMT9AtvnLuwHGUf
	 FKDD72tfclJx3TgStsDBK4P3S30zDBcCfwKK6T7cLdXMnNB4gUxxKl45pY/1gpTTij
	 pgwaMpRNMJwsoMvv7kvkjnBO+wXvGBxhFvxnfIfiznXqzJhd6zELW6FtEouYW4Rney
	 G4tCFKVqwAeog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F66CFA750
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172802855366.19019.13887890964663155325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1425832ae3bc2f2da65d04314246258eced7239858d0ee0e26dbfc7d229a2189
Date: Fri, 04 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728028553
