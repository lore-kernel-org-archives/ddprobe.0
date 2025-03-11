Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DAC23C9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741708134; cv=none; b=W0Vqv9vgWLcW68j1YrEWux/lOo+/fsuV8SzxRCeN8HZsnKnKawrbeerx6jhs13N5Qf39hkmSyvFwlIuJme1lw4rgyA6Zm2cnaceXeCVv1ojoCdNle2JYNxklmgsSQvDfKvmODFGwc/+1SvMMrvuIA2UhSVzTH6AIWxkH0PQnapI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741708134; c=relaxed/simple;
	bh=11TzaGa3GRaEOm6yBYzTYRBolJ2OEPnjXVhTeWCnwME=;
	h=To:Subject:From:Message-Id:Date; b=ciILmNK3ZB/swdBiISHcF29I00E/1pTQWJo74zaTuWqMESlEckXRcs4AeEGG4nTQPObNmnzZidLDMKNmdWMW/vzxDzyZ/LNYYLVNDK7AcIysd6iiBkHnOkk+T6CHHSEti9YzXviCki3p4BTEx3yC/0WoKkGKIQ7uqCPpt3Az6Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXV7ZduX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXV7ZduX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DCAC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741708133;
	bh=11TzaGa3GRaEOm6yBYzTYRBolJ2OEPnjXVhTeWCnwME=;
	h=To:Subject:From:Date:From;
	b=UXV7ZduXpu/sqZLKNMgtyc1MjmHhSe17MEukyB5Xen7+q00KlOQ3PlepThg3ah6pM
	 mzhzw6lHXlotbwpvqN0Lo8TVVRFHAVYnim6VEaj6U7ZdMqVuv3AxXKcDNx7JKxes0f
	 ss22bDq0v0nSodZMR+obj9lGFbBZQ//beSsBYRqW/u2E3gP8kymYwKvZUv1gbdG+Qw
	 niT9DUvdNSLZp+NXDvROTR6Zwojvyi+7nQxRO4ahN97trfaAvbsPZKssxcAUZBDu5R
	 3BDez1nAtEYrdqIUqiuykFg8qdia8qu77ZLaN7A2NjwsQU1x9+R/Qwb5akuOQjEMFR
	 OkM1kigOUPUwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92743C28B2F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174170813359.22004.6629367330231448694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e4bf24a412acb8c1eb628ca5e44f2d18db64435ed8877d309d7c794cde20e4
Date: Tue, 11 Mar 2025 15:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741708133
