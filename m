Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18389C152
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722390954; cv=none; b=oC7f+CM49WzLBl+11Ur4qxvtWiQNO2uhBXxHN6rlv8FQjWtpghzg8Bn6YpMpLPTBwrkXONKmHbk8MCFFfco8djO03gV88r1yKfGVz4HtG0Tb67Vo7akHToCyr2pVRqeKfDq6csEJPrSziRHEph3Bn1QkgOgd6ZDc7NUM7RQnt4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722390954; c=relaxed/simple;
	bh=2vySCyT9ti5QYIitxCWVxO9xPEJTP9dUsa5tXUGebmg=;
	h=To:Subject:From:Message-Id:Date; b=BxjohxvZXYxbyJOg1cigjv5iHA9Jkhtw9ZjmWfgTqNHcbpq4Veeh+bgBjZ2VeEeH7F13HjcGWqWwyxgoFCcKctAKJ1Zc/OeJ7BolvbMXbRvuF9ArcNdsloqDLziLu5JEMbL0iKvKYRjG71ByTC3H3ABQegcapVK38uTe/Io1SHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjWu04OZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjWu04OZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A168EC32782
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722390953;
	bh=2vySCyT9ti5QYIitxCWVxO9xPEJTP9dUsa5tXUGebmg=;
	h=To:Subject:From:Date:From;
	b=SjWu04OZ97ui7MAFLokjkQ01FBv5wTXhz/B+9J/sLc2zsAfdFjWFbyu1idcl4NSX3
	 IN0dGlbt+bEo3BKuu30TMlm5fTkCMoWsbcC04d3jgl99Vf9aYv7zuTvEFC9NYPB3Ai
	 GhtNEpLOchqp8R8wGin1hiI7toah6gH/4C1HkmlssmV5g1dMIHsdTU3qXKovVKoWUT
	 aHwBZoGQkohFwiHFV3SCd6mT2crUTp/nV38Y+RxyEeoLJnRMQwdw3ifItD7tjQRZvF
	 ZJkLatTiDH6R2dJ4ijsxbJlw+2uJEhlOrxF1WBsWwFJxtSK1d1xXqeB/OQKngcOQvU
	 QiodoZ6McpgXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C67C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172239095359.816.15022307767245273017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3442db898da080db1407b611f7e22800651984f8a689ace51349670923be27b3
Date: Wed, 31 Jul 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722390953
