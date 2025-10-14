Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24736219E8
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760420994; cv=none; b=gpQtsJYDo95P8LJY5g7Waa3+0VUpmqUqzHvrh3FeHHi4N2PU6r66r4kFOYZefUiDTRNp1IDFV4GMrulm4o9HHk87YoZvRokMOaYVsN3xcCV/DMCwUjymfaPDLsvWrVgoXqI3Ns6ZOA4EZtDVPSFVUn595x3k0hmE4kFzr8XBuMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760420994; c=relaxed/simple;
	bh=WWoLEKTc0/OL7skfl6xTMzOsekK1jsNmCZtqGe5ihmU=;
	h=To:Subject:From:Message-Id:Date; b=fw8zKUVXC6oiePdVROjIFioqOvSIeEzgCVi5Wo9ooaoc7348PIPqX/P+EpEu+/ThhtJ1yEj/ZHU/csKu/v+XraC76HbkQE+v+Xo/KdJ+MAWbL1yx3gP2RkkJpgjf25f2geJNdWKAwSGDPWLD44zUHw6rNJMXPok6MWuFzptJ1dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IE2T4Sn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IE2T4Sn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71FEC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760420993;
	bh=WWoLEKTc0/OL7skfl6xTMzOsekK1jsNmCZtqGe5ihmU=;
	h=To:Subject:From:Date:From;
	b=IE2T4Sn6X529Fg3oS38bO0anNB4RJCOlCQcjvdJ8/HmkABHBYyS/cOq+nCEWUhrQL
	 xCDhJr6t4urh5fKZnD20KFVZC/01OJ8X7ZZ15wakcFqEQ6+hv2qXsghU49EwqjM9T2
	 uYQ/vq9SiNZFpw3RsVljYaQab5pZ2pU2iHEAQvXdzXDu337/pLkTTFHl5q95t4cooE
	 MOwhq1M3zk6nRwZ55Og27y0/dZxadTABJ0vwfuAlNgtC7TzSzMn/lwlJnHMbDkOfjr
	 7M6dFPMHB9cXcgcK9Ujc3UpMFPywZPLIcNC9/SNbu5oaigXtDEQpKnnoUlok5YVAU1
	 IxLwfyNqHp8Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94526CCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042099360.15146.17072361687739090466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9ed9a1645d79d4f1e10f937017665fdd5743a51a906e62a65e585d2b515aa8
Date: Tue, 14 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760420993
