Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E321CF9B
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717976843; cv=none; b=oDUXiLQCySeZ/VxrfSQAujA53u2OWcpPACKApqh/R3eg4eHMC9DCUufv4gq4KYi8VVbo0a0V0iM72aDSwenxXZSk6q+zQlhsSHtumjkZ2qHuXDFZhd4pvrPPEHNY5I7ipUVLJ71RdHwn87NxQw0pw+KYNvjX8bb0NCMjgvjB73s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717976843; c=relaxed/simple;
	bh=z7SLy7MiBu3AGO3xuuzZPRiaYU3+FiKxKqnunav4Kj0=;
	h=To:Subject:From:Message-Id:Date; b=Cedypml6vXXI/fZYwmeioIinkCnEs06x5UBgDynXcCrjHP7dnxY9LnSW7aIbnCw9HIHzw/PMxOQW4sGgvXQtSTzSQvh7GImsWlrO29fplxShT06VxzWuuxEAn5YQtkeU95cmpKb91D9FThKMZylwA2FRLbsvMRBDrvTZxWNg154=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhGeb1ai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhGeb1ai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E162CC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717976842;
	bh=z7SLy7MiBu3AGO3xuuzZPRiaYU3+FiKxKqnunav4Kj0=;
	h=To:Subject:From:Date:From;
	b=RhGeb1aikkAi/MQpDSngYvuhb6DBoFK+el48DMG+wQfddoIixJ1hfP12nDeiKN4XI
	 e3RrmIjPGRQO2Y1xD1j4WT+zAvhpB8rNHhwNdaBWFP8zSlqBO5yrBFBw/mytEwNeuP
	 nhxB3MjMKm3ox0eEe8AEnQnmQ9chudv4BO39Z68IO5ondNqaY79ScdbiJM3Ylc1DLr
	 VrmdQxtr2YLgohiOWvWc9cqmn6Lgka/Mwyn1lbEoC4go1PUoQkj3AlwQtm4kcLgELs
	 0R1irSjGa8+L6b3jzlskuxT1kRAo1VBnYJcRy/cNE6CMdgbJR5X+9+Q9eZPVmUNbxf
	 ydm3JEpl/zg4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F71C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 23:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797684278.9864.16626897766279279872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045284fe7c467b65c1c3e93e827851fe9af573a1a3cbdc0cb5424ad128773432
Date: Sun, 09 Jun 2024 23:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717976842
