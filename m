Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6552115F3FF
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717622843; cv=none; b=qPklQDyR0qvIlByFYgxuiNAXTMK1CwX9JwB+gDzUUPhFXbIg2vvZ0bGeF4Gfv1wN4EIUHnL1OQh/OLSQlyFhro3TlaIjBVFwII+nYd2KIHwptqrD8AObK0Dd21TKSnlQ0+mukH9OPj7x30cXFU5aqOS18GJyFk9FDR+YEdUwIok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717622843; c=relaxed/simple;
	bh=inF6ammVBH3VTI1uyOMSuK5IYuYjqvQN+mIH9Wwy5og=;
	h=To:Subject:From:Message-Id:Date; b=HOPTJp3Zjc9V5KMvF9BSbH00X8BmUV2exfdmEBrUYn9we5r0DbSMiA5Obyk2CLf6UF6IUjefGR5CHmdibj2Bp7GxPfAABYfZvOTInK6bUt2km4dQECa6/FfbcTvi0PD7/sbAOSZeNqSFBszYlFCs7GAjkkNZ8B9S/4dhZCRbrDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrkwjDLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrkwjDLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD34AC32782
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717622842;
	bh=inF6ammVBH3VTI1uyOMSuK5IYuYjqvQN+mIH9Wwy5og=;
	h=To:Subject:From:Date:From;
	b=TrkwjDLr7YwF7oenEwgD9m5HNiZ7BTcm1XJfiurIDLkXCoK/WD1LxUmUiVAvVunur
	 rDYD81pwaIomsDZLWhnJNE231E2CVYw2l70a96/+e1dbLpPuK+Tew7C8HZguYWIcuH
	 e0OWz6HFdqKxBMtmqJoFSYoU+22FTjQkUoLnGjeXUY2+hGBbQsVjtO3+0F2+PKd2U2
	 Z4HR8sKLFBEaggLJ/kMzsncPKmQHGhVZSRQoWk6rG0IW+q+pxkto4s8elsgdMfKFXV
	 zr+UgzG2DGza5vMuk+FCCWjpdFMoZnJ0CxM63MaHqCeSHNs+469V8/YrCNnGZ7tv52
	 nf1EUsHkXwv/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA8BBC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171762284278.6130.18232920519576093150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4965d8d2c0eaed0642b2b2f0a52e2120e20eb99d5adb12582a9ad6b58f5578ce
Date: Wed, 05 Jun 2024 21:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717622842
