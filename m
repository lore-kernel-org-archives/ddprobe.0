Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7927FBAC
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753237194; cv=none; b=c9LhiuE91JIwZPxRhFsLasGKOaF2xGp9o6UhBJojEU1lPpiCZ63rWQ0E1IBaqUCD/8lGY04BSxVCSw8Tb/4GWOQ79tgA6rxOYFi195NG7KcGVEqHdi2+cYZbvlWcqADjI5cfgAMoViK/iSyG6ui3kklVXQDMOAyLO/ESkRhxfo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753237194; c=relaxed/simple;
	bh=ZU4V88+kKPFcETp0XDMifqh4CkihXRKuu4w2LHqNPEw=;
	h=To:Subject:From:Message-Id:Date; b=cAuNPjRsrCU9JqR9R50flp9gAWtu8FZRlxHiy5grK4OSmsz+RvshMhzXIR7RfHny//6FwocQ1/KTVZqILQ/af3dI+TsYCLxm1X0b9pWh83kwHC2/i8fR7sw8La9UgJNZd55GsegG5yUyxRpShU2Tb6GJyA2AblHwfOhbxsD7C6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQgNeAZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQgNeAZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1229C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753237193;
	bh=ZU4V88+kKPFcETp0XDMifqh4CkihXRKuu4w2LHqNPEw=;
	h=To:Subject:From:Date:From;
	b=jQgNeAZ/IS9KXiav/AZDcQOY6bShlgY45oX15e9ZVBY7RSUdQN85GRVHAVwMVCIrk
	 aSVAjfelbbAoJTZW/YQwyu0MPzL6dA3li3Ofzz+7f6Tlul0EZbP7wXMSKm+SBSY6/C
	 3+IYw6SzYSgvF3iryVeMJtbzipop7kicZ0bwe/LdvzOds8ajCXBZ+NE6Hc3V9kF9FW
	 1qZMWPgLwTqDvlIya1Tc9B5pV5hTNlvOHQXa6U7fwPcgP8hcILGXw/1qKGG/xOjlqD
	 U12OOl4ifqtUG/mbwkXuv9okQ1oPfqk8+tlVh4eOKHvCescS8hcoknXV2mIRFxLL7l
	 sF7LXmInKoLoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D7C83F27
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323719357.29985.593573320107995347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4055706bed12be602ed737334fd4c3ca8d85229307303cbdb2b5304006cda4aa
Date: Wed, 23 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753237193
