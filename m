Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37B212C527
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711037897; cv=none; b=uS6M3CNjCk9fG4aypUxpyQYfUK+niJsJQXrwtDOXRvdD4hoaihFlh9xRrfJZHI2NihvEAzIoKluDBiAWSBrPvho7nvpMJq5JVCLVn9VsmH2UXfmzXOnIC/gmlhSarmoEOILDx9KJ4utUO0FinvwdqIh6Qc7kVMBI0zW347GKI+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711037897; c=relaxed/simple;
	bh=YXaBq+vXRF+zUdNhiRlcA9vD5tWHak+4Ptb6lhqTstc=;
	h=To:Subject:From:Message-Id:Date; b=dz5GGfs1S1TiA3vkN7tbG2aFlIzAM9VfRt/ainOKFp/PY2S4gSSk9vRTxGxm7IM8H/5P89c1IX8Us7vXuGMddJzTxRW4/qiT5rTKwRJvdkxixl9ULraIRcL5He3Q+P0+FIGzkKK/yycLhpZkeuT8VIioXIQWG1II9izL5Ehlm5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVxWJ4ox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVxWJ4ox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D9E0C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711037896;
	bh=YXaBq+vXRF+zUdNhiRlcA9vD5tWHak+4Ptb6lhqTstc=;
	h=To:Subject:From:Date:From;
	b=LVxWJ4oxJl+Guw4MwD+sMAmPVADNR1gotVbSwFiTcIyAGerNYr/kgbhT5M18q5mj3
	 FMuu9McTIn0VQIektMAzTMBwKkYZHqHiUFgkTBD4JVKsblxqwTqbu4aa6DIuCLK0qY
	 BgjJwOHoZpHZyT9n6+gcVQDg0D2COVFTF0+iDAQvUN1iD67WVbuOnLqermxi2OAxIm
	 dK5oWaLZcqyBU4byzKvxncf0xNlsRfS/txKYw+XWlhjIG70AcwXu7+PU4QPv/38OWH
	 htRMmtzg+1k67jnOAI438c6Nj+SZzU8qdOM0A4qj4W0QtLcHLJRMvG571tWT9nrEjO
	 qxvOrQ0WbE35A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F48EC54E58
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171103789638.4079.12373300420860530590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db48dc1865ae7c34081503332fe593ac5e8b160e826d94d9bbe26f6e7a4a103a
Date: Thu, 21 Mar 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711037896
