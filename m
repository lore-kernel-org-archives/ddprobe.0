Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53547376BC6
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785619234; cv=none; b=AG/ohOQjWFW+Al+IuPB8VcvwoQhODSMF1h4yAAcuERsaIb/Q9SQXA+vEUT37A8kQXnt3/tLvo3v3eNhWValcV0S3ZmQAeLdC8hCqAvyOZkkcmoZ+GCRzGGAxoFbBK90WNqPH/LelbRUsqpMnU0hKrI158vRBdmlHLR4itst7jS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785619234; c=relaxed/simple;
	bh=Z1P3WbSuU9K7By/o0pPKJr6MQVMhUFTcvQO9o1Wo5HU=;
	h=To:Subject:From:Message-Id:Date; b=FieEaP33nzbCcz3fWocK37JagZOXUNMNFnaImWjaoXTj2nen/Kv8cAoXmCbByeqjcKT0HXcaMOOOaJea4Q7vI+3Te06TFFLl91ZGb1lQmXfyFVvQrsNNIPqyb4pqfIoa0qj27thK07fxxkNfGqxqHM9DTdo+RKGOXkfWJfP1zL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRKCozPM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRKCozPM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D187AC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785619233;
	bh=Z1P3WbSuU9K7By/o0pPKJr6MQVMhUFTcvQO9o1Wo5HU=;
	h=To:Subject:From:Date:From;
	b=iRKCozPM8I7eLqzgX8FE9luOjtMX1a96nd+U2eyLWIirr3jQUG/gSz8NfuuD0ocXy
	 PxRghknCr5ryZk6xxzpcuOoIpdVplAFhR3PwIlZMK+OYHoe/5QoHDbf4gPdkplH2VZ
	 CMPSoOhk82T3UX/Dw0/zhNvzIVSkguLfJg5UgFGM+rXzTBohEYP4rKVUO0r/koUvsu
	 5mclKmKaqnTfMhcK40c2EMLEoCaGchAyIdPtwpTDy+y8FnryK5cmoRDufzFL0CkxG8
	 sNrpg4m9lqbsJQ87FlAhBa1qUW0P5pnrQVcR/BooYumxUWZbnw6MfvW5Nj9KhjgtJ0
	 mjePpTda3Z0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3B9C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561923368.4160.17741203894821600636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d163521bfa6c7ed9b90b897098a027d1fbae3cdf3d78a78547162adf6adbf24d
Date: Sat, 01 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785619233
