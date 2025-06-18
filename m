Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F04AA93D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750222794; cv=none; b=LjoAOSfWKx830D8YDHEpZLzQdQ17RvZtCCbPCyUni3bC93X34fgevJ6WFC4VzIPKL0VEtGpJ2DPdyGf2nn2WhLNG3R7wlSj1/I7IxyVmwPGQQmdJJ8gizbaOkRGUnYrp8k9mtOQ8vqQYZLoNDlXJFZU9ut08BHl9qrlBtfefD20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750222794; c=relaxed/simple;
	bh=EhtWonsx6sOrRjShFWKdx7IJEXuvlrGHJGUJXeh9BOo=;
	h=To:Subject:From:Message-Id:Date; b=ee8+iRLvz5lbLrdFwx+/xHy0svBVLDsa/DnJNFp7oOZdFnLsjTaIR6MWjVgA4QomDKIQnbu9S8GdMldhesR2WHmNWKJ4n1P3xKeE3EptzTmahi3eYOtGyuOJLByVygEjVtXWVYLCPm91iXthMiqL3XM4Qk+g2wpEyqgo+m/qm4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ike2XtD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ike2XtD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0EFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750222793;
	bh=EhtWonsx6sOrRjShFWKdx7IJEXuvlrGHJGUJXeh9BOo=;
	h=To:Subject:From:Date:From;
	b=Ike2XtD7IxsseFp3ppyqKFgrKgZrxUqE+ATqiWH6fw3c7o0NQQazDiAO37WL5gZno
	 W7m5JpSB44xLqGtO+CP38iyxfFvGhcIQsMr9UdzMr7QA2OTOFXUkBSPLM++AibmTof
	 W6nNnI1R+j5JtZzs7vBaTW9Adzz0TQLBbWRbnG/dGBZ691w0giS1ypsrQwu/msc4/4
	 osCRyCNUg/KCNw+FX6luGJTZ57dmwVhCIzQ6brf4XklOys4PyvDGNvYga7uMFt6wTs
	 /aFJ2bZTiuAZpv+NIL/HTBMBcvEsly90/Ik988KTtgyenEsGOqxTqY8jd3A2qQ5YqM
	 JZ7aoBaA6fjqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97016C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022279361.7234.17113094019480291480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32154c74538503b51559eac778dfb69028bb93e23c887307c271050bc4c9fde2
Date: Wed, 18 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750222793
