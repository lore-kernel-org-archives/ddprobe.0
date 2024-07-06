Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD33D2EE
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720289783; cv=none; b=CgNELoG8/4W51aoq8dr+ahf7E7AQaLXa6Ml7BToq6jWTijH+C+nwgyZ1E52+NFKZMgmuCL9pyvlfEyqMqiEyyoke8LQ7lO2j5nicoOujeVFgB+td/K2XKEIdwI5dgybng/wiWLCJpVAOQQCbwtmT3mZHdi1Yhx60RhuSXFZjY4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720289783; c=relaxed/simple;
	bh=hwuwQ8ZVUyr7WtmtxnFiw7XnpQbokBNY02RtR6i43QE=;
	h=To:Subject:From:Message-Id:Date; b=R2lbzPRGdtEG878yNAReBriwpajXiDRpSw8lxHk2mz7+p/TJKnusMn2OTdHGgLEcHOFXtGUy8CsAILtdCi0QHCSRGuXAzKqAK/Xbzs68vjBprM/becdy//K+oMt7kdnTKHSRqaGnsjI8/rsLI2ewC5R67hAzlrYU+mh3XymuPak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCXrNTU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCXrNTU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8456C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720289782;
	bh=hwuwQ8ZVUyr7WtmtxnFiw7XnpQbokBNY02RtR6i43QE=;
	h=To:Subject:From:Date:From;
	b=cCXrNTU6IqIDlqfPA/GEfMZISedcPC+rGgGE6z3owdfNe3zSNObea0OSGs/LP6WrJ
	 7MJzgnRI4B9rDjzy8ij9OoTevd2xRM+qtCaRrasLVzBrEmxmlMp6JDVY5wD7d8U+Y5
	 XyZFSoq/aD1xINQWMklxAi4juoZ9173JAku9nnXbwzbF+8oBVAxCerMMxfndG7UxsS
	 zaMt8k/grNSLH6F8qdpFe4viegcIZ30wGdxrG5/UyJD/OF1ArylOG8Tg8z4b1IKpDq
	 vYzW6cQ9Jz+DlaPDGx2KEAFSDF/FEh6OxtuurcgtgbshfYiU/SaSXHxNpsmc+3NL2B
	 a2JqvstsnhWPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBA9EC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028978281.8916.15362612678317416079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd406f8c45b0e29d3abd594e0ead90df235b57d099b916b84dee4af7cd8e04bb
Date: Sat, 06 Jul 2024 18:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720289782
