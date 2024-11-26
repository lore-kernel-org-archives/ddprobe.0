Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8B7160884
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732658154; cv=none; b=KtquYq+KG7PfSuEIa9vykEovmqzOMLP3bWw5wNjMBlcEvnt3vFY+0hjFqOj33b20iEx8ZT+6SlyyYpezXmVw5TOTRDmWatInO0JTUIW3pkZB06gUbSji6V/BW8ef6xTbiK+KQ0RdzJV/qqEKyO09/t7gYR+5GpyC7ZoQfxvIW6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732658154; c=relaxed/simple;
	bh=/MqQxLzCqiC3VF90QcgdqV55KZ6zFqOTi9Rlp0wWi1Y=;
	h=To:Subject:From:Message-Id:Date; b=bALf+A62cumHtvEoodRlEQlu3PcGOkF9wka07oOaxiLyOH9wg4zHRWn8cmogxukapaiStqYgsOi8ufrabj6RhlMT0Lpe9Wx+6F2K9QVvv9V8tVO9inxaS5uNWvA2/3OPbsi2VBsyCWMf96q+HDT/vs+2s3Sfnjn4duUjDkqwO9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGiL99BH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGiL99BH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF615C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732658153;
	bh=/MqQxLzCqiC3VF90QcgdqV55KZ6zFqOTi9Rlp0wWi1Y=;
	h=To:Subject:From:Date:From;
	b=gGiL99BH3enFNwZJAyNP/R0SylI6mqILq3G/8WBEks/4Jwr5CdDeHcVNokjIQd6vH
	 TF+qP5cA4m7qbX7nNBvkKG5IY2Sw0FQXpzzwg3OUqRCNCgCi8y2fpl1I/pwF1xxRh1
	 +bVWcTIHw3naOCNa6UPAqXpV8aXvoXvLKSZX/urohxMH+UNRV7DH0MTufCy4RqdpSf
	 pxs7LWI1jLXV6v/7w3IR0hwoLcmLyI7K04zx/LO4r+1c4vaGyl86J317KEC11JV3mX
	 vbk5BluUoivNy4cPmmErnlN4ysbPQPrTamkuMyoILLYg8JwSVx7Xh7NvDyH7laovdH
	 S50XDyZjfXJsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11D8D3B9BD
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173265815362.4405.7039916210414255533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a953a1cf06f4be099efe8c370f745f8c81d851f4c4aba656b519773b1387f5
Date: Tue, 26 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732658153
