Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67EFB15AF6
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 02:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743043194; cv=none; b=mEJUy9f2rKz3kKByDUvoqXv6i42ubBwR3wIHPL9P/7Lj9pmIpJFf0+AX3Wp3vmup9ekq5rCXziFYK/Bvs4dlAzj9O/LSqTICYrUzfLzZl3xYw4vUYYgc9mjzb3vUD23NkHUNVPOmIN6qpwUSECP1vNS659raUsAstZlcDg3hc1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743043194; c=relaxed/simple;
	bh=v6beYWJ/cLaJ3JIBKwIN0sL0sQc0lN/9mPxbiN3KSkQ=;
	h=To:Subject:From:Message-Id:Date; b=aLpIeyl240Fq0Fyl6zeT1S5vv0oGF7JfgH+p7HYcIYOmIrwYc6pJ4Ild0ITZPokyy+2aa1UPPw8uUzt5lp0NIzmeW2kvmaLsuHUA1kdhdeLALMtS9TG29jlFYaKtBqSkUk33wZeCWuktmHCIIRgavXfqbSVroTwklYUmnx7I/rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIoweSxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIoweSxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D795BC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743043193;
	bh=v6beYWJ/cLaJ3JIBKwIN0sL0sQc0lN/9mPxbiN3KSkQ=;
	h=To:Subject:From:Date:From;
	b=RIoweSxF9f6Rg5CxTqZPrmONeLUUYlBnvqEnmye6WdXaGGidDErUuJxqfEv+29MEb
	 srMQmdTgQX5C2P1xjE/5V9eXf0c+/unv+LZNIW0uPSoz0NB3rHAPyXNjhRGp9/au/y
	 8piU8X3BBIUTlW6Z2TBYWBaraSyrkU7OmuJodHT/I4ugacZBW7vaiGa5waNTLza48K
	 YidUALhszov1mkPzLpZUBxwLsVgz0EIyQ1NF8oZf47U6kZX4YqhJ+ig2g3soK1BHiI
	 Ejc6n4zWZ3HpHAy9Yyf89LUkG77tqcIpcsosQVueyABqbcUi0ZqB/RoGG/BcfQSjDp
	 Ca+iTmPLSocNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9FC8C36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174304319372.15067.1062711277753752839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a283bacde5da305f3c953482c299ccdd6d4d3dd154bd123353527fe98c86c3df
Date: Thu, 27 Mar 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743043193
