Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC4C17C224
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748983194; cv=none; b=pNbndZ3+gYPln8UR6QFW/9Gq5cnFmKb6sO037Mdo/q1vykOfY5SsE/lK8qpiDmyl/huV9D+dzd23URelwbtqz0fMCDV8QhJ3KqQN1ao7I5XdRpcvvv6Wg5jvlQD10JozJBLJQJPJw8gDCLB8h4TlHcJV2/A6r2wTMIDQJ0NgCus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748983194; c=relaxed/simple;
	bh=so1nS34tJfKWS6AB35ud5c/jNm5aNZ7RUFb3L1Iq5WI=;
	h=To:Subject:From:Message-Id:Date; b=TO2UGc39COQ90K8jcRYS43lu41Loik73kGNrw52rNHPRO+WzcEx3NDjxTDqmshySA9naFsJVLruH4S9Lm2dlbusfYhnei550KkoykKZMAkoMa54ncQnFfsKI/85D26ifSx4Nz+6lxbZiy3yOfMGjsB0Xm/fyrZT0zA4kUmNUPCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NL1Ghr3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NL1Ghr3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D4FC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748983193;
	bh=so1nS34tJfKWS6AB35ud5c/jNm5aNZ7RUFb3L1Iq5WI=;
	h=To:Subject:From:Date:From;
	b=NL1Ghr3IV+oDF0FtxbNeHWnY848fnA8Pc8JToazCAhMKNRrwVfX2WwIY9YsUiov5j
	 46qaJs3vALL/3p6nZgSaZpu/XpYEz3xpnObHPRN475ciacdWCjHk2A+L0vcu5KnaxM
	 Hc/a5VVmcOUYd894aeB9JyI5dMX1OhtkeiFGghaIbO6GDQmoGz7XmiV1vlATAIVQ8Y
	 GxdfdZiF6rppms7qL/nGAFxaMWvwphmQJkXYU3wyZ2BbXidSiHnZTrkAbCf6m2Li74
	 VOIR44opujTHZuMoUaI98VfEvCXNN9kxq0EMItjRUtLGROpNL0xNAC6ijX9sM/KD/g
	 bIiaHZuA8d/Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FAC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898319357.21112.9754428556454540112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d319d669aa365936187a19d5424f008e19dc150a667d61381e24d3953daf5450
Date: Tue, 03 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748983193
