Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FF62F22
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746359394; cv=none; b=Ey/Igb2kTkuclCpFwVVT8s9VJHUaMfqe7TkWymxNN7lTyKsvZjCzBcOE64Ge2ulF2uQvyBsY9LkX6vRiNGQXhUSqU81RuVeVx30mKq52+VRh52GB0+rM639XKHT5jQoCwZQ60uZG8MayWnllGaIcrsnoqFjFph/g84uy8MxncJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746359394; c=relaxed/simple;
	bh=umwLPYcVvQNLQlHAV6uKfeu68lV4Ef3UnZM50KAfnqU=;
	h=To:Subject:From:Message-Id:Date; b=Yiyj3qUGUKbmDBxZfn11plpebO6hUwdZlfB/p2fcYgWLW+r12MedpDbTY5DYym+oZ0SC0i/g5S/wazxjPPGdtfIlY06Oo8zi1bhl8uY1iJ7yZpC0BOffAcNUJe8zH6nXizeS2vUvCAsqI0EgwTZh1y/ZS9uLqECgSwHkmh8Pp+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQBipUH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQBipUH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64BCC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746359393;
	bh=umwLPYcVvQNLQlHAV6uKfeu68lV4Ef3UnZM50KAfnqU=;
	h=To:Subject:From:Date:From;
	b=NQBipUH12cOu9NmmSuDg4ggAUm1lcW/KUUWYf/MtOt6ZVGIxDhlgSKN6j1I/16MtJ
	 Xg7YWwSZpF5w0FU+IoB786xC1cn3qZ8hgF6jBegNhLH72lcZUdyNmYh2Z4MeC3AG2j
	 zKHIDncqRuk/YKbSozoWNhwVAbNMDQVaE+BlI/o917GCXGQK+GjY7fYkt+9VxG33ij
	 4ai7ZbaDv1ZyIMEjg/tFAT9+4kDjD/smAx5DeNS1C0z5J6CzgjwMDeZVA0ZCL8dNJk
	 cKt4LT15JhN2HZuOtrigjQqazyxp0Hs8dyWqXXOJ1nQhuaZ7ArQh1jifxQgiG9eS3v
	 tGgHai7SHtp5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D96C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635939357.14986.17760066270767530775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de65fb29503b979d43fb3eb4b800012c2f5d2b88fa4d9942d137d5ba95c5d2f5
Date: Sun, 04 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746359393
