Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F36AF9DA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742395794; cv=none; b=ELyGg+SUXmbp/M48MJUIyGOni3Ka4icxAXpN2kWwdG4GcxoeGsSHBH+wqXVKbNURrzdiZsfev56AOiFIn4EUBxSoAIYjcEmX9bZVvYPxjlnERUwyt2c59p6tiPXJqGQRR0unJ/Jhv7z7CcrhrHEQ68mUEyWDZZUqf7hXcHEUd1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742395794; c=relaxed/simple;
	bh=cSLxqTSRgN+0tvXiU0IyUKhtx4q+ff70cwrlqM3afOA=;
	h=To:Subject:From:Message-Id:Date; b=T2hATojPYYLikqaaws08vxvJ9wQKDKpSOa5fxGu1QY+2iKwEj2phtMovGnlOppp06sdB4JELMe0oybadlcWx87GpEBWF79lMqX0JdXXAZ/LPENtpAztxhcHDHCqRqy5AABq6JcSmCpsaQ6SvNWSlX4c5EETuI9kfjjHBBLdANzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/Z7O4q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/Z7O4q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB7AC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742395793;
	bh=cSLxqTSRgN+0tvXiU0IyUKhtx4q+ff70cwrlqM3afOA=;
	h=To:Subject:From:Date:From;
	b=X/Z7O4q158ZZbuaCJ/Z5TpnxBwh2R14afT8CNgkiVola74H/tVmc/sg/l88Et7i6N
	 EcLyHtjDE0K2vvMMX4cUBfusbV0UPQdhNkqAARH6k482TeZnHi+faVKOxpnytsElkj
	 BJkvh+MNjgJggtUsJYQXb3dP9BoyFlOvPV+R2Ol8R9rrwKc+baAxjZHoz3yC6kc8fQ
	 psAKWlwI4u+oXLDnwEWWUrn2iu+IylUzVYP3gzV2yau2wvmzsAXsvRbiHtr/DO5m/T
	 k+TJ+hyCLaOBiW1CO1M/L9/PQuo7EiqmlEGw6Z4CBJo03CuOxY0MdlkWUFduY8i16V
	 Ugz1BFZ4GMpDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3737C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174239579365.9967.17319207108977777251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df05be82681feadbfba0f1b466b52be5ca5b0509029dbe88d1a28cdd5fd0ff77
Date: Wed, 19 Mar 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742395793
