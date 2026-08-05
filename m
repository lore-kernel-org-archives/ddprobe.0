Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4038633BBC0
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785939034; cv=none; b=QzwC18Uj7DzuvSaASB63MH7uIdQaFDofIJFeoiu6lAowYH06qkXActNUVqdW039rII+RJPL/6RVrYmRdVrt9f4tvuN6cbKjeqNYntbH7Yktwr2IdR6y3eMWRp10qTZ24bnEpnrjtqy+B8+bKLKmVyXzDAKbR0lCmdgy2AS2zi3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785939034; c=relaxed/simple;
	bh=JXxLqHtkIcdGMc2unRzO/ZoExVQQlFNKxwbKq5Yrs7k=;
	h=To:Subject:From:Message-Id:Date; b=gYpWOTanAYii3MUzKoLUIqS/p+ZYQ8YDlUWUwm3va+kMygcZXMQZfbCxmaAiFuFd5TXYuewnIcT9cGgaW4QDbocwFUocx52e/cd/FJVc0MD9G4la47JZ2cDp4L0XiaxHfdej9WXRPQf12RI05KhIXKJEImT61p7JMdmr+22F1yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WahtffRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WahtffRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA83C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785939033;
	bh=JXxLqHtkIcdGMc2unRzO/ZoExVQQlFNKxwbKq5Yrs7k=;
	h=To:Subject:From:Date:From;
	b=WahtffRKkFmGwRmYqt0TNrUsqtSwiff+HnjeLi7nXmtU3MECSAzCHwTtQ0t4hl6Ak
	 pdgOu2c/kiXwPQaZVHZAmeliqB0oDY4ZMU0S9FfbpALd4ocGlzlU+7f2325yO2lGg6
	 qYNkQaqhRN9E3Ud73DqKA6Q5YV1OsXW/XPMqpLeCOB8V9Ogxq22FCxN7gdVYmZdhdt
	 /qCD8s/kHsJPwifjMz6+C66aAs3GZGNczygRO7FIYUBtnhdLvQq6de5zbxGHOPjZOX
	 IwT/jxfkhLR5w8VoTKN0Sl+qBok3PH4TIQ4bKFmcp28XvfyZlN9HiRdAl3zBI19YSh
	 51ekx9biQbHuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB97C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593903368.30051.136050060765442020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c025918b919bc3c2a4de8b54ce90a57f211cd0605bb4304db2ea19e890683310
Date: Wed, 05 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785939033
