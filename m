Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417C270837
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730813154; cv=none; b=AQPVDFUF1AoECzKprJ+YMz2YhmE298URi6enXcTBBHW6BTkN05S58kN4YQUV3zAcYk1kzX4Mcgh25LA0nMo5YCKBqQag+djFOF5D0+g+V782DtatfYm+dYQUBt1EuEMomfRu4FC2u0vhQvjH3I6FAWct8tgDXQYixPNNj0UmWqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730813154; c=relaxed/simple;
	bh=rfxQ3X7Pq6yvNCfwsgLGQs7TQ8RN846Ia1cDLql19m8=;
	h=To:Subject:From:Message-Id:Date; b=ClpdHpZBALe3+vmeNEeKKgh4mRjp6fa+2cMcMrF08aDXPalL1lqSXvCXLhiXnL0gc1PAQoPKpeaF+QEgCsslysFTrjL2vUydSQ5TpdV7vrYIy/igOHZwFp0GzqrXOVOwfLVjNOc+NBHl7TYVIY9DaTDARyw42908MLLVapCsl/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQlUy/1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQlUy/1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3200C4CED0
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730813153;
	bh=rfxQ3X7Pq6yvNCfwsgLGQs7TQ8RN846Ia1cDLql19m8=;
	h=To:Subject:From:Date:From;
	b=lQlUy/1JfEMbA3EitQ4xu8Asy9knB2+Dg3o1aiYfGaDQLnB3pWLT2D7jyRuHnRDoi
	 78KfKr41084zWd9DUNXXMeJWjtaltcdmCrSgU+f4mlnQ/emlfIQoV+Woz0LfFDxpHi
	 5kAKXE5a/zy1HxIrRS1q5vqVMgPWmoADO9CDAkkLpaO9DSzx0Ikq4iaHMHHtVBQNvB
	 X9WtUMwdkOG9DjGaW4socA8FuJ7VT66Jds2OJwv9DutgZH3qvEOzJGjtklKUm7Hk7a
	 yI8NXAtLbsbAJygtgEKa5fggH7tFaMGoJ1VcGUh43EjSkRGr4fQxP0WC+hm3FhIJuH
	 WuQVn8146IQqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A835FD2B926
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173081315367.19491.3015660738283283490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf79c8ab7769d3e5a009722fa3bcb28687555ba6c59f5d17b13d2e856d6541d
Date: Tue, 05 Nov 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730813153
