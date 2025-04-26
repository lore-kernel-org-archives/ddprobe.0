Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BAA522A
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745673594; cv=none; b=pBEAgsyU1qNqcGUhD63B1NplWrDSHcNu1s7cakAPbv14jRUOA/6jIxCQ+SJKuMrIDSsFxuCFFiAd86RKZrqChjL79Ki3kZADzg7I1C4nXijJvEKUMKngRqPwT9hIWa8KSI3ZqY09sIRO90E1S7lsY3Lovfhgq1NeoBVpX8HWmTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745673594; c=relaxed/simple;
	bh=EuFPBaBdO3bo4KoMtLbASlMDKaZ3uQ5EC1+eUTgIwI4=;
	h=To:Subject:From:Message-Id:Date; b=A3GE4t4xyVNzE3NlqW9VtneZAr3edcvEV/dyCusO05ulRWq3NgH/0f2BOyfJ8JH4dnHxKSgbRsfgZCxS4cJp/wz7c+1wraiIA7Y4kg7yX2gjAhcT+xpHXPoyRWqyZPQLH3QpXxrY9rUinCy6XHSj0aLH0SGJaqhOEtXjI7mzfT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/hWazvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/hWazvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFC2C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745673593;
	bh=EuFPBaBdO3bo4KoMtLbASlMDKaZ3uQ5EC1+eUTgIwI4=;
	h=To:Subject:From:Date:From;
	b=d/hWazvRp2IFkbebZ3C6bZFRkoAjWJ4pBl8tzMFPdZOXqumiQ7+x5bcvrtoKBngcg
	 MpNIr6n9lKRsoDO4lA1eit1kNxxfy61+S35TC9Ll2D6Et9htiPtoaGGYNJlSKwMK6d
	 Gm4V+qcJzB2UbHgYIX0YxJoybdHq0mQ/ghpg9uWJHZospPyl2QpjV2gvKoBFk4aQCh
	 NYqlbmry7pdtdeggxjZLxTgm+n5NpbgPopC6QZW5xMoBqWqdJC09G2Ev6YuCrZNRCe
	 +3k/6Gk75/ki38bwn/oGyaqTwrogRYr1xYSJKHCMdwEWXX3q9eBUSTe7v0BaHNPD/0
	 9WWDE/+tBfH2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E561C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567359357.12626.18101156535424443951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8346e38bd7aae03c2585cef71b16eb6ba8e5001338345987f8e95189d0299133
Date: Sat, 26 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745673593
