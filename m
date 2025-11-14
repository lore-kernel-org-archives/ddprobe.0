Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F1B1DE2C9
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763086794; cv=none; b=nA3rfozSZLYmH+kS6QG7GT04aKFAm312DahVd4R8+UWeNoZZp4bZvVOEa2s7fN2vOnYG55vk6M86o5bhh6kH27KJsQkgCcLTQPmTebZJEoJSkH4byzGO+8HO+kde+4pibJ3E5x5GQryT1x9o9r3CEY/qbWhw8eVXWiPejGR/wPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763086794; c=relaxed/simple;
	bh=Fgifk6SnzC4/zSAMxa7tXz5BvrqzLLRVjm7EYnePNNg=;
	h=To:Subject:From:Message-Id:Date; b=UCmnJwGw+ZTRtDFopsEXvSVL3UNwc+dQ+W5r7kxz5Fd5TTOPJrJzeqalRFMSrSFMs9L+yMIg9TnruY+e4Z5LtCK1g8VuB+qR4iejPIggm2gsszWSuYhlbgc9N3pRlHcaiZqXLLaNaB9Mc3itNIGH6p36Q0aiXGWJ9qUokIUpkc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqGblWSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqGblWSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5E7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763086793;
	bh=Fgifk6SnzC4/zSAMxa7tXz5BvrqzLLRVjm7EYnePNNg=;
	h=To:Subject:From:Date:From;
	b=eqGblWSoYSyhjF5sMUteaOW99SHEgfDDM/A/IbXlY1g1K40VU1o0jDCPtaLv3dxix
	 jQfkeiGY4xqKcfsMQAdFQLzZqx+/cOOMlu8vINJJPVsuZCVP7GhzhThkamZ34qEx9W
	 J/4sv14ROzoeyKOqP2oih/VYLMlpHik1YYjxtIo8TVGjI+w0iHg6dCtwZU81igRrym
	 BYf0srltv7BcnL5833DU0QFJvhZsyBmZkqoAQgPVkRLd4PBlZ90w/opYrCrPGoC5hn
	 HyiY55zM49VjRbIIUwVS2ykPRSViHWfiM/vYK4wx6MPkYJ6Fl8XkiXf01pZFReaTz3
	 GFKsqN8nTKTSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FA0CDB471
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308679361.3387.4222075420733858108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f74c494ff5c17455a5d73c21997f86fe5a8853b03cb3d783aced04312f7a52
Date: Fri, 14 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763086793
