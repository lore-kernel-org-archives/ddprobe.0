Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E6B22D785
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750723194; cv=none; b=O4oQ0jADc3ekFapkKeL5dFnW3JeqgL/3R+yQdTDmdNs6+3V7Xq66Z55MTtXkZFTMKnadMXCKqZtLoUhMDuXo0lXBkdouB+kVNaopl7V36j/O3AZNPSCpEwvYEEU596ALoKbzliCh6UQrUrhIgOIYQxIpVmfeIMLk+KpUKWjN8iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750723194; c=relaxed/simple;
	bh=eXD9XyOwfbR25qrrJ0ZGgfEwjAyEejwNPCM4uUxML78=;
	h=To:Subject:From:Message-Id:Date; b=bK0a662Vebjy68pnEO8tUmaMF6UqvcCnIOtAWBdfWBJ1TMXL8hGDIDhkF74pXlJMDgbSVErBTpMJofXIm6cLkGTfFt/1QLdWlNeyQLfH5hq4iJD1hof4yZtVAlLu/Nur23/IUdpYJWDaRt1T9W48GJilGH9CR61d4xW17X3Stmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLLBC8wM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLLBC8wM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D32C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750723193;
	bh=eXD9XyOwfbR25qrrJ0ZGgfEwjAyEejwNPCM4uUxML78=;
	h=To:Subject:From:Date:From;
	b=dLLBC8wMUkM3e9gnluzBcTV20UIu5I4NsQdCerCtrnFTtkJRKg9AeYjzu6TbA9Kjz
	 6WWu9OnRnvHaaYD1pjiUpIFrLVpXZFxaBoZr+th0/OL+bRlMCj1B9duwRHl9xxj887
	 OdhMYolElqOQ6CpeVjSD+nyiAwzIMYmO9yLXyVx60IpukxpglOu5D4eaRQZdpGCUwQ
	 T983sbjsgIQopTj520WmKCyZJH+OMD/I2a6qZI5vMbFJOAX4qOsbzrANI5/AJU/JzN
	 t4HnPI288YuB56n/H1EaCSyi4Aq3FAPt6vAvVKw/9uTbaPRRMbf593aTyMX6t+IoX9
	 gps1umCGIDs2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92432C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072319357.13082.9284494801057753633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 838fd09c00efa819ab774b9b82fdf7458298bba46b2a2b649947b266b0c4da1e
Date: Mon, 23 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750723193
