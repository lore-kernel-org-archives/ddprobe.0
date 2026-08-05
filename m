Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D613377A88
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785956434; cv=none; b=bZsVt3RnFiCm4c4M4Mf5kVB1LbDQHgM1R+/9lCMWk0SZtHOHcToQXIuywtZvPbzrdsylMvgBUZPm0N1F5vB5XNsNqgpv6xjCw8UsEb4aTq7enZaP9qpbkR6tlNRF8URFqK/ctSFZugetGDulGS4HlkL+IEq0mH+95ZfTjIg4QyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785956434; c=relaxed/simple;
	bh=qJ4gnHQSaJLWXWnR6qANS2V3yYbS82Ivu4Jen9f+WAk=;
	h=To:Subject:From:Message-Id:Date; b=DiN2uqU0UrJaITVMCrxXu1KUh0KxGSKfOVz95sCRt/ToASWGxMR03ucMLk6wZ86sk8n+bQeIy+l6R8kMVNSwNLOTPVieQZm5aNnAkJBnPgwW+UClN5MxSYpnVqZizxkyg2ehoyWjfvwVyzhgAZI1DZtckT7dvmD7nJWOQaFI28c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=liKgYXwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liKgYXwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDABC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785956433;
	bh=qJ4gnHQSaJLWXWnR6qANS2V3yYbS82Ivu4Jen9f+WAk=;
	h=To:Subject:From:Date:From;
	b=liKgYXwO53tSK8b4oZGaFo2WgRv39YMqv/APlzwEIMBXThd4U7Vhqgv3GyIRKFpCx
	 VnVZ65UZHtIAbjt1otw3b2z4uLYWcBCk6J6IUX7Kk3HVM9X2O4x51eR2Q23R5x8bAx
	 PAEbkHETi/vNQTCaLFwGLGaGzITwO36rUC2osReOu/X+XHlqWILAcJD5Qvh9lX6aOU
	 hDjFpE+fmoIAxopDvHS7KgpznUUBHOFZAJInIQH8BmhzePSL2ZY5WO3oy0dEXbXHP+
	 4xFqt9YAyN50ClAItxfQs6n8lAiKfAAwYJaMBdd55X2JJ98/HX7xZphhGRyBfzfU4D
	 +ieJzx2bi8rrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA18AC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595643368.658.3942521524499478981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a8db2b240dac56bb8fbe58b76a0eb4e8e0e9206519df592c68455a02ed4fa9
Date: Wed, 05 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785956433
