Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD823232
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747361994; cv=none; b=mQEJt6AUyjBcE8bqmILCMLk2YZ92I3zTHxNHDFEku3g1pljan4CfwxF+ccStLYmMhfPHVX5Wl5/zDj556ZoQ06VBxoE5yUcIdQ5lwjL/PS2b96xOm6sI3E+r5ANVv7QcDDeqHWDGotcudMb8GkY7n51so4rag2ObPEPYoK8etPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747361994; c=relaxed/simple;
	bh=X4dDkJhAnTTUbWBo9m0UiZ4pVkFujHjikehebUrHGsg=;
	h=To:Subject:From:Message-Id:Date; b=lFqxE0PEfD8x2Gmf0kEGcbdwNVW1nCYg36WMZ0N5wH7EkIKG2GHxTKJEI4sYfUrxI/WGH2AhFwPcbdPi/XGDc217EWgZMoBhIfAhQuECYT7U7shgBuO0lUwtmqoO3TtLQX0ZXjLpWKESmjwlOfTvOPw8kwe45d8h2/FROq22vBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJ1vDDwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJ1vDDwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F96C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747361993;
	bh=X4dDkJhAnTTUbWBo9m0UiZ4pVkFujHjikehebUrHGsg=;
	h=To:Subject:From:Date:From;
	b=iJ1vDDwpqvCPK2rCdZWYtXonOxzp2h/UyNAL9kPdVZs3479jq9yCb61t6tnKeOKq3
	 EJ0a7n02kyDPKhZ9fqGQrBMgHOCiAOEeSTX6F/207kHBslhNDwTYZtyb3ehDOjqEkw
	 qfaAu/PilXRjcK8l7lKnM1NQ0jZOYg/HqaysCkWXiL/M6EQXGJlBTvBKKmUD0ymCLa
	 FkI9tGO45+Ve2aj6H9yIwIqYzrN7qIN1qKrh3oOyjLoGosmhKo02qd6l2evP2ukz5s
	 AYZWk2OOrivGSXW0CI1wpGGmAd5qM/0kI5CAPcoPW1VjxSaIuzgMLNXDV306BDWkp7
	 rixDunNlw4sdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92881C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736199358.30668.665640676535168680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b22f4a6e56a25b5c54f60b7c84b310fc26ba80d4cc557db85bc6ce6b3a33223
Date: Fri, 16 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747361993
