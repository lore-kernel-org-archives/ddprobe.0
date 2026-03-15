Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E6614D719
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773566094; cv=none; b=WmNy5nHnGYvlSGG3WUQcIpIQ2j1msVP/tGncKctmK6GcWROnTR2tVibV4lSv11EjRI5avfgORKeZz6Tf4NylUFMeI0LO94uLl8FFxgjbQan7bFDrlhUdxl4SdxPatQ+KbwuO1WdbzzD/WCscgpYC83LjBvzyvUpGHGF3L+Gy1XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773566094; c=relaxed/simple;
	bh=gTmmulbfRMNS62b5z33YBSqfYDa4WpzaiAcWBr/05pE=;
	h=To:Subject:From:Message-Id:Date; b=dVF2EMlUQIRNPJWG3XZKbh6qJjZYBnT9WLAqe4hHbVTTYQ7NXM1TrQvgiazXofu+dfI2xEbGbDZjoOBlhQ/Dkl4GPvlvZfyFm4rCFAJU8ZEPJqQIW1XQoVgBUkCkWXYcH8Yt8Mr93qCCvbi/Ez/wqUCAxmQ01laOpETrRsBRqDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQFZfZOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQFZfZOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FD5C19424
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773566093;
	bh=gTmmulbfRMNS62b5z33YBSqfYDa4WpzaiAcWBr/05pE=;
	h=To:Subject:From:Date:From;
	b=DQFZfZOhO7kY5jgBOfFGb2h3/T9LS8taIskjqlhebgnazp9lO4Sz4fsZPxoY5HDqL
	 YdUIBPFb8ujit9dmTYlp+Zqu+LcMm4NtWMOj+ohQ1smYmskvVVWbr/37NOiepEcG9H
	 lV5ac681ybpcpnWF5PxffKLiQ34ck9g+FJ/PcVOB/AF4Yh5YIxnZ6XDRiEhWUuRBTh
	 ebppiLPY02Wnsd+OTF154n4I8hnyL3taUv/rDvoH205yZla55JofyPlISuZLwfNbKL
	 qGXe8vIkfFWAFQXbDVYoIrSoWma2iKOtpPHvDNaUl+F6sivaGx5Nb1VX4upnmxH/MH
	 G+cDg9P8ROTwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F411D58B0D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356609357.1212.7401572854529233588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5bc59df418f30054d565eb4ecc32356362e2ac4c6a65e724efec496c0c765b6
Date: Sun, 15 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773566093
