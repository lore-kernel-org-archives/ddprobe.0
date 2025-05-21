Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC5420FA97
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747841395; cv=none; b=Ox32wgI7D7BiELb6bX9GC9K8NKFfTr8ziSMWmd1p2jtdsG1H5YB7pzFBWiMqr7yneq7N8izI9EYbkHYlX23HG4AzoHPDzDNdvirZLcCjZcZESzAZsFJa6zQQRFJ16DzaTHfaj2Q/pnmEs1H79u4+8yjd08oc6Z6uN2w/rBl2jvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747841395; c=relaxed/simple;
	bh=dB8gUAMRL6Dm3SR+4FNL78PwRDQffLMpQVprbzszcaw=;
	h=To:Subject:From:Message-Id:Date; b=Ue+SxHUYnSK9xc0ec4FJEsDsJTeNzAlg5PN8Unb24EZJbR4y9SKG/Xi0nY3jYLe0CnH6hephx9cww4oRskPVbY+fPf6ii0sXfWyhWKUkEoNcr+/o4Q9QT0Mx5YMXnNbGTJIymaWjJYAzNfvPJsVELJyr9MVpqy2kVkRNI83CScU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l++FNcnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l++FNcnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747841393;
	bh=dB8gUAMRL6Dm3SR+4FNL78PwRDQffLMpQVprbzszcaw=;
	h=To:Subject:From:Date:From;
	b=l++FNcnWv4hedZz/dFf8WZ5Rzw/iP++VhcBaGs2jJ962ilpMHeyvyB6ell/PHoZEZ
	 srGZUAsor3BvoHNpqK1oVPupUqzMlo5GeqiO8eIFoTivS1o2VGAKPBx2beNHGTbfdm
	 40B6+eItvYtu1BQlO4nXa58HdQ0QujLVV5eINoM9WoYgISLJznjAPykD+zgr5uyXov
	 XiCDbOFHCY2pommCvayGlSh5zGdut1ez0+/5rwDjmxJ/n2n2MOaxlClmXLmUGLbLC0
	 I5LJunHwr57bCDmsz4P+r5SYcCORlpAMBH3qkGu7XE8Imzy5O/J7Zv4uDetFdslcyl
	 OLmYUOaGMDN6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E03C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784139358.32346.11959166584656402202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7823febad2d377830abf795ca2832c184acbcc24e90e7a076fa1f5d31fc15f25
Date: Wed, 21 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747841393
