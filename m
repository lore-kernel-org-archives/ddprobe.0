Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E857D41238
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710340097; cv=none; b=TZaJLi4JXFAm9Lz1k4Yr6xP208p5Gks55pYUpSgq3k1ROtJGa/AAxelFFxQq0+bbE34XrUK1d3d4BWIJ7ylZX4MtdNlZoXhGWxW2fJeo02ebKcHE/wCRId6s6WHzGEhmBs3YL6cshrCz0BXib8ceqc8l8nGCGTjKdrAEjh2bEAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710340097; c=relaxed/simple;
	bh=axNds+kkNZ1IYGEBOIkRNSDDWJUYlvo20ZP3WBuOB2M=;
	h=To:Subject:From:Message-Id:Date; b=eQIRO8mq1EGWWzBunOlL0G9hfRlfUEBZrTxc53xT7A4uInPMs1u1+SdKuqzY9221Qu53c+RtKNJ/z+O69cyytv3LzSTt2QOBtRag8HMpOCAHQQzHl6cfrR6zDdIAVbWnVhYcXfJhCJkV8twf1e3tmhpdOWM6IgW4xh8mgwPmprk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+BGBptu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+BGBptu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B92EC43394
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710340096;
	bh=axNds+kkNZ1IYGEBOIkRNSDDWJUYlvo20ZP3WBuOB2M=;
	h=To:Subject:From:Date:From;
	b=Y+BGBptukHo6MabruPMQXnob1P3JdVVHaMOjt6dgWapUjGNItELyz4wwnPYpT4W2/
	 ADjcGwzD86D4cdCpLxfWk5FUGxTgRdSMfDY9PrcQ1d6CoyrWkT3yeaVqILis6kvC0p
	 PNyk4IJS4Ngmm40NJOXfmgfXaAIDi07yvLBZUTZNf9h1fb3MUtvB243OM87LLVEr8j
	 VCyxnJsH6OspgE1FIGWbpC3mJTat3lSoImD0rKkmFEI0OhnE9quncSf+HF5LPeP9Dj
	 T8CBhRWK35Htvev2yWPBnigQQ+Qd4NiGzFnZGWMmh99WOv1m8j2HlMV2rWvG5QpDwG
	 TBKESJcOOrOFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF7AC54791
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171034009638.9200.15203128000226055800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a84bb26029ae56bbbdda9b5c142fd2fac4e1b36bb8f2d9ae91e91b7024e51b2
Date: Wed, 13 Mar 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710340096
