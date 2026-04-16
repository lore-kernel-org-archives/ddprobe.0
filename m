Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3679237C11C
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776334054; cv=none; b=Tx85hjEp9fSI4G5ER5Rl2OmWgHyNFFc8BwGRpXB8O1OWKsMSmfIdY1rZEiSHN4wTpXLaxuOr8kKPSLocgAZahpRGzaOa6PDwJtD9nXwFf9cRrw2xk3hfuWNT4F15YK4rfG356I5j5JeUHerlcUfIYNEVhAC3G21IkJMBz1kSJk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776334054; c=relaxed/simple;
	bh=/HPb8v43PsJ61Cdr2qpTux4qg4GT+253Y9jHv8RLAdI=;
	h=To:Subject:From:Message-Id:Date; b=OVzKhFaSo+UmqfZi9hk3T1d31aPwuRFfRqtH2vw8enQ/AmNVfTLets0XU0hwcUWuz6nCo8ynPJP97dsG733T0y+1/kBxd6C8zvrw1l0RepES3VvyCPQhfrseH0ruT6sZUNK+HvbQflPoTF8ZnyiZm/AlvwNyWlDZnWEM7B7JGL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSTF3reD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSTF3reD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9F9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776334053;
	bh=/HPb8v43PsJ61Cdr2qpTux4qg4GT+253Y9jHv8RLAdI=;
	h=To:Subject:From:Date:From;
	b=hSTF3reD/Wt2l562aekugM8XghZteuROe0uy3UuYCAk9MBPWEZsoY8tqbD6OD6qTL
	 nlU+doXZbZlBRSeLoWUmnx+VXs0sINndyJlTReJu0WkKZ003iSpgDMLRXXjNWnFcge
	 4bzviw1uSINgoJmbwoba+igophl2pXGZRUpmB0VROMZdJo3K/yS//g3hDsNEQPgp2A
	 tr3mosonXktKvxRhA7n74RF6rBNHSUnaNw1eMwyn9WKI36u8GJAIcFrQTjmKZuTy6R
	 WwoyfByfpEX4yRLA7d2aitgjd2Hu1xGRKid+cRezodNqYDax485SnJm/wDQZXuph4p
	 gnC7PP98WjZPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6C5F8A146
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633405369.27768.4608072916664777074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3831a9d50b1e36346dbd9f6f9cf082a0b754bd709a1cb8d125ecd644ffc18c42
Date: Thu, 16 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776334053
