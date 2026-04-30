Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C512475D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777523254; cv=none; b=bSHZm1jXe49TFkDea6S2zY46KCaQUVhTCW7ugVW2DKZmH9CS6j+iFVZkT+v8iwuJMeKd9eepDEmClZBRxNtiHIW2XEEHxYwIkz0KmA4zym6fkeBNPGoQkYTzb/5ZQ0w+ySQVGawhyDBPvtO9++n9uOsm1y2izAsT82115SiPM8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777523254; c=relaxed/simple;
	bh=fEvj64pNErC/Bqzs8s3pF8kdoHpfIttv8fRrjmJlPgI=;
	h=To:Subject:From:Message-Id:Date; b=sCOJ8JVFeU71UQG5zf+uxOlsCW1iuaS473xW9cDLlAoyIdWYOpBk/jNe8iGHROsC2tVKNYdkKoZcW2p8axAVh+EBAq4hrb/tj80Z3X0q8tB2wx1z8sB5pcCCfanFNtv9l1JhrA5SYufFnp66PLjJ1T5RX1k2hvHQcdSAO/z8HXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsjnHtkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsjnHtkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA56C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777523253;
	bh=fEvj64pNErC/Bqzs8s3pF8kdoHpfIttv8fRrjmJlPgI=;
	h=To:Subject:From:Date:From;
	b=AsjnHtkxVlcMmoI3uFkEtiPetV3ZZ+ApjB4a2BQFJhWHETz9sNfA5o378AiVmETd+
	 ucyVVfQGBQIIkEauKcCkLZW61uGgszp1dAd2tfhCbVwZ258zJGaedwW6sJElZpCn6g
	 jzX9w9IqkLFtvROX6I65s9mMaLb1zY+xdDZo1evO2vOPHFzbS4OoqOeSaOG9rSke4j
	 dy9xq5AbtbYpOSUCX4gFQpNG3lHvGPTebk/ngUkdsPLdvc9LXQYAroi3qT4SbaBkdW
	 0CdU2ckacqV9PaU1RpZK+VRkrhuGQKFTS/giulDZfPmwBasuKzD81lThg2mhM6S8x2
	 MzreI4XzZGvdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA46CFF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752325368.11175.17599455426875337432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48492d7b720fb976bc162f9e123704bed63e28eae639e677c7d6a7832780040e
Date: Thu, 30 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777523253
