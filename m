Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6FA2EBDC7
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755162593; cv=none; b=dWnond3LguUsCIMmwadqFiEztUaQvHjU4LWIPoSzKCnA/pR2JMKHVcg2tDnMcS0I04ChJzXMf523hfbbP5QAJKPPsABruOqVIH2hH0DDOpOHOExApGrrHlWoAPpEkt12XUXXwT+7JgUX+rF68UF5Gz6RuoXgE02PpI0QbUPAuIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755162593; c=relaxed/simple;
	bh=28DYqHBl22Y9L5nGdFu+mJYyBM5WFOq2uKKM1Q4iF9A=;
	h=To:Subject:From:Message-Id:Date; b=XwNdGGSftJbiIme0/WdwNNf6gJt8CyOBWEAsg8FfExudBlkZ+ZMYowoasplJ05UCQId+osZwdCFMUFZjetx48CjSPwWN3dJoezOZ9H0zafxTVj4neqyb5ba/GE9yIxwBaEdcmb8f8WnZnOFusgYGCUAW5dG9XKAZOmnMfmB6PRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMw08nI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMw08nI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C11C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755162593;
	bh=28DYqHBl22Y9L5nGdFu+mJYyBM5WFOq2uKKM1Q4iF9A=;
	h=To:Subject:From:Date:From;
	b=BMw08nI/Rg8WBbwcl7HZdAEFJ1UVOI21zBOI5NRIzZWLYU2YM+Ffz0YCFaoG9US6s
	 IVa75MNfQqSX7sZiC7sxICKfQpzbVTWjJC+XGfDtJcBmvyb03t7JCEQtA+SqTkXNz6
	 LL6M4z+6TbMzex4jOktaC82Js4bcaZ3Wqk/xIOdIiFIcQITnAdcaZkT6l0ylno8wSG
	 y+9YmSabBUdDLvwZHbt6Ejwz4z98T4bp1aoDCcSbf47Q3IV9GuJq2rSaloiEryMVqS
	 vQhych5QqIxy/EueeyZAhh1IgvI3ttWLI9ymTuSpJCpBUwJ7xqIUm4VVkJ0C0Hddv8
	 0AvQ5yRn8tXVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9948ECA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516259361.28212.13859945695915388821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ec49513334773a6db217463bea5cbfc2580696a9c2cc2fce940117ca33fe97
Date: Thu, 14 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755162593
