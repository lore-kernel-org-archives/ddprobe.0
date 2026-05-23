Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317CE27281E
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779561754; cv=none; b=PyS585KInVa8HnrXzUsBZutKh8A61GpGahgcGtfDe4yJjeay3txca4zcT30sJYWGtHHYZHfOhVAaDzU5Es4Mq52a4IB+nwr7adxlfcBCpEni63DdcNmey/epCCtxllgCXFr7xkgXbBZJ9MTaObiM8MPTPQYczqbm4ZqsIQyxYkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779561754; c=relaxed/simple;
	bh=wvKHwKswfbsNE+badJvjdf/jo3oSgMhyLhPkMYNGSWA=;
	h=To:Subject:From:Message-Id:Date; b=ghda/ckzPNejiIewFBpZ5EhkkJEYmYNJC/DNTZ9L2hUD2hw9alb19BMpz1H9uiLuyeBJnXhbMUCX9X498Y3xMkK4bDpZVfX02Me/Ku82gu31G9m+S4OaDNW6Gn9HaF5mkTdjdsUtk/P2pwM7FQ/hhGEDEZfZ7AqjayB9XXD0eAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guhZLfpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guhZLfpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF75AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779561753;
	bh=wvKHwKswfbsNE+badJvjdf/jo3oSgMhyLhPkMYNGSWA=;
	h=To:Subject:From:Date:From;
	b=guhZLfpl0uJ4Q87pPLB75hDT1p/KV9qctA5MJVVKvm4kyNAWxlu390EySLcyIBiGZ
	 /ybngVqaqhaSuK6u+9pKi6d8M1EEpWRcBj9on798AbZux71fWw0o6wVXwnpCZ/jrtt
	 P2QsdNaxS3Nd8qjEniuUDcmq2fq2SVnjwN9J6vRJksVhPLN2EnBN5DF7+P3Rr/yr5m
	 iunirPWLViukUePOzAfxcs1aAxT8LrMX2XUZdYBIFodockCAz6yUPyzPPQSYbkVgRw
	 JLILxaUk4EIYxhDbsIM6DUQ/p5Kt0rhAimSQBFgcmIKlpFFkfHlVzp5eL7vXtrLCC+
	 CUY5vC8AQ6Fqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A883DCD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956175368.26642.10501639418483888582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4619edaf73b0fa5335d0206e8f3777c89da3cca7829b17dbd4479295118313ea
Date: Sat, 23 May 2026 18:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779561753
