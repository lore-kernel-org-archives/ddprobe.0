Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A40B4A00
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721789754; cv=none; b=nM5rg2x8wUh8diZ4FBDvD6unyTWLSBJZ4ahJCB3IxS51anDim0PBwPFtNfQiElklo7RZ+KjOXY37EXa7/9wyaV7WyOyXcpvZttumXEac3HbRNuDSVOH0wQkJGY/m5mwzi1uEAtPzUFRBO+b0FL720kACR13DD41kRqiGa1wtsW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721789754; c=relaxed/simple;
	bh=TAsLN4fqLKc01NVIwD5hPWwzWWo8XoV2khe3D8HAE34=;
	h=To:Subject:From:Message-Id:Date; b=JSM+e/LlGXiudN1P5fpbvDrrm9IRnP8xuJAPXRRg3/37TEt/hhA1k8mQ8yrOcy1Xb59kaPQ4uXsKWfIqmHvTokQ2JW/2eFvNOpZaPtcRACT3o2cqN+PU2MTv+V4AJmRpg1yBcFsjfyyIrfKcLnFqL+scg2+iHSGqOT7vhOJcR4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTL00jOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTL00jOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B31C4AF0A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721789753;
	bh=TAsLN4fqLKc01NVIwD5hPWwzWWo8XoV2khe3D8HAE34=;
	h=To:Subject:From:Date:From;
	b=lTL00jOj/UtURU+Srukdmv3XjPIy4mj11xpnmQVqroHXGiAW5OzkZ4O+Na44WXiGe
	 pBF9Dgp7wakaRNvemuET/ZEduxs0yx2SLj3WOV0YiUb/LkI1N6eAWKKPYN6cdftvT6
	 qXT4g84MbKCbfsfxTpWDZPlslkvxvmZzIsrVzrokyv+uq2CucMSfuvHQ6menWsAnwW
	 4Iz8wYGW4+PmrEf1dsuGbI6PCBqvhDzcqhq0sqXVc046GTBBNzry/zMRDbvC0PM63/
	 Icx0mb0NRUC8OOpYUur7+P+hSCApm3r3rk28wsJByAXtZ+9UNbpRgfstHb4feF4oou
	 WAa8DQFMOOoqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C675C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172178975361.23631.5150600948561539213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb15f16ba9c4a20c29d42362fdc6a7257daf97d3e5f9ec148f8ec1a223fc6af6
Date: Wed, 24 Jul 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721789753
