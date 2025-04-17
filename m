Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3839A1172A
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744855194; cv=none; b=TTzstRBlJSMojb85zkKRfsPxvZrPfEuQIVHkAowi211gbCQf4CIN9YsCLBlIYlvcXNiz//TJ779CmojonDGF+Im4uoNUhWcMSLvSdajlDJ2zmZmODx/FI67Vr/EyHRH8fkEcf778nalBbzAFebrgtKYFXqKtggIRGwBtspKbof8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744855194; c=relaxed/simple;
	bh=atu0Egzg3W3cO8KasuZ+xWSP4LWydKphdZ6BUW64sh0=;
	h=To:Subject:From:Message-Id:Date; b=D29yoOw2bWwmiKboYAYP6V32vknEKA2+C0K3MN93Mc7WySV69wtZVWkncH9N3TcQtdD61FILDVoBcUTAJBRc09f+gUac/9T9OcLWgK7aWXyc1ApMoz+HYnm6rrGfnxXtoow6hZJUatZGputku3C82ZQjkJo4/YI0vdujC8FCwmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CudqXX//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CudqXX//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2068C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744855193;
	bh=atu0Egzg3W3cO8KasuZ+xWSP4LWydKphdZ6BUW64sh0=;
	h=To:Subject:From:Date:From;
	b=CudqXX//vPDz9iBYUIde2rrqbrobQyITkqWwJ4ZohkgOuXnsOjBRT+HdYqXVC56uc
	 ar7BHnWW2MoNWQR8ijc2h1c/wdqZDLqTkPOP4U+llk2fPH3n1LKQEZtjb9nP+t4C5A
	 RJnkyESE6yq6+c5Y7r1asoN/SNX/HPyVEaa48m83/b21OFfzBWmotAhtItRfCLMMmV
	 2IIk3OP0gKd8XGzFG8lEZwUt+YTiuy0N8D/47kJ67Gn4omRAKc4Vtu4okyfdWbDrXw
	 ip8AKjQKGVmMqb8kCEulnHQwU+5M3fVSQfKLE729A8dvfIxISuA5vTeYtwkjT11R/o
	 f+AxVDYoAY/Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E58C369BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174485519359.4030.1631319551894805501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253c186c5577df501d86136bd16df6a36384f59f74e0bd9ed8e4d4db9f573a0b
Date: Thu, 17 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744855193
