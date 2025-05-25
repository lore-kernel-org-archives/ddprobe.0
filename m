Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4030F43146
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748203194; cv=none; b=aosANQ903w0eKR7/L5PsR7kaKlJuxF/2rwGHqimq70NbYM/Pj2cQPS2ZPb+QKWcpc05dqiq0v7CwmtWatgY82Y0ctAE2dtZei0cf388LMhmLQv7OTWcCyadP/wwWhwP1zP8tjaxX0rfWcz78IJ/fwIH9Fqcj5Szxtr5KJg6to/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748203194; c=relaxed/simple;
	bh=bbilB9rZ/2FY4EOh2bdt34BLEz2zlk/GugJwpI3ms3o=;
	h=To:Subject:From:Message-Id:Date; b=Uy+ZpcPBQzV95VVIdHvztjvtpyTU8QCKCBsH+fIpr4e+zVqC7x23X2DTNTHs68XLXSK8rHkMBADA+b/ZV41iee0Nn/WeuegW53HAlO/R34KWmbLxQ1x0Xj9Gq3CprTpHDXDNO7aoyOuoU93ItirpDE4+HLmhADESfPWdOYEMRT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2uYJ1Mr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2uYJ1Mr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAAEC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748203193;
	bh=bbilB9rZ/2FY4EOh2bdt34BLEz2zlk/GugJwpI3ms3o=;
	h=To:Subject:From:Date:From;
	b=E2uYJ1Mre8mRUVJrTDL+W1YNGT47gXsxZgHxIz6Ub9rhCao+vKd9nxo1SBHCLk55t
	 YoU3vxKOdZFPv7GaFhKBZTPLHzrh0wLWvVKWr7zxMWt+uNJFtbLE3usXXZWWjQw/5W
	 4qETKEmx2klaJMsiQHLJL/PhXKj2TBRLTSLkZ5EXhVgNs3qwu1XfvUSe7K2GirwJLI
	 FuNQ5oZG3KZ9nujgADXBHrl5vNgpIK9xOHQf44ki8y9DOnIMC4v7HeNO0n9a48JaoI
	 IbkNmFDYENRnYgyI6GUQoF/wzzNI4iPKlIVmedmtOvCbDg2DA+TTuGNbUYgnkpF0hL
	 sYJI59O94RBMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96968C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820319357.5993.14204583499000328094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4315c241a7307f5adc2d5442ddbab10a49bce4e46fedd9b8132f4c434fc40833
Date: Sun, 25 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748203193
