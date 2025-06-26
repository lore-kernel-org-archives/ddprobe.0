Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E37A22F74A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750951794; cv=none; b=kffnUPPzb4gWYc6e1a5MugEaM1wVcyK2marQ7WEQ4Gq8b75k2TpGy5Dm7TeEb1OYgq6j0QnK7JH52jELR3yKxIc4/2m34mHp4i0q9/CCERez8BiOk1S5Fbw4LEctZr5+gT8CmnfLx6kp+gDCXpiELEHIz7kfiQ+ywRFaEdj7KGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750951794; c=relaxed/simple;
	bh=5/P4Q5oK91tJa96SvXs3NqVyPW4nBKdR5rvZMI9Y+60=;
	h=To:Subject:From:Message-Id:Date; b=SVbFMhLPy59fAa2N1TVACvM99jQIguvEvAKcbObbXgwfGfPLx1sRk5sUaIXdT1gRwIiSdRhYiSZiu2NIBVghBvTAFEvcNmBLozn89JVXC+geKNc47GADhubmB/6rppiLdzDcR6xUW4TmTg9hXofb3YcDtx9X9ikVENgPX8p/fFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0G2TZst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0G2TZst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C979CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750951793;
	bh=5/P4Q5oK91tJa96SvXs3NqVyPW4nBKdR5rvZMI9Y+60=;
	h=To:Subject:From:Date:From;
	b=Y0G2TZsts3qCvAWc07DiboHZzl7acO2blhxbBj5vhJLwRKaOKOnFZ7OOE4MKILgut
	 pM7i3a8Gpfo3TmO///9uhDw2UHY515y5yWZDn1LI/Oe2daOXQKA1UFR9xxW3uNKQhN
	 nXfhUZ3lQPJsQAEA1CXcK3evH/3fhLUXBJnG/WXyUXRc1eJFJ/SfSViptiJ+FhSGm0
	 exdc0GJEIf5umhyPXTmIfSkwSe1J7L+7fATnzk5DUciWPi+n5bqpZ4ZrfGw+IsefXf
	 tV0/085MyW2jzF45WElHxMHNvHazk06j/N5YtWymqdGSkZ0UM9rtxtZoXKbFkOy86n
	 hIJDVMcXy1DDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E45C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095179366.27926.9048049110273887006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7237f83f8225ac6cb619aa9fe919b29e0d0fe74e737b9ab604415f9f1adab942
Date: Thu, 26 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750951793
