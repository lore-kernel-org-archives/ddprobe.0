Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585B038FA3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743970794; cv=none; b=PwgOQjFQBWJbcjWoy/cs8y+3zHhsKNFr/2U0I7frKn+anmegCRL74iFRahgukfLQVDtqYffIZrScIK/UfrUX/Cya0icXw6i8D+RTILOCKLl0fXr/usX//xeYjTjnsD3m28LdrNN+1GJg23LqKDAJKUeFFcffInqKFay25/AgXo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743970794; c=relaxed/simple;
	bh=POauF0iTCgd1lsPNCwLMn7Y1kZzxqrzwefEkg5eZ3aA=;
	h=To:Subject:From:Message-Id:Date; b=pK8BGu+GWMQxn4CEssFKPRLKXCa3K1XNDzzYxfEz7hSCbKzXZDIuHuiooIg1WJ8cEHAyn+dT9IigoAVU+GDjrDYujIH3nDFaCXmcvDKLUGHYzq+uTZPWMCxHsdpIcMhAP6BurjmoERwFrB2I6yEDbHMWsSyPvvyyvp3YfZ0grFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+xkem5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+xkem5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD135C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743970793;
	bh=POauF0iTCgd1lsPNCwLMn7Y1kZzxqrzwefEkg5eZ3aA=;
	h=To:Subject:From:Date:From;
	b=A+xkem5rR6fJXO4JSPaRVVO/p0ixNjEcfxkp4DN4ROSds77FpP/QWhKPVhpb7pVKz
	 8eLMzx2GFNQGu4fXHLetIciCcslSQOU7VVdWj7y1mZpHmyAmnoccvEcMc3HCfcHcB6
	 aRcjQRvtlANWBnNWhYKL5vkKYDRStlpttmAaVeZbta7WmvgsH22pwC+nXKEs7DMPGz
	 76VbBqU4aPPG3mEUn3W2FuRi4kcozB+aka9gD3IhDveDheOmX6MP/oF2gA+LsvYm6w
	 gkTjOJNn+135OmCnn2xIF8XjwTqqPgkbANdbr+Ps/30wO2RKFNlf3GYcMr/mt5TyFh
	 cz2v2+hpJk6Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C9CC36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397079357.1797.5002460416989298093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2889f0fe5c473b476ce6562cfe64382a97328ad97ed69ba213deb0bfd7d029f0
Date: Sun, 06 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743970793
