Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1447120D4FC
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760175594; cv=none; b=P9lq3mpEU9sNK2DYC52whP5ZMIhAfsPy5Nke8h8OUfVyp35SZtzqCI4J28jl5Z32zdsVq5uPM6mxSDJHpQpMERfy6QkUbVVMzw1dH/RrzgnQWS4EhXTSMu9JOC1wczoag8MtqrFSZmNk6FfNSrvXZsqZVznxFa3UNdww/wKSoJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760175594; c=relaxed/simple;
	bh=itLu86kYEqhbC4M8SM6S1S70wzfe587e2ZzUFusFwFE=;
	h=To:Subject:From:Message-Id:Date; b=d0qC+LKrdcDCpKcGzkXzSC88i6AhApvqUxhWRm6cXM9Afu5yVG7aiWVuDZkR5w+J2twJviQnh/S5kkPCg+wCSH31cseBxyqfo1aph1FQxudnmG0bLcwU+Ch8zESYkmzBvLwmqSPFMS/hn7eV9/gns/BmqDaExTCmzofedLgAwSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szuBkdkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szuBkdkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2802C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760175593;
	bh=itLu86kYEqhbC4M8SM6S1S70wzfe587e2ZzUFusFwFE=;
	h=To:Subject:From:Date:From;
	b=szuBkdkJ6tnB9L2LP+4PDd5LqKNtdpe7JIeKeOKbE6yyvzjT4fm59jHy5ZCaGUSai
	 L4buj+9L+5zNXEWhvSJ0KmCqdOvaTAPrmtUPTT1EySUaSqnUPhk4sdUKiXEha5h7/u
	 dlJncGRiVPoWgFrZUKFwFSzKToV32wGUMY4L+0hd2+0o/TQ5hu+Y8Ua1hWpHXZqeZD
	 7oqvfsKNPnV6VgQfdHZ0zX/V+2g6qfmY2OVL3IQdldEovSoiLhC96YmvRaMsL7NwKs
	 0jx3qk6CJ7DKjCbPh+ODDJ3Ps+8ZqaoRT8yTML89FxMiJF6n80RpFsVrz/pkQzyBGQ
	 Ib1BS9149rXjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB6CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017559358.23815.3206487319822421330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 213a35c2c8dce4a7a9d2ae1d55dd5b748becc462a5ffdb0c7eb3389dfbf161c0
Date: Sat, 11 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760175593
