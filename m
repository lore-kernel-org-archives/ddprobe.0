Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E438B36B04B
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774645494; cv=none; b=RL4weqTIgJoQRbJaZsccZ+LFiCv7mQ0WQ8MX7pkIQyul49sDGbpAXY+iqyMeDlYYMbnc+HELfdeNpsYT2Zwy0iLssD4Gukx3c4zMw55ntmUe72cK/SNUqwGG0QzF5H6VwnkIz+J7J7daCNTIrJuDm/KSlxHojuqlEFP0o4T4+bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774645494; c=relaxed/simple;
	bh=vtLCnoegtLvGGhGb2acdfjQjyFZrXznl6CGP8dtF+GU=;
	h=To:Subject:From:Message-Id:Date; b=BUZFANoybPtyJbV4wRdqZnuZ/JRcsULOSy0mu09Kko9ojjTm/m/oIXD/hJE2NauDR1A4yjRBvuhgjnxKk4HyDCE21cTtUHi+VUbuLDppkowfHFJWO5bICe6sYtbyZ+0hZPCGq4vfHWl6EszAKLl0LNqBErfx/52DyP/Z3jlwSzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EocOXyD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EocOXyD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF25C2BC86
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774645493;
	bh=vtLCnoegtLvGGhGb2acdfjQjyFZrXznl6CGP8dtF+GU=;
	h=To:Subject:From:Date:From;
	b=EocOXyD+EDkJ7pJo2odcgAe/eofK8kvDfZfj0ChkmUofuKQQhBZ0vewMljTQ6OhF4
	 KBmWc78Wvfe9LVDaVl9rXEHowsu/JWKRLD0w1xwwaV0YZL15jqoko/aoP2YXa/5my1
	 T4Ugzz8LN11CcakvVdA9voDKFHt5VNQ1juUN8TzKcWC3qfvR8qoG+BbZRPF7XAbihv
	 CcErF+rDcw82VXU/N9ydMDQOhdGzABfuoXhv9E5PzdTLoiCqUTxWiJOM0BBPmnSq0b
	 Vxd8mFxcK0/m4Qyk1SO+Cw5auttDUJat7IjW41bCvXfSHKSTajFK3OSFprBOun/Xix
	 wQtUJzDVtBwmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4E210F286F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464549367.11928.6475878768252387745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b8f62816985a2f594f570757adbb1475b0cef3625ce1e93fd6a4898a431cb36
Date: Fri, 27 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774645493
