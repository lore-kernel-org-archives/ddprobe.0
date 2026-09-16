Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E33743DA38
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789543834; cv=none; b=a9fAWj/85d0fcT6amohv5jcRBr41NCgXSWW9xdfJaveaRYGoqdmg7CK0Y28BHZai10XbSa6Hq7k8nTen4HUwsnDPLEjJaJOh64AaIKxTawVMVRQGBoySekuK2ofuExBR/y0nloMrde5N4CH5MSrocxvewChMqDKLoFtmKduh8hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789543834; c=relaxed/simple;
	bh=ADakDzxjnvEq0Gq/QvDLY52Xhvqbe4q5qAFoJv4ENKs=;
	h=To:Subject:From:Message-Id:Date; b=n3hc39cD6tdgxBeYR3NDmIGZGGRBMdyZW+fEdC5RIR0iRkfhTTCNf6G7q6APRKjO7NSSFOMjrKqzTWoQ7TZZABnknyE/gXUJoqhMrsomwOw2L5BS8w+f+QAbP2/23z//wmt04375jSiuN0bxUnURw3VP/S0ME2L3MHIS3gpAoNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4vRku4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4vRku4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0CDC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789543833;
	bh=ADakDzxjnvEq0Gq/QvDLY52Xhvqbe4q5qAFoJv4ENKs=;
	h=To:Subject:From:Date:From;
	b=t4vRku4lCuwE1qR12/ADk3cMQtT8x9ceq8AVMIBXs261/qhsdCn5hyNEGg+6/OhtY
	 xJ3YRX8q1OiPCGQ/j9IjpXKt2ZGkHBEOeQCu6Akou0jp2+cudXvY0Vc2jham03Tvir
	 YxcKJbpTEB6UP6quBd29vAvGyKutHy6ZEO5gNG+5RhznUjCq54dybNq9y0Ety3uEfG
	 0PZS2syre8ZW+4IxzDRigIKgrHMFye70JbTG8xkMPIosJEe4R047vOtczQby/uwHer
	 FC67uRP+gU/IY9D2MJ5C2jM/LO5hnDz/chyFQ25yYh6RRkmoSPOwf3acHTbZ4svsz9
	 EFUKVy9Wfz1zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E29C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954383373.18117.11907685871214650754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393a986727eba63d25a0f20fec099193f8b27a08f071b77f24ca5c34d752a3e0
Date: Wed, 16 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789543833
