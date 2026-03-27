Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98403F20E0
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774620894; cv=none; b=oOZO6mGEXUJ/LOb8jbVcWKTuzHIUXfiArjplrnYwhvW6+CCgOx8YZMG3AtQ/t1wCNomj7g+1QJLYOvHEd0zuibK4QstmkImsEFma0D5yZclQUvNbUqOJJJAgwQq1LR3d4HF86F+5ZjvMTIHO0mhmFfGr4FPDzcJEg4UOa1zkRzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774620894; c=relaxed/simple;
	bh=xC+jL0JW7gsXqw1WBalbg0KbwPSuVmyXpSKHPmQBtU4=;
	h=To:Subject:From:Message-Id:Date; b=ln65rwGDlo5Fit0Kskk1uWj2GCyBgnhv4LYPtuPMuNB8wE1JkBIjYi2FYDZ/KOFe3P65rOg5ayp1NVmeJoZxE96r0SAEcgvNzhBerBntfQ1q78cT2o67RpkoNrlucQHfcLGTZ3uJFRJwc+t64nIdSR+w1sSySp04mu6JPH2mWWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOsJnlt7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOsJnlt7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F582C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774620893;
	bh=xC+jL0JW7gsXqw1WBalbg0KbwPSuVmyXpSKHPmQBtU4=;
	h=To:Subject:From:Date:From;
	b=AOsJnlt7wjQKw4GYAeHS8HWpNnTBAnPnWiOhS0L4oxJ6oLw6KG885hsKEui3C2Psu
	 O8oSNiU0mpqnIGnZjBnOa5ryg9yU5YfTkPTOwe5TwasSKn7oVcgXCL4eMfnpHeqv9M
	 TqEzUo9Ow2viRVHYiofCFAZzsGObTLhp35oNoHizCKHrW9XieJ+94QjtiExCbDwYfy
	 05FaKKHDTyI+K159J4XV/b7VSgsY0EvBs4SAoyr1JJ7wfputyKPStMKs/QhhWtUpsp
	 XeQdbNjlQrbs5Er5rnuPMoyGcqT415JtrPjClMx65g0cMuvWdY9zkd/pIfkvqQC4PS
	 wtOlkVcYZC9Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E3310AB830
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462089358.30655.21668985095710373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8fe102e183c126177597b16c9219a45f342283e80764e83499ba4cfa022847
Date: Fri, 27 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774620893
