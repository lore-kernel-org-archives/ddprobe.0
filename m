Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FDA32B110
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780979674; cv=none; b=PdYVgz2Anful7z/shYzJnrxj5Y5T5W533iUwWSRj0awQlutuspOLnhNGH9XsO5hUkRu0+2C4NSqj2td5ZyLAyOdw2bxQDC9/WGDvk7aZz+G9w4+ki48wxJKWLOmnElduYCUIK4matY9jR1Fxbiv+3gduvZebaEKsEb0/STdoFRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780979674; c=relaxed/simple;
	bh=+x304lyRvTtNEiLwMzasdLjwPUGW1NUZnc3FQKtqfa4=;
	h=To:Subject:From:Message-Id:Date; b=jNe15j2Aee0YILaYdeFKYdBe9WtCW189MMcqfhi472lbd7/msPuCs8xvsNbJAQ4QV22l+L1ztWfhrEcf44PXja7TUm/TEzoUL+8WbGHNxRZkVBPoqj7owbqRj7WvnuA8RvYiYzHTzuJd3RThke0KQnSBgU5bQMNi1eULwGKENHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rP5s41dN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rP5s41dN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BADC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780979673;
	bh=+x304lyRvTtNEiLwMzasdLjwPUGW1NUZnc3FQKtqfa4=;
	h=To:Subject:From:Date:From;
	b=rP5s41dNtSloZVtes1ojyLUIV3jDqg8uJjmi0liz9Ir6JssufTXhyMeQ5FcgQz9yo
	 gkYRbbboheXuhahn0PcqYAmZm8juaHlpG/aSfoYqW4Gddhx9OnGo3EM/u58pHWh47G
	 QenmeZ9KPi6z82KpapGXqdGbhE3m0Dc5riCoYpfe+xQCpDgjsJOo6hZediegMlv5LF
	 xgf1Fh2e1PC8NH9T14Vc5IT6Btn4peAEC3f3AtdaruyyOlwug/FakZehXaI9pg0Tyz
	 4TqFLQnlGbOiDrkpOT2qHOI0fWBqbUCC3z3FU4c6jIr4F+KHjQTbjD31cWis9xjRzW
	 8FqW2WFhXG1vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B421ACD8CAE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097967369.789.17983193914147412581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12637b20d012743f1249b535502eff65250fe952194b1143a165e63fcaff8da2
Date: Tue, 09 Jun 2026 04:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780979673
