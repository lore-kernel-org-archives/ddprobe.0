Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E52E883F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778631034; cv=none; b=mmX3fZ+V9CGW23PENYBm51hl3GqDOWoVjbxj9bqrK89pkGHBtgPyc+q4SUN9FIgnEUlaVdWr9Uu/WsGvRIQ00DYul0Z+/2H1WIud7o50lMnlbrHoaxbwY3T16/DJjRy3k/7DLW6tRW5oQyDoofGBPSzUUa0dM1uL2yzvbXl/NDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778631034; c=relaxed/simple;
	bh=1KWZPxagDBURsGwBkCzdeU5bV+OLyzlFuSzp561Lz5c=;
	h=To:Subject:From:Message-Id:Date; b=mFqKhd3MacvGP6QmbpLKlzG6razw1IKo4fuMjPLYfTEv6eLLmQSrzCy+rglQk0tnO/9BkK2zAtNc+7D/1G0ZCCPocyad+B4GvVKLaJrSkX3GCtf6T1ot90/qgj1Ig9V9cDi9qZYCCwdH7pG3T+obMkdCxmUMUGgz3ZS6RcKXVRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvFlvjwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvFlvjwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6B9C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778631033;
	bh=1KWZPxagDBURsGwBkCzdeU5bV+OLyzlFuSzp561Lz5c=;
	h=To:Subject:From:Date:From;
	b=BvFlvjwWH2XG6E3YQJ/nbLmuP4gGOE8fyudapdy6BlhiL9xAbN4ZpvKF4IdWNpxEV
	 zjvj0DAA3otu/ZTUy8J6vfhyBMhJFc3E+K43To+eg59mmR/wYvXxrc4cfaXlhGBcG4
	 umbpXxy2gwxKAY8JyaWqT2cKdj/pRng+ILqAUEUkADViKs+mURidMHNF+BkzkwwVZo
	 UPQJxIRhea6JeQBbHg5r3LiGrb2Okyv2DhY86dDLC3reYsBLMn58Iqw/0bqzU2Hh/p
	 Nk+gS9f2bqo5IU6NQMAPE95RwU9rQtuG1QUrWZAw12OGkhjWB68ksJ81ToLKTUVRm6
	 oIbXQ6MIdsWSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB2BCD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863103369.31316.8900895244575589707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df3b6871d39480d65ea9845fc24f22f2622a60e8f7edd8b2b3c4c7bf3785043
Date: Wed, 13 May 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778631033
