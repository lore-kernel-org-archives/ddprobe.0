Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617943C454F
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790827834; cv=none; b=o7JSlJi1zUa3cfTmt+QzjqK25InYZjKENjWRlgt0wMLqrLpnVuI6ITOD2ia/mB+nVO0q3LJopoHNdLFxRIGiEjRAkUKTjMDoLqdo6W7RbIHGyDiKv2sGxwXiFKIsZ8/6WTP5dopi0aGigHxbHjVESA5FLjkvIfxnZyamOFO64OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790827834; c=relaxed/simple;
	bh=hMJ9gFb3zoe/9hVtVVoYhb7bt2fxQgHIJ9XsQKG4mJk=;
	h=To:Subject:From:Message-Id:Date; b=cnZdZDKRpPYkPOGvtThGcOBp1nomxHjYkhYTiGAcSf9KZEorrdTnyTzGIeauAR84giYNWTV8oGmy8MXg4cVgIYliUEVJgro3BFrrsDwoNCmGu2MQh5YDxCQlAnw9xp+4uN/GYwc7PATpepGOlwRtqEVBdGPY2itTM0CjvaVsA4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1BnhtXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1BnhtXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7206C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790827833;
	bh=hMJ9gFb3zoe/9hVtVVoYhb7bt2fxQgHIJ9XsQKG4mJk=;
	h=To:Subject:From:Date:From;
	b=V1BnhtXZujt0sCyWW5O0q/vrtwa27WGQ8TfTdg9yef7PnffurXNnBuWzs5R9U1YV8
	 JNNR55OwhiSUZ8NeWlFNsTZ1NH0LAzZXnMfoWiRq+/LIheqZhijO7/Wlu16J03H7oc
	 DpIaGoEOCcnugSlJYQh0kXPjIJa3s6iieOPQPwkLbijE6+pgS2rqnzS2sUiu8uYw4+
	 P+4oULjxCVbGFFSniKiLxVj1ZBxONfh7ONuLCIiSDxWW/MnKIxsKCuMGliEXNm0lry
	 fgiiOF0VglPpdEUD6+8KQUAS4vXMXzeZzU0l8fsrgw+CC3+agqj8BKA+chNdhlhLPH
	 och4QykTCdy3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06D4CA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082783368.4061.11563171077343140744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbead72d08d2b2aae3b62957302fa3bd6dd8104b4142339d29d31fd998d897f0
Date: Thu, 01 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790827833
