Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1695F1FC8
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732416954; cv=none; b=on9VWpNY6IEfXDm3f0BUZOgz3Vrk1j81KYLHGb3FtuP9OU8P01z+he1144slJaFrqQj7jFfaBscSFtG+A/+WhvbYDFKO33SKrl8t3x3c4rzFWo1yVpjYl6BnWiO94PQ07SAZpLZf9yHmUyEuheygN64HGgdyoPMqZm/W/ECkSJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732416954; c=relaxed/simple;
	bh=vQ0sE24PZ/6vr2xaZ7vGkmbp4hwawJTZJnvmi4Y8Zco=;
	h=To:Subject:From:Message-Id:Date; b=GHuNxkil5S1J6rkIhPembjGHVPsUj7mqul+8719V9o6EvsoWARaejobjZeNuq6upywJNb+LThDRNBG6btsL10fsALBhnOSGz8k2xfWjvq/ayIRME8uIrJaclQbE1xjwy9o+JfotxDxgPY3gUJbkdgGib9ysHarxqKqxAsE8/KbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GX6bdzWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GX6bdzWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F296C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732416953;
	bh=vQ0sE24PZ/6vr2xaZ7vGkmbp4hwawJTZJnvmi4Y8Zco=;
	h=To:Subject:From:Date:From;
	b=GX6bdzWOsKjCK1cZu5kCzKT5B2KY8FhJr5P6DQClXyvb1eTXCIriWphUPx1pcuTaK
	 X3E2zcsjvxaKSQY5QjaHxtMQHdV+xVTO1vu/Id/2QQyv6BLzg2rpb67RhNcHLZzi7Q
	 7ciuVvTKrlDqEH5geNcngAUzCvQ4Cek+eqMcEISr3T+BpdSKUSEPBrGjLNsSZWy1SE
	 vEQJvHYB0cAZ+DoUDItFkINPWjmA1g29GOEFa/20AsWq1cpKkRim7czfNBjc/VmKPb
	 187UFD3l1bMGlpwHHYDkeojGY/GOxWtG/cXNLi3i0lKqyzE+HQckMVIobQ2V8EOoqb
	 Hz7borag4HjxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF5FE66893
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173241695358.394.1834564080920710348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c12761d9b30b9c24a182b9213952ced2a8dc0e1395a08402df491bbb38bcc5
Date: Sun, 24 Nov 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732416953
