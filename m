Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9AB3815ED
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780741474; cv=none; b=vEta08GmcZSdR2LCYZOGKdG0sGChQ7N929UME96C2nkxexyQzNcI9yHaDLOzYI+Iwgl4ii30ElDLcZ0evJwp7FLiq8emg6sXUqlgDxjLajQX9c4jtL87oYOqm1+P6AN+o3WhX+tqiTT+JDuvIWoJbzdH3KZdlK4EBYYNXK9bNck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780741474; c=relaxed/simple;
	bh=SY/12BSkZFDJ1ggPTYIgp0SvZsu3Amp0NlwodgZai2o=;
	h=To:Subject:From:Message-Id:Date; b=cfs0kGd79XScXryhupNxze2RfF/UesCoTFpQ7tPdasnrynXwtRXHOZGjmNTOMNqS6QO+pUPRdFoY4MDTwNSaXhhre4EUpNyGFjw8iTDF3owL/Oo6otrWjYetwKYJFimCVXRVOmbz2OHvy5QqG/zJcALm4sFe60TEtEd6dtrv6qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5DeNIZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5DeNIZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C229CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780741473;
	bh=SY/12BSkZFDJ1ggPTYIgp0SvZsu3Amp0NlwodgZai2o=;
	h=To:Subject:From:Date:From;
	b=d5DeNIZQe6BZlCJp8WTVS/y1Y0xS7prBmOkxz+rt5LDF72mwInek7JvuW8o2Yb6+L
	 A5QtVEU/p2v0vgP0UD9ZSh81GCwls3gJgtqcY9ORfLSbElJ2wa2X5BskDBp8o/jA61
	 ZCsrRn/6g+YP3sx8WugGbnUi4IOrCnXUg8DF+2wuz4doicJkkUem8W/Pom3KromKpQ
	 +Wci9JPl4CNyp1g0PXjlbYdI+qwFPdegoUpR3yD7pFKxVk0Zo7yH8MgrWLPMxzBzh2
	 itT7C1kblZgIv1tdiRs8IrJjSfOKh4A3s/UgqdmFaqO3Db3ycQSKeix+Zf/YIcrYhi
	 5rwXG8/neE1aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A996BCD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074147368.6294.15244884514251451939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc62ecfebbcf555cad3edb61687c7483bed4beacc2a74226f7fdb0e1adcdd46
Date: Sat, 06 Jun 2026 10:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780741473
