Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195A92E8B81
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765852974; cv=none; b=JN0dpe+hmcu96Yg/3CGm7moo+EUrxY/QSKrfKE89E2d9WCuud0VKdYVRilRqDP8NqeElV6QHjLPw5TVAKbAVJOUD4RMtbWU4vwl60RtQjOVkX9xlZK8YY7lYY5jtGIIOtKOE8K2f6GS1zD+iDtXRkY2GM2grVWdVRB1vAf1DDk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765852974; c=relaxed/simple;
	bh=czedu6QnHXLg63wC27V97eZJeRQNe8K2B+EZZMI3P0Y=;
	h=To:Subject:From:Message-Id:Date; b=TUu8hbXHsnljl/lZHmIKmtvTuyH14zsS9OZtXb0Pjj3FOi0qOhNuTcfp7i5YqaAjPjkN8sNCoKCsZMJDqbu5+dbpvdJFFb9uvvQFFn2aGe2rVig2fni/dZfJnxqkseWkjI+7VylOQo9THOnfJH8B/S/9sOknFATra8Y2OfYJPzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecQcVeFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecQcVeFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04FAC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765852973;
	bh=czedu6QnHXLg63wC27V97eZJeRQNe8K2B+EZZMI3P0Y=;
	h=To:Subject:From:Date:From;
	b=ecQcVeFCgp34yXYEXYhf3FrOefFCvKzS5QuK3IU7yU8Umb6DXdImnD2it6zlGtxhZ
	 KhW1jvk84Ti3yOgdKTc4Ko2GdpWhEwMon1bsv7FZXLXNitNUCw/SvmX4dOM9RPcrUt
	 DFWqEXMkZkVof2mUcPpZQpMTALA3JqnNVUo5dTmT5/JJaXyqZVjNl54X1jV5v2dHaV
	 ydHTDdXwvCcMoo5W4UdOcPdBf3pYIax3gH75AKrY1zPWKoYCskq97WaDhzZzSm9ZSt
	 ofm30tfXk+4X7RfIhai5XV+R5V+M0ZwVL+tGeOiY/uxy/QI44QoVROFH82ei2jGvPO
	 M4+GpQtK/DXQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B65D5C0C1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585297358.26132.7304653155504975295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c128e5c82247a45721c2116fe2803f0900b4d7b5e883966ef4bf1dfdd94a023
Date: Tue, 16 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765852973
