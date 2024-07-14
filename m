Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8D721A0B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720959623; cv=none; b=VK9ChkVf4mcocJGMK7Wc5QljAqyP8hFleYseRATrpDP7bnl+PqtHX7drvrCh/G+CPqsLMVf9rNqHNSMe/1mazpl2sq9c8tQjryKc9nLjzetywjOWzAP6ViqF9d/yueCdwevpWddUuvf45bJZYcTKNkXMMhxiahnWi2QKcW8Rdj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720959623; c=relaxed/simple;
	bh=OP67PMlIFqurkstVjxxhr0jv08iGmK+8UY/gDYPQS4g=;
	h=To:Subject:From:Message-Id:Date; b=qEOJjJjxhn7nlZ5DRfN4TxUstFXqKYLo8DEr3bOLtmTA2BSd6R9tw2NFsEzOuLz+xNBrcB9mJfAG7l8TUBe4IRWeO75Rt0hH/+6LDfLrfxcHu14/W9RELReU2bRVv/gSH2s+TC8iIc8VpBdPDOB3gYEi3wOBfHaTpkc8j5679EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvQL3rr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvQL3rr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AC6C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720959622;
	bh=OP67PMlIFqurkstVjxxhr0jv08iGmK+8UY/gDYPQS4g=;
	h=To:Subject:From:Date:From;
	b=uvQL3rr74h3E2DdJ9cIAGnFMUJHUwrrJbDeYO2dSo/ei7QUgGw1z83vFU+jLQwSXP
	 OYS1ePG4lDxz5O2syhg+0zGJWEzhNxwyfHfJpRPYMYoMTW7yTHOFBCqbIv7pgLo0zW
	 Px6QAt2LztBkMK54RegNbIJffmvDiza+KtwqArJwudkLP44DT19Du3Ke0VibATMQEu
	 R59ZNMqiC5im4WS/95EAEopw0qT5aT5EWF2ZoOEhboqeeEROF6O6R3pXkMQ8gWF14z
	 g2AkJBAakHHdekmzL9mzptr/qJpUe9jUxnGSFbzN9D2hWZ/0gohWlBAlQUReeCWdYI
	 HGYQLoyFsuNbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1674C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095962278.7276.11860631680610846590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3b2f3e98aa8d893a0f84e069e11e439d4a8afb093d3ac9aafe6364cb2d5b87
Date: Sun, 14 Jul 2024 12:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720959622
