Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6173C17
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717643843; cv=none; b=m0AjaB4taweu4XbBbnSXpyeRRb2DMFy7fI3ILPxQLVJ9QM+GGS84BJcwprhhFBiO0HcjKQiaDxp7uCJYSt+tKppXEGg2DPeAFxWwStabT50YLt9qMnJq/X5Xv/nlgx61KsTKIivxIhhp+CDu4Tb9c58xtAgrypkbHigFjkxZQ7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717643843; c=relaxed/simple;
	bh=r6goQ02QsTDAoFxFQtawSQFqzChLa9T2ggYIwytfTeM=;
	h=To:Subject:From:Message-Id:Date; b=phWwM0Vl8NByGxhAAhPQDLMf/BZCL/25TwpBEEiqhDKotRcdPDvWjm9gPIvV4ZltQ45Ebk0/NMxuOWBdQffARcFa2bkH1QihtvmRmeVr4vEhLLimQ3VnRbvNzyr6DxbfChmrquL0dJIwLU9ve3hODRto1Y8TnkY68hHTeJbbnn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1iLwdhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1iLwdhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CB5C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717643842;
	bh=r6goQ02QsTDAoFxFQtawSQFqzChLa9T2ggYIwytfTeM=;
	h=To:Subject:From:Date:From;
	b=d1iLwdhyCx0mwBN3dtMnUG0KIINsXapMMCw8BqAu+rnCdYo6CUD2BKle+4D8v65s1
	 EjIkcacJaTlrVn6BTLkVaN0ZQ8Ah6Mvuw0M3HzUff2nPYArxhK/1EDiaVGregI5NSZ
	 fJmAm++2X+K1xgSTWhvjFNJ6A3vZOkfefeUbEDHRwtaEVQ4BY1C6O2i1mMTf7REGSV
	 KXDZSCuMllM9aeEQheLWXN2Od02IFdUHS0B0zYJ08mc4sRu/cyQag5aNabTcs7huCD
	 9f13wV12ppzV7kQhg4D3qPfk6gFyc6HRLKGaAOXMrlHulzOLfPqjNFL/6khMf6UlFe
	 FuZXYVbiU9wlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE35EC27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764384276.29504.13557273203996942103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6fa6d6fd205f8ea08a1ee6f2e4ab5e14eed58e76f9076b644febeb29136143
Date: Thu, 06 Jun 2024 03:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717643842
