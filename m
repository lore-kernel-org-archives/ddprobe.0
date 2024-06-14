Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559C312EBCC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718363303; cv=none; b=R996IvGg5fLDGGq9JoWyLOPSqQuJtCx+8CEMtVm13zb/X63XKpUQh9CTHtqiwbxPROdL7+Fu+PCbxvC3/C6Wnhg4vgApfrblPMZzYE/MqiSlxMpoUxFg3agWb3dMPYhDHLl9FMYZBKhKZNI/OhhZR5djE2E3ZJkEcW+st/2D864=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718363303; c=relaxed/simple;
	bh=MoIhHJMuSPXimQEM3SlzYiTYD0okvlT70k7qiC9wy4k=;
	h=To:Subject:From:Message-Id:Date; b=Q9pzhQ4s/fgV6plcmr9epIqVZCB+zvKFd984NX5OlF34zgLiqSNdrBV5r2xbSlrbGV61D65nZcPVM8j+m+/A4GEpiukvdyOnf7b9oLy9KT4Xwbjh0iYI5w3tpFahPgiRbfK4WmWYWIQN+lb0BCmcAFsVQE8+ulCgbQlNzrTPfHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxoAXTpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxoAXTpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF466C4AF1C
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718363302;
	bh=MoIhHJMuSPXimQEM3SlzYiTYD0okvlT70k7qiC9wy4k=;
	h=To:Subject:From:Date:From;
	b=JxoAXTpOpAK0myniS+JkivrnOl4EgtL785L4Dsgwwio2Ut7r39e8r679/KKnjG0p6
	 9Wni7/yLBTEFM4eirlM4j5hOqR6V/a6SpS4QoEgcohmNpkl4MiX85Xkh7oEh6OQBVZ
	 rVHK0+U6+YH+6hmtPVlC+72hl/vIAdGAsXJ5o+pVVR+8jdM2fsQmAOccl8DRhVX6fd
	 YlFfgsCOD35Rxo34VykvXCRiWks0dEBdVdl7lGkOPcAe3bLBhfOT9BXTHAl2fJkwj2
	 Sa6/BdSb4SMqBBTKyR6yLd/PFzhW2aqKfSD9fVg0iD+vgGKHiqagftWbQGKFr6bOIy
	 CxU110uJ1XbNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD19C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836330276.24112.16633484943018803098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fd07ca06fcd8af43c588d39a9dbee4f5cef3c232d33a3b6878e3962a9d9daf
Date: Fri, 14 Jun 2024 11:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718363302
