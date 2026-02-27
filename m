Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5793A1D06
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772222094; cv=none; b=CIQo0cu3XAlMZK0y1UJpg/M+BVzc7QsPjm0nkMN9jCtZvwsCTpzMlzKfL+f3Wtr9Qr1+QIcq0cMAxzUZxPeX980v9l9RHByuYKIf7hcnG2UvH5uriEt2PVBgqi3+RZHl0ORM/dM2lDoBWhRHs0Cdb8D6rb9xRbCMEhjSiBktkAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772222094; c=relaxed/simple;
	bh=yf4yjdJllyxKzfgzo8+ckkROTw5BSwqM4l7WkB5Djig=;
	h=To:Subject:From:Message-Id:Date; b=ZbuoIvODpfoal1Okqx3weRXuskC9VerYSIY5T7y5nLn41spTrfnYhSZwJ+Oeux4f3/RLbZYDNW24VSvHDndIqz2CX3Mci/rqtGNOdLCYcka1N+pUjbPcF1ZxRBJQ5N0mzNvYoeY6/6DD23MIEBq8sIF9/XPrrFsL/YaYeNmd0hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeBxkeyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeBxkeyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39A7C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772222093;
	bh=yf4yjdJllyxKzfgzo8+ckkROTw5BSwqM4l7WkB5Djig=;
	h=To:Subject:From:Date:From;
	b=YeBxkeynLCZa+bi0YWBpAifZB5bVLg6k/ck9NNjI0RttAje/jwuHra/RT7Uoi/ork
	 2l9OPxKn9LvrBF0iEqPE/wGRR+3yWqS2ELkyKTICfCz7uWSweeSfSivKk4+5F9cAOT
	 qhCU75KJEbbz2mUIyMYNJDSnmv8ob5p2pdTjJ9jyvMBNAPtA8VjU25zu5uPwy7/BXU
	 GgLdBykiicmVRZGbKDOlnbF4t9Y1U+TVAYb1CRAEIAUV9wlISG1qBJN34Vc0xEFBVT
	 i2Djn4REVWb7R1+tgYkvuhmCz7c2NOLoFrM8gSShdOuToSO9wNKORBNwaDniy8E5TG
	 QLx/Otp8AvNsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D2FD9E3A
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222209358.15272.565339079341890359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16bd9d8937b429eb0f12458216653bcaec8410b681a214288ec03536dd4d64bc
Date: Fri, 27 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772222093
