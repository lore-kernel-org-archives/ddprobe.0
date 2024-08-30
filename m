Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41954567F
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724980554; cv=none; b=Ju3VtFpVhTTwx+mJMGeRkY/VcEkBEA5T62JWzZ3XZUsGW6XdMDWDuo7U7xiXoulF9Co6jaCgc5CZoyNPcqt8n5WfJ1W+L8VkyCt2Y3P1b4ufEAGWcAv6mJYV9B7w/d72TjBSkR1TQhk+JjGoz8Vq+lsX77hsS4bt5DQDaqnOeAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724980554; c=relaxed/simple;
	bh=CqyBkJ1a+ixaL2ke5WObBVIoI88kv94R6MKZUqUQJ3Y=;
	h=To:Subject:From:Message-Id:Date; b=B19RLRayDkpDjWAl8AFHQZ7HZBUbRxbwVUVnsHh1CqHQrVfAZuPuLTvIjlQTU38P/st+f6acdM1LjHCIdVdp5WApDCzMJ3rDBjgiCwosL/7xRrefs0hrMaTHwGj63rkf/5KlC3zGc6poiCrXz2dR4DoTvlPKNqyzzJhggn8Z86U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rP+Xqjkw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rP+Xqjkw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0BEC4CEC1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724980553;
	bh=CqyBkJ1a+ixaL2ke5WObBVIoI88kv94R6MKZUqUQJ3Y=;
	h=To:Subject:From:Date:From;
	b=rP+XqjkwBYMjyukCbKFOGo5m7/+8XYWyjWvgDzT45Nq6eNnMK9AH+RSwUNEioJsNy
	 xKxVMJAaNm5Y1UIjGTKC6gbT8s5UhB+e0TT2K9OX7C/Y512DSjCWs9wsxwNh9XMDzd
	 BRWM73sYRRK/tq2sYU9ft/Jshsn+zXifG0lIvi7HE7MjpPYpFnHmpS4Z/5H3e2rYE9
	 KWSk1OqkAIVFWCJKulJxulZZrLKuzKwvroRqd2cxjFykOaLInAWHU/2AK9tHXGChnY
	 y0UWBHMrgAV2qnt4LS69cYLDVf8/Uycy9A4PiZZf9lwuIKby4mfCKx4ydqXYBm8grT
	 NTMSraQ49bgVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A2CA0ECD
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172498055358.12022.12069899576493899787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eea41d1de7e710859b0e26d86f921a70ec9fbac729c413f395a04c06d504550
Date: Fri, 30 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724980553
