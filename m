Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BD834405C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776550054; cv=none; b=RGKSMtZ71vD7rZjMi1JOupl5fhsG7sPH2fcB0r7+WjSqjxOEqBjb8u/8kI15buz8b9o5loetwEdooLkfcGxosX6j5NTGKCxRxmGG+7KBIrT/5Q3F+pbYSxZxAPiXisD9BUKFML7IDvNBeP5PohsakgdRHs6Tl8ZElwpbtqPJBu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776550054; c=relaxed/simple;
	bh=OCv9GQp20nZ8IVz2fgfzMLMZVihj2tIJVU1GFak0cMw=;
	h=To:Subject:From:Message-Id:Date; b=ZRwq0jkeMS1ppH5GcfYm9HMjPcONJ4RL0sus1INF/BrisJqNJeWsUXVHv8b7fp6WKXOH3+saLGHFIxMI2O281ywDts5jQQ3IhA4W+hG+fjPDtDdApqJ86HjEX/Odxi2mtGJqYf7jCq2YfHrGWq0NY952inm6Mism7OM8tIALqug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ie7W5/j7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ie7W5/j7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BEDC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776550053;
	bh=OCv9GQp20nZ8IVz2fgfzMLMZVihj2tIJVU1GFak0cMw=;
	h=To:Subject:From:Date:From;
	b=ie7W5/j7KkpUOQ4esGAgCwpa+vZxNjaj8NZT4yDK3kQtkayT9vI1xA3/nUeExotNs
	 Ogx1KGoYl7IS/3S31baTvftOL6rtBd7aiLAku+7/KZrh3T325GelE7fjMqMlfPYv3K
	 fDduJ4cMNW8FNEkvtaw2a5DZk+Fz7Vsezu3h74A6jEDpLdzgCPoGsica08JdBsOd6H
	 UU4OhYhnuvMQ6YEib2tZd9ecAnbKPHa40K9h8OjAwWH2grlIJBJebOh7428t0dM8Db
	 fW3+sdGQfZOkNXqmQkK+NcnY1aNeGqWfWDmAgozTtdS/VAiziAHbILoQU2ZAQyxRin
	 3/f6kmHr7C+Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE6BF99C98
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655005368.21718.16073579504506804735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b0043006de34a0a605ef95ae79dd89b26103b0b2ccb920ce6eb66c29739213
Date: Sat, 18 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776550053
