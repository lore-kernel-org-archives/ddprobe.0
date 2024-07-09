Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A45D1FA3
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720566383; cv=none; b=MYo2Ohtc1zmX20sYH4ENKydvc9eD3ggw65NDdPlvZdJF05Vw4H62W1YZMa4hx4nTdmJVgFOkgQTfN6JIb0rf/n0eVnU+3J/6ENpOs22cqab6TrBQGwPJjwjaVW53INNgW8V/JYDGSRk2fe1D8gAYqsUk21gLrW8eZkFOfhSfELE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720566383; c=relaxed/simple;
	bh=sg7Lj6siqK5h5veMK/SY24NbpiNlsbYIa3th7JbdkiU=;
	h=To:Subject:From:Message-Id:Date; b=lv/6tH890Kf/LMxf2DZ9U2ley3waBq+sjTu1TxNdgrL+HIxFqPRePsiZlepTzfkj/1E7dSxEBCo+M1T/YkaFE9fJlk0+i38Smj0n1qioSw6RFEf20S4OA5lH4MoyVn4xNNtjjOna9yaw4BXHo+5u8tMV4JvNecQp/IVQlV6/vQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJckprCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJckprCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC119C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720566382;
	bh=sg7Lj6siqK5h5veMK/SY24NbpiNlsbYIa3th7JbdkiU=;
	h=To:Subject:From:Date:From;
	b=NJckprCvQDs0t6RHA3//wJym/MUs19JHjiS/YX6xuC7CccJOcDwgC+BXrXcvEsEzG
	 jmP7b1g5KizhgWga9WDsZcJADxtlp+OK1Wn4v+9yaE0AFjuXHZDbQBRlaYmHUvbYcG
	 SfHSfSEXooQ4sPfVXrKT+9cs/KcE+h/dF8FFzV9/Jk9zXVhi6JUiuErmJhm7uJuoPz
	 g6G4lWyxlZFuFhEhiqknYqUnqIbQJc5sT3s98WHqA98O9SHZerZ8VECWIUAwiLnPRO
	 Oi9wnfoiIxr9XaX2s0XVvFJJBtrXOaKaAHmVy91Klq64EaI3s7tPgGRl/rnFaEjBmm
	 4zm9TMdtQi88A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9055C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056638278.30465.3688883240064663704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8674e51e0a53f7815edbc7261f2e37bea7c9e1fec1642efa417cbb027eca71fe
Date: Tue, 09 Jul 2024 23:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720566382
