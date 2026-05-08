Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389F8378D95
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778236054; cv=none; b=dOP4zgos00FZhDcbx7OUzk8o0b3ZTff7j+Oea+E54tUpqu+E/igXLk685i23E8D1Kt+i2mAst9TOChRWOfU0LLEEQQiXljxii/oCDe1Cbnuy4tFi1DKntMukyrLOGvgTd3ixI/ISYernx8BDcWl39VlbUswX3ElA8bqWiFPfjX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778236054; c=relaxed/simple;
	bh=gSYKqT7txJ0yQ6BhwWIZ5pmte3YvYWcobBlSrw8Nt5U=;
	h=To:Subject:From:Message-Id:Date; b=E9SEJCCzNXhtOmRR1eoOpmNTMUCsWLqR+ddl44Eo22Aaye1U9cwOFz7GRAc8pLzexqiaEHJm2vmKM/3eIM1JlWTFTLf0VlxSynbOBnB4U4Z3JW9dHDpGq0kLhspa0oRST3yUMhALLQTwsJ1kSjPpaH8A5A90rZzhw/ColRb4PgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2OqpIIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2OqpIIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CA4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778236053;
	bh=gSYKqT7txJ0yQ6BhwWIZ5pmte3YvYWcobBlSrw8Nt5U=;
	h=To:Subject:From:Date:From;
	b=Y2OqpIIGevJlbo6aBtfCV6RC2nLMtbKxJ2Ix/gxeVS+XWaV0Fa8e57Zi8M1erHL4a
	 3hsMkFKnV7SnNwnEs0BFnF5HmWm52uqUqkqTFtNWwrz712zt9bAb8OT8mlRXB7H/Zb
	 U2MEyEfrS28NL3WJRv5S3e7TGDDllEPrDpLY6IoXUf4jzmA8u4ekguVXOZS6HYL0vB
	 e5nMTLZ5nKZ2W5Zbksh8jtUF9iWj0GQHWSyIzOE1vIGCTq0EL5/vGY1m37yhQnBQij
	 Tt/x9SpxjPAqvKGoB+xi+Cxb/hQtTB/lEaksc/y7+lCuIjPsQXT8HahRtGSnWN0QdJ
	 EhlpjAS5bErsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF35FCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823605370.15156.1193523759385625761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 402653db959b872d08ca3c63c6dd03abdd5eee8cb195856eb7bd0377f3bc73ae
Date: Fri, 08 May 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778236053
