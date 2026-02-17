Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157C6A937
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771303494; cv=none; b=D97ejYFqBpV/G5e+6cPyDuGksK5zII6Gw7ANnwEXQniVthiUoE+SAKIFR1eG1KrgQgJXoxLayEsnZHfceG5vdReTWmO+vtuYGMx96eMoOpleKG81lv8//PYpOVpuYjb97nGd9KuDS1K9ToCWQYdF6J+/COfEpju5dpt/oLOTKzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771303494; c=relaxed/simple;
	bh=4JGVOFmX4jF/xadGsdd6ZwQr6HS56dxa6SuE5KxHhaE=;
	h=To:Subject:From:Message-Id:Date; b=kU2viDkc5WnIhbDhhpIJnvMFFwxSxAXutmZz8hktKGhPCHIK/BbivN346IGIpEGWNCOsQRUB2zEIUAOtSIo6n2LBRHEXE6++ut7e31P/BcYooAwcz/CCxaZDI/rcoUiGXntzTCuOIz8CtoP7uGgU7Xq/iO2wItwu+/ghC42fAxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LX7LiRFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LX7LiRFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD5CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771303493;
	bh=4JGVOFmX4jF/xadGsdd6ZwQr6HS56dxa6SuE5KxHhaE=;
	h=To:Subject:From:Date:From;
	b=LX7LiRFcmDpl9x09+3Wy9n6opL1+FBqShkmxqgPMPM65jTjgqMokzt8LjL5oI5qOP
	 ZvqqIQHqn3cGLwj5j/hNeks1ZanJOvZfG+RqSzrJwNMsoSbFioaq1dWnGkoAgtj+kW
	 VqgdZDZocLOvw8tSd9LVj7gzzOrIYaZCCPUMmV2e9fW1sRZdPceLXKptdF8T7PFXiU
	 95P1IFMeWmS9Ci2mJEoJZcGvev7mNK7gkjnXx7Foh0pkb7g5jbxbdFcm1+PFdG1/E8
	 l2cG+6BVYxgxAG5lxzcTNOYEpU9PO1ddY//Wi6au/xXi0rCZMCm1Z2TS4bi2Iss8ge
	 TSjra0KOXNFAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968F1E83851
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130349358.1490.16802912536605567017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74e08be83822cccb95d9c6b2bbfae049968b83fac40ef741eacf94db3bb94c2
Date: Tue, 17 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771303493
