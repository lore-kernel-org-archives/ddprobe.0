Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD142E093C
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765133574; cv=none; b=PQ9Tob4JVXn9XIjJyVAg67VofKnQ7yewlIzndwX3FDSm2k6LtTeeJUuxSe6NnKttiqG/NSBdIy4HRjtPS97RyM9LWbCwQ/xA/OoQAaJzXGWE3iGdB+3Xkp41gQLoq8CfhbvUEbEP5TaSkcUuRFapirFcFBegJNn9aH7Zv3zz/ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765133574; c=relaxed/simple;
	bh=ww/YPNIIByFhBW3HvAAPgekOKf4C231Zd0kge1xY/Zc=;
	h=To:Subject:From:Message-Id:Date; b=VwNOPSlDCt+L01tKCjWdtLXJrfCgUlgBcImFTs10s2u9zHvswWUjgxd5OkrDLqSfL3byRFrGIN7292NlDSlZL5ZqiRDZwKmP2RKWxMUDXHeMXnNBbhuRM+sM62C7fBFW8kti97aQSyfMoorrDAE6LQUtQTV8NkiHdWJZ2w8ehcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jtwxq/Of; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jtwxq/Of"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CA4C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765133573;
	bh=ww/YPNIIByFhBW3HvAAPgekOKf4C231Zd0kge1xY/Zc=;
	h=To:Subject:From:Date:From;
	b=Jtwxq/Of6wM+Bri9AZwRNUz84DrspIrACo74eqANglDuzUGKYZSVFXRe0hjr9ZCwW
	 kt0LVVkqwZ6aBc9GkRBH6kpNqVmB2u6slOKay4KnYqLkxJGQeuq2anDwm8UpreDW3c
	 KHE/iNHO0AcQkzPfqdGAC2aZLt0f7ECauv1aBIo5apwBzQwQWYrIW22BQUH1JBpQPh
	 hUaooag5DyYWdvm+pk0ivCXT0doogvB3eBdYYA4WNBssQpGHvZjffH23lgsW0NG19N
	 ZcQAqj7IksjMQ/yI95fR/wWUPSwV1Rwa/Bz7eL7lFkXhh+g0jlT1eRTaOFpBMXwi4B
	 SlcqumW7lxQVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E61D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513357358.22040.17701695541169574262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6619083d0d44986fb62b7c520f40ece65c34eba0aa8dd6f6edd31abb694b9232
Date: Sun, 07 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765133573
