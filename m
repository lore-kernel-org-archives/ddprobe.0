Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F8524467C
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750314594; cv=none; b=Iu/6+iHme6c/s08vgW/BHVitobb0ksbZ/a54M+yWBPjmM1Ex6vTn/NhvvAZBaVcue3l4e3TZis7l2MsSJboJm8/vaXvnhaCihDEBSiiGJktuD8eH8/rhckqp5K4c9pwWgVWLMfMfCDp5PAq3xFWVMelmOFtMbpb4GSfqF90Ixc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750314594; c=relaxed/simple;
	bh=4btQ27scq7iw0DITgUqKxy57HWFYhvjY+Kmb1hRaobg=;
	h=To:Subject:From:Message-Id:Date; b=Vazr1P62hbvvLxiYKnhnOoRXmoduCrMvpwDUK/QnKmaeJno/QzK1IH9drWbhzRLK+vPrcqygQsXkmWOnirqbRbO56mGmxTMoBncBl9N3NwzZFYFa3/w6HPNwoZ25IT7b6sEdSSAso1yb+MRx6Ydt/ljQDucFtpj1bejKaxwFQgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJWHXFhu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJWHXFhu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CB6C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750314593;
	bh=4btQ27scq7iw0DITgUqKxy57HWFYhvjY+Kmb1hRaobg=;
	h=To:Subject:From:Date:From;
	b=WJWHXFhud/4hxqKWI1LfaNYRUgWjY5V62vYU7LRn0Y2ru8djk14zCewb3PM/H0+5B
	 aQ/E8gJk+NivBgS/JTZboFUEyweq0Iz+zRdtzwhe06wi27NHkFzbvPxaBEWvxg6D91
	 7uLwb4FUkTZCC3aaiGNHzMTBd6+myqgooqlrgvtzxenoDDVSMSqLis5tqAIYzKMgMU
	 65kMHyoJh6EXqKJdBVYgvyvnLcEw+VvdMGf2V7tIKbYsIyQ1U/aRPKI5X0UEDlKWG2
	 EfGRFO6127QqhjSSn8YTq25NUw2rmlcsS/26NNvXEHtBNuEVORYQsyfz+Q0xWkDN/O
	 CR2ZSxgEooGsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9081EC71159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031459358.9228.6956510686440925196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe8dff95eaae6fba9a0da15e2209baad3dcc41f7f6119c347d2d037d98943ed
Date: Thu, 19 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750314593
