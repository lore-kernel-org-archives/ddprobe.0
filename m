Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9D223C512
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754553594; cv=none; b=FEs0ORVKOy8M88NcAymeG2QmUg9Se+N/Nhtq76tX7WfBtNtSIZgst6Fa8kPblwvDwfVyZfWYtwU9GLjqXxK0ut9Rj8b+8Cpx4Mch5P5c5Uah3XaSyFkLNcrhXoyiJObHOGWaKIEgQ9It5qyqDoGFUqqSBHkVh9hUBo6TYVIQI9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754553594; c=relaxed/simple;
	bh=DBwtDebqmbgHW2CmKBNE456hxOYoWrvWaKW/SoPlv0Y=;
	h=To:Subject:From:Message-Id:Date; b=T7feBWqAj4o+lClR5rycl3TpZrz+k7ns2aBkOS9qE/SSWJH0GylDbv4zY4oe9HxyJGeZXZAeDvZdwg8PSJLznY35vWxI82zqu+7opbNYujPg5rh3h8LSM2rHn67XllV0NBzZmx0B+W0no6VROay/lrEtyVP4aaGwJsjlVYAs/m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4ZGMOrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4ZGMOrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B7E6C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754553593;
	bh=DBwtDebqmbgHW2CmKBNE456hxOYoWrvWaKW/SoPlv0Y=;
	h=To:Subject:From:Date:From;
	b=a4ZGMOrbM1bfw7dfuMGwyvS+QfaI14lIox1hQt5vC4YtmGLguPjlODaQQBmNmgaE9
	 Do6l3hZfIzy2T+wSXXdc6jxdFV6FpPf45tx95scc7Q8/ul/4Fv8bOR2IHqEHJWfdSO
	 Sz34K/O/wAVnEPpovUhvvxCQ7SoQZjYJhoPJgka/WWQrvtSWsyI/1gXVwhjLv+G03J
	 Me7tIA7lmsWMtaGJtHQVwLZ+rzcaicd0GsAiWIHuDwm0faRmgROzfSKaxUk/e7iY8b
	 W1XstEz+3els1cKykPtdCDQjR6OC7IIufSr9g6UCC06Ov+SYoyQfZPFigmd2Ioh266
	 qsub338fhDujA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DA65C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455359357.27718.10278590623876079376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e06a48b4add12fe52a4e8ac9bfc1eb948415d754a4855858362ea8b6c7d35a
Date: Thu, 07 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754553593
