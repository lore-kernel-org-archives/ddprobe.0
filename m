Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498502AF1B
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751164194; cv=none; b=rt3+kKcJkl+NwPUBze9k7h9qPQhhB3ja4CV3KIXPNxwVhTEpy4Yuho+8POqbGxhOn9fKc4lIrI3W7mFfyOLqwPcvq6WrMpLsokDFCJXH03zF1LXKsWCjkv2XdlGhe05QrQ6d8EQ0CXmLAUGDfcZSdzuCcDpZxDU1scnLjoQ0XAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751164194; c=relaxed/simple;
	bh=xPTz733JMqZwtYDeR20QNerGwCQNG7p0wV8Ape7QvVM=;
	h=To:Subject:From:Message-Id:Date; b=lXxn3AZGGiKV/9wg0KI9Fq1R7DI8eID3lASAUodP9k6vdxOiWQ6xNV9LIk1UYxnGaI7HsmL0M5dWc5X4OJmByAwVBzzpuxuzBeZ0DQ8ruE45ijh81n0Kf7tPg6BXr86u2ArnDwFug08D4jszmjUl/BwkubtIhwL+WmsflpckNso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEE29GCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEE29GCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57D9C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751164193;
	bh=xPTz733JMqZwtYDeR20QNerGwCQNG7p0wV8Ape7QvVM=;
	h=To:Subject:From:Date:From;
	b=KEE29GCJRd8yudM8c4KDICqZz1vceQhwaOU7WylNmmLqT1t/lhwv91PdiYp0vT95K
	 oCg1ZG9MHOP573yfll+7gF41gNPHF0lW3fIpqGSwkVJOM1264Q8PQfCBQmwsVcwTT0
	 nlUpVXF9ittWW65qA6xnJn7V3eb8qtXsJu8AfQ1zYWWQheb1T9mmvOfrQbh1tqUAvL
	 knIInpnNnjUyk3GFuxo0X3YjF/+au4z5k8UEzo8yjQQ7DOjajqs5k0jd7TW089LovX
	 OEtDYv1Zm5XZ5sidgnHSuzlT1+jcBcgu5NGupU97uKLLX6xd5PTW9TwyAlZ09Ezrxw
	 pesNeUZ31tvcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92073C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116419357.15193.17766798654802834633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dfdb0c0ccba4fe5d7ea464526ded9a233aae1b0508b2835963f600366d1eaf1
Date: Sun, 29 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751164193
