Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD19199FAC
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752361795; cv=none; b=U/5dFFxs9xkCmIipyzvawTy/k4xEH/bqkqd/So7R+siqCgjY7LExJpROFuSlBor8XPtkXIweoTuGJ4oM+pQx0SwhLL8X2OgBI8UhlYalkm+Lgy/9iAy2JwV6ytmM0SrSHxACiMatN7sXkDHPD4V7sq6rlZiwu+36t6h7/Wh6duE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752361795; c=relaxed/simple;
	bh=JmOSMZ/lXdEv4ge4vsN+VqtDs+o5flv/c5GQEZrBrPA=;
	h=To:Subject:From:Message-Id:Date; b=dJJf8NZ6MoQjxua7j0lRsH5nMxWQGHPVvX3goF5pUWYnY9KfKX6NBU+qNupDeSO8XLuleM7JZCJ0bJXKEs6jMv7BeQK/1F4owgEpcydMbrG0lOgnfUhiHNgBOMvrjRHYCUKnhx7B5rKiBypwlxWmxponZhn+J8/OWebFErbxoe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAoHaCE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAoHaCE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A73C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752361793;
	bh=JmOSMZ/lXdEv4ge4vsN+VqtDs+o5flv/c5GQEZrBrPA=;
	h=To:Subject:From:Date:From;
	b=NAoHaCE7wOSKrkCsQ5OvLc3AmtQFrwe0V/8Sfe8tYmCIv1eBZGzaABE/xKr0cJ08B
	 0HnWkj7OOLI0AB44gMLYLDD9juMajVQMS9t0/DXiijK5lVyPiEKhEmnoq82vz8BKLQ
	 2ZqSpb8MGHF05qXO0Fb8DMJ3kREQCFIcdYAUOzqWTMuUiWY6tata7jrgQ7nQ+CIWEk
	 lhZofi2lL4j3jAA3dYYauNJNnAfn1KSXNIFeP5Be/Q2M9z7XcKX+m8vPhJdpYHfdyz
	 ShgqAm96EQSaE0jSxKTWRe/HPlIUOO6V2lq5UhEg8GajYvSxG87Nno1IzlAj5WVixk
	 UJAk2E7sSBoJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E1DC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236179357.30265.13080762943701127372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6272698130b5e21303daccb03867ff53dde7c52e3c281807d4d5506d960500a6
Date: Sat, 12 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752361793
