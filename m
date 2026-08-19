Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5482E3E16A9
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787125234; cv=none; b=gl8SVP+U+WRmwvoZR+Mj4gG11ibOyT8rLqRik5loEKQWk7G/A7UZiS31lfqVj5YbtTzuImkfTrmFV0vXXpRSb5oKaDsQ2Y9PLMb8OEjk++LDCc1+l/s65JI503GuInJJLZo5OBsyqAIuCm3GcyAcef9rdySYRauKxHhJI4Rzi/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787125234; c=relaxed/simple;
	bh=EuuY4KRXVQE/D1vRP1Owkwg2AMpGOdZGpKDjj3fhSRk=;
	h=To:Subject:From:Message-Id:Date; b=EgPvkEuqd90W+oVLZEHlRA6Sq6OESksP9F3evi+0NPy6+5YYkt2I8g2Q0eoUCkp7l3lpJyHgRmNppPAKN7nRdGGicfQww7k1a+Tf/ZsKjhj/b+tMm27kLfqpY8uAK8rCnnhLR1I1pxFKlRjjtxSBbbYRGumAR2FV9omirC59K60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4MhLdrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4MhLdrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF282C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787125233;
	bh=EuuY4KRXVQE/D1vRP1Owkwg2AMpGOdZGpKDjj3fhSRk=;
	h=To:Subject:From:Date:From;
	b=L4MhLdrgiHqk55v0VyBZTKejXHJHbkC2iSxY2U1NSBI20zIW66AshI8ylM8NQWMF9
	 Np/w/QZXIoQIkzzE1xLhIfsvClJN344lWWgQfdVfA10upeAhHCprDL8zVs1bE3w0w6
	 AN7IW5b70qR2ngVDUrcKY0yHhjQDM5a60IXfulhgftyZfa4pAZtXthZ38WyuotXuI1
	 jm6HUN89eFvhqLCLCb7Dxko0lHQn7+wR/V7kI/0JshQeMFKY4hkJOUQ+ZkvyLXhN7G
	 FF+YBH6lPosxs6G8bgoChmo4PrcgBAR9iIBy7rByf02nDHtEpqz1TUcLHMfWhaOKXb
	 /Rx3AY2eNVm1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3D4C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712523376.8539.10190833549433858204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7423654ed66220b63e092f25aa031f0e20f33c5faef8f3d559208ef6587f1a87
Date: Wed, 19 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787125233
