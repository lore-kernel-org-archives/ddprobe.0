Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6428D13AA41
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718705963; cv=none; b=u8/cPKuR1+AeAYMLzJUB07Nqvk2jpk6It/IlO0m3UNtbcHBlc9S0T6Ju9PiIAYeL/OcXVlvOmvLWpQJXJgTmzh67GzHWu3hucjfbaNiXu35iFFLd0fJhWCs2ZXEzPNZFmxJBpdtvZeiafhsIcL+5OL9ySZs3L2LQa6hX0yBCO00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718705963; c=relaxed/simple;
	bh=lDoaaPMAvGmqtqcfCDoZJhT1AVFQjLyjSwcNK6RHRlU=;
	h=To:Subject:From:Message-Id:Date; b=NnQ6rnGBZ819s2myEVceJ1N8/5PIUx5JOrDn7CQZfHHMGSW28rHJjfrHWB12ScQd/kiRlIhoFCzachZ+9ZCwqzS0bRcYuSyaBoS7FQGz77ClvSGygF6VE9+7nIWQIaofMkkCGRt0tUAlgnq05/fjnEu4W2FX9svp5vARLhglUUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsQUt3uK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsQUt3uK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE9FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718705962;
	bh=lDoaaPMAvGmqtqcfCDoZJhT1AVFQjLyjSwcNK6RHRlU=;
	h=To:Subject:From:Date:From;
	b=BsQUt3uKA54Fgvy/1RM0KRUWJAPLru9lBxdDgiAFR+ZROXzSEG7lbEoPHfWfo1Uly
	 tBJ5ejjHQcjSaqU/8iBNlSBD6q1eaC56JXex8g1k8KCpKA4CxT+AvW4Ii8BGW14vsS
	 Sl9q6I98rTedE/9DpOpFhc7vvP3YfnrF3kKm81CezbXRuOa3bUWgkm9SslfAKQkxQI
	 rCW7ZgBcW6l+FLOhlmLnWlj//wA5jVw4vnFejiShnhhDVUgblfaOWx8lKpNCIwbkOk
	 vSSEh6lFRwZvNO3KRxPv1OLC9FDi4WumOse2r4sRI006UZVGN/wi1PGmODG7Ge4t74
	 rAlrE5imelyqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6ED1C2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870596280.1283.3907604193234770750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f35be3bc3de528c6a28e090f8fff2b33631cf4d7b9a0486d2409f5c701fd2cfe
Date: Tue, 18 Jun 2024 10:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718705962
