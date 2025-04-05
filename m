Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571C31863E
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743841794; cv=none; b=eJSUZIOV51sqq9GozbOrhjftny12EEL0fMUj3EwZmkmMTDaGrpv4vNlzf9tDWqPRqfVRE7vMNWRBZ5w8RRqWobgOS/VgVUjnWslPFWZPDZ2xJqcqLo3HD5jFR9BCOBsP40sU+E9vTtkF3Zy9roDQaEVowOzGDeCJiz7lu+Rve1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743841794; c=relaxed/simple;
	bh=7neQ76UiBcr628JVRvWUfVt4KOEWR140Kj2uruOSUS0=;
	h=To:Subject:From:Message-Id:Date; b=EHOPH3pOoiYXaqIWBwvh/m/hLuqB5oF2lU45Z38IhHmgXk35c/dNkedOMx2LcGs5VL9ssar3dKCxGugiF5PKLcVDA2cIEvCzgIXfcqL2O6gx8hOf4pWxx/77aH5LdS/fx40OC3mhC1aex70zjrsmb6KAwCVLJ82nKT+ok0D8NXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcE03sod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcE03sod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A3BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743841793;
	bh=7neQ76UiBcr628JVRvWUfVt4KOEWR140Kj2uruOSUS0=;
	h=To:Subject:From:Date:From;
	b=NcE03sodqgZnClDQtjHnag1YkfzPNLEhB29uK4t/7DDOTYGmORgBgtWwRmGREU9lb
	 4xpq6Yd44srpj/ps9PKxNbiKwh8FupmqOSQRN/RxfFkhP48ZefsW0/UuW1LFyI/YVT
	 6hzIYHsLt3XxN0q9cwoax8e/iNI5xHPYvGkHnHFxYjNf+jfglpFg3qpWq3Lhn2onn9
	 Z8Ivbj18c1BJGeEYC1U+g/2/E6yA1lomKaH3qmTg/kwdWipd//QS7jiRKdeDxKzgzj
	 cmVmfUdXTIlJvyTn05IxtFbmZ7QdNafj96SJLz4avt7j8LutrSRnbCi5XSqQDPYz4s
	 77SizusZgWMbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D47DC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384179362.12381.12079282987397734223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4eb7c4ee50755d1b38c8e3800431d4c3e5c14316a071d77392ba2e2e431556
Date: Sat, 05 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743841793
