Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2727E284B35
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755223794; cv=none; b=Fp6etA6QAzG3vz082UtaNccL2kh/C6Ow/RPKfC9d07wnHFKKZvLmvT14/usRUkywx0fLAG5+l03QZ0sA+AYoCI6cKxUS0ktfTeOREe0w2WnZJACZXoNMRuL2HxqR357OrzYVWXJ1pnzfPz41pSEwJ/hrruNH+6RIEqEBWlB8L14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755223794; c=relaxed/simple;
	bh=rNK7sOu3Qenj+Pz49kb1bS0pEh/Hyx8V7ia7SFi1Grg=;
	h=To:Subject:From:Message-Id:Date; b=sp2eDMexsUYVizmEUMSD89bVOr4BMnh67wb9hgnn6e46Jm0Vhtl5AAr0TpVR3zz6s6lyVv73b9eOzOudOt7/OJbx2ayALf8j3ujYDK9lLr3YAJ9u7vuiOw+gKG0Gww7Vw6cxLLIK7lTvKvS4M/+xVGWmxH43Mo73fPG5IciLC48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2vGplkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2vGplkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA18C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755223793;
	bh=rNK7sOu3Qenj+Pz49kb1bS0pEh/Hyx8V7ia7SFi1Grg=;
	h=To:Subject:From:Date:From;
	b=h2vGplkTlmO+mRrJkQA0xZHT9jLM17DA5HRgDBBJBbQMo8lKK04dbrFZXojHqGmbO
	 0Ern+uXp+mEbyioCOY+oKc3aGBS54solOIsyUgc4T3R4wiYT0bMgZKHokLtX36M2Z0
	 ez7Grxhl4mohfTShg8vkiaikoI2fNl2lWScb1L54ImUuRNs3jrh9beizWVtgWoqoNF
	 h7jEI1MQeIqJTdFsu4GDP3jgtY3VmEkCwAlOGhbnqxgo5K3t3efM8BTBljB/StJUo0
	 1G1gsPqwgVM7GWZEZ84iGNh29VFcVDV7wivEtuxgdzGLpxydhOwikFfG5+dD+D32nX
	 3XyYHnYUVOMAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F01FCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522379357.8515.17116207187050201061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9ff2c93b55bda8aefab69ac53753d18bb33fabe5af51c6a9bbcae6a98b0928
Date: Fri, 15 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755223793
