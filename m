Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E0F79F2
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742437194; cv=none; b=BAqmTk1s8APf8zsN78nYqRS3JwIPpYZvPQ7eEXVUH1VNd5+b+7Uz4aWkmXkXWxUkaSXYY4pHaZVgvp6RyryZyWR3K9GYUzTD/ZT7xq6V0FY1wxKjLr4tdWMHJI+Ttw3rHKWC7yXo7UBJmeDj1tjHxbdrCGcVbAzb5/JO9edEobA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742437194; c=relaxed/simple;
	bh=Ls4QNDh5kJafcFibxuDtr3ibIfzY6J92+DcLKPA7vF0=;
	h=To:Subject:From:Message-Id:Date; b=AJFqWvfZRABGIeMuiTucVy8EuZRdxOGtaj2IvDG4s2xkbnM859HORslm5rKvu3mb6B+P28JQtXvHS4Nf7ai46Ko5Vxs7bODSzrwdM6QbAzOI5EB+UcFT0shileUmsSIB1eadfqjRddyYuerIK1CBprT5pZ6lmj5nNxPV0/Jh3Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUpr1OoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUpr1OoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4880C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742437193;
	bh=Ls4QNDh5kJafcFibxuDtr3ibIfzY6J92+DcLKPA7vF0=;
	h=To:Subject:From:Date:From;
	b=NUpr1OoJf2I8ElUCXJiII01ugjCUcTYCmIK5uq0lUShimEJT99K8jopqX05eJYgM+
	 SjnVcjpuYeDlGmSK0W30y31Rod9VzHfcrzkArRbFEA6rJsTK6FyG9piwb2LHq2sete
	 hNYuAC91WBehVt4Pqqss7PSpAzF/fK4eQm4zW3caeMWjgH+RO/K/FEwAHszuPpUVsU
	 lQtUCPshe+XN9tF/5cp0xoI/tAZRsfaDBIwv/DLQ3Bph2AEdLXw8SvSEQ/HbJ/A0wM
	 MiI63VpaROt46EbBhJuc7MsNHBI6lNc+3AuF62podzqbfJtFMfo1vrHwrAvf6vn9hW
	 ybcz0hfNeM4Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A159EC35FFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174243719364.27606.1836118423034161057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78affde877cf86106aaee10686ce50236c8913e335c51acc3b6e6d80244d0747
Date: Thu, 20 Mar 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742437193
