Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41564348C7B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779294034; cv=none; b=BHZJw3Cb1z3/azDT0LjMVxU4OUPMUW9sCsfZEuIxGJirhXlJDWcpgSEqQz6rXvXeTd7G4UZyLOcshCftv+hULRzLq5G00Ujm8z23mcY4JuyZA+fAEnozHAvz/pl9IeKGeZwuY59Wma6iPB2ggpvY8G5kmrjE4ifA31Jb4HttB3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779294034; c=relaxed/simple;
	bh=igxBVndi+d/ls3VuK6jWhWPrvGoLX5nqT6I9yAIwCq0=;
	h=To:Subject:From:Message-Id:Date; b=kpqRaDCY/BwzcF6k1NZgoCaxyAHLLy4lxW6iuDrJthZUHhYKl9bxLacdUSKCQGdguxtgTp+nn9wajXK8I3sucs3obVUExx+7aMtDAMqVU6Ek+M2uplyFp6FMoZrTzqWtJVLBdflEkokM06ViJkWtGRf6FyuGGUaTO5/NVGvN5Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZXhpa48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZXhpa48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8634C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779294033;
	bh=igxBVndi+d/ls3VuK6jWhWPrvGoLX5nqT6I9yAIwCq0=;
	h=To:Subject:From:Date:From;
	b=KZXhpa48DaCBTJkRwqiQfo7sV51HHstSzeKUFtFmisthJx83EfEtQHYscQHDkc9Wg
	 lTpSKWJ5MU4VAucjkT0EcL4zCkoGlPyj3ivPQd6Scx+kCVw3TS0W+RM48PKawjiQTm
	 ovsgwbqjX9k3E0LMzko2jBu4QqAIMD/6s8ZVrZrhUORX4wD1S53VgSNAUhfUrmrZup
	 qyR61JSqd1+6SozqTibgZBjlJMF94+qrOTnutvQOhlEj87jEoPilCNufGdTTk1BYzw
	 13Fwlw4mzgiFyEF3q9ty9bGvzgTS4l2bmGiyIpXkIP1jfHsv7duDKY4GgxMjSLNEiV
	 JNmwhTc3MsIRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3B4CD5BAA
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929403375.16574.15701602420601556670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b4805cdd2a48804583131336dcf386edc7c3539a2ec98191e0b884578bfcab
Date: Wed, 20 May 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779294033
