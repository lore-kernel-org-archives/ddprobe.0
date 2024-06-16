Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FBB186E47
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 08:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718528303; cv=none; b=Jo0j1xELhNBXDOWLMjApxMfCP2SAgc9FIbBvRBbOJkStiyiZiPjbCYApEJHs6cFlEj9psdUPh+dhUQFBdn2idvxQhzHbIrjcCtUq55/R7saBiiiYf6cPBhObe7S1aYbud3a92OvbjNQjPxGc+TlIATaa2j1a/fVdje+gXRE4dnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718528303; c=relaxed/simple;
	bh=KuuSeg0f8xq4Dz0WjAojiMfWCKhwSMMDvDmvR+JoV8Q=;
	h=To:Subject:From:Message-Id:Date; b=YCQTBoMXSjlUmBF34Kpe2diuwiEFSOCMliAimemKEKwKT52ayeQfT9Ps0uxZXiHfE49XtH/3zRD/ZJoAAvto0myZsdpmobskS5rOi++qek63JeEh3kkKqRXhR3xAUM2GCXhLkOEcFMV/PFDuFpusR4oM6jlAjI1JheojwlCPLDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/sIlv0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/sIlv0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F5BC4AF1C
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 08:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718528302;
	bh=KuuSeg0f8xq4Dz0WjAojiMfWCKhwSMMDvDmvR+JoV8Q=;
	h=To:Subject:From:Date:From;
	b=B/sIlv0kajmtCigqLfk2COQrwogwLyEFxa4A8Cv+L453artuyfEOqz7EuS/6Lo+na
	 Hy/GETYQcjuOD2JtQMH6TP5VkY7F++ufBolY/P9+nf26KxL/LrmXQsuS9r4deCWVPE
	 VbhsDP7WuU3WwTD6tAljLMzkQ+SYyXcmsQIIVk4k4Sl1WuPcojZKmnRfjBe/HOqxF2
	 7ZD22ydudys5FStyEymaeXc3gu8LVYWv87Kl9xP3xSJXwQjkx0Hgato4y9qvsRPzwr
	 5lYcfrgZuX/x09vi+llMpSHrfQkyi6JKkZo46E7DOiZ9aNYMbE/tAEc8ZNetW/e1PD
	 w4qCnyoSzaJew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32FFC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 08:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171852830278.23156.6482206941338341991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499e13200715359e64b0dc248f25f68b35dac488ce27bd5889406eed635fee16
Date: Sun, 16 Jun 2024 08:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718528302
