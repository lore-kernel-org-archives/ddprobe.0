Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A41021FF2A
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785573034; cv=none; b=SZwe5HDz1ogZicIyj2Z8J9zITPmSlxbda+yOyroNPjGcGAxh8+ryplKdU2H12jzMTEGptlVYk10dgB6PSH1OnpFKIRzymR2fod1lqvwIy4wQno2ET6Dn5BwZp7ZeSPQugAZTesVyndKWCBdDLU+KOfoUyvSaUvLyPJmlB0ZjS0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785573034; c=relaxed/simple;
	bh=47vX2/TqkoUAzSCHJ5jZDL8K4Uyp5o4YH59cPoWLVrg=;
	h=To:Subject:From:Message-Id:Date; b=rQVMH3DFWT+8NGEYp58OHSByw4oP6MXR6ugYAOy27Pq1p8yywANnUKuoNcMQoD9lkSBew0FlFVoLZQITuuY1nz/W9iY9hOfvB2eFI5CGNyC/94TO/EI/saOK2E8sNlYDQxaJOey0PUfHAbhe52MZyRHVkKvHTc6/XOSiy9T5sOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmn6KyCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmn6KyCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D23C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785573033;
	bh=47vX2/TqkoUAzSCHJ5jZDL8K4Uyp5o4YH59cPoWLVrg=;
	h=To:Subject:From:Date:From;
	b=pmn6KyCzEZOdpKN3xmFc2gdzW8R8VCotJ6TtorWxLHNmlvqsXPe5vc7uWqrVdNi1X
	 rSxt0AstNWkWxufmCCmtphXddgiaHLIuWaZ0voeg1hKZKADluuHA9kqNV9lYC+2Tin
	 7e2ODC8lG66oUscopALvSMI5GVswbbJr4MMJ/Lxo2nsnyowA48QdzPM6kKWbP/fhQ+
	 PKLR/coy0uqcU/JgjNN00jndy+VAzq7+FWDzZXjONmRj6uSeX6q8gc94AWnPikn8nJ
	 HST1+9OXLsgAhrj9W694Q2dACJhrc5FOgplKPCix9/LuNtZvZA3EpRW9G718dWwKyk
	 evV9gqKq4TOVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC32BC54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557303368.15146.3504978587184771902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b8c6754be2b74252d8a476df7fe512e962fb5684a4b801c5cb784508b43200
Date: Sat, 01 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785573033
