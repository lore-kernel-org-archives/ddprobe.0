Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFF8944E
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742177994; cv=none; b=HkeG6OquxbyPEh7qcrKatPFUmcCol246lldnVED/Hxtj/t3+tiiAQpAzrIzCLnsxwk1WK3QqUM1CA+GdT8lR/HE6K0NBiNQ+ln3vNPhLwsmzPP7XyW01w/wg0OomPdVcXkaaxfcOOLAEN4AoLAEKQJyOXpCFMEGArKZa9RWzM9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742177994; c=relaxed/simple;
	bh=GW+jE9k/wgjBDHayrfGHtz7kALHBQpRuyhI+6FjqjQc=;
	h=To:Subject:From:Message-Id:Date; b=BxzF90/nehRfjeCq4ss7aOr+va1sO/BVTDKBNZy7GY7LTrJhrTAeZghjXjeZrKXQ4aaUIgbN4RASXo8EN4R5cTTsVWlZgJoFULFV1enshe3h1xZ9QOlXNc9aVYY0/vS+B8JkC8fWxBrApP3Xp8l0leQ+c4iJGDzhr4xqrdd/6Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfdyLPoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfdyLPoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16A5C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742177993;
	bh=GW+jE9k/wgjBDHayrfGHtz7kALHBQpRuyhI+6FjqjQc=;
	h=To:Subject:From:Date:From;
	b=qfdyLPoQDi2SiBHQbTMBo+k9ubtRz1d59UiF709elFxCJuM3V1WNUUNmjXS4aLY2J
	 1JBYvfsmVmiz6dTDzzMTBcbQhNHMiQzte/usCkVEp7kDntLVxQOwH2K06uTaOmmC/7
	 Xm5z5AqlCjUqlVn3EDDK07gREHMOSZ7C25EuDe5vupjbly3OmPZfjczG2H49fYGxH2
	 0Fjk/KE90356tqO9GxuyNVWKPh78w+svOc54LtN4EPc7gZ+C7oWrmsLfcTslwJqgsU
	 yfsH7LTGBlGfs7ozONY5B/+gOGlAZYBHzXoOCRy/7aWbOajI6CNLyEKNCUVa89wnH4
	 TIAhuUGAiwrQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F914C28B2F
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174217799364.4942.5097365760403017236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df60d17aa97d520fb3ca1f3de5051872d16c34caa7f924e57219160a794f3b04
Date: Mon, 17 Mar 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742177993
