Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488C87082B
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734585954; cv=none; b=czLzQpZzB7m/IAJNn5xcEOe1dYzmYilt9RuWh0cGdkZNZ/3ZrDQiPc1E+J2ChRag/IlbCUGBaeBKPyuDv2QRIqlQrCFp4OVdRrpDG3JTCc3Rtlp20puIJYtWIBU3yAr9veqxbAQFqR+Fl8ZBx2qD+8VYq+falN27+Yg/A/F0Gso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734585954; c=relaxed/simple;
	bh=OSVq2fhGrMea7iMfYCOGvV2lAFZds56mvZfJb7pYIiM=;
	h=To:Subject:From:Message-Id:Date; b=mRiqgweDIsZztdXH/8BrW3SvENU9FAibcAn9CTm7TvXAdqtnFCCu14kXrOwUCTrgfg9b88oiL7rT7OL38NHOhUTCKKZSRqctQN4mW92o6X19tG1Fs1daQRotscNm/9uHVn5A7V+RXCWsA4WsnBveSLry4BxrgAfE/BBVPdS1Q0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rX4ByiV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rX4ByiV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F07C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734585953;
	bh=OSVq2fhGrMea7iMfYCOGvV2lAFZds56mvZfJb7pYIiM=;
	h=To:Subject:From:Date:From;
	b=rX4ByiV7u5aAM6gbSuJk7R8HhKyl6xrAQJNni42YuVYbv2LwnBjr/v7kmpuXsLFrT
	 AEgO4IcRIwW8NsXU9QnEBTdFQLs6HldGUhwlJkegoFVDlSycCPmbGZPl6sRF5M4ccW
	 7DvehU+iqG6/jjT+YYorf4APqu5MNTr/Wxo8ny6IKP2RAafiU7a0LzMzYY3bssFdeW
	 KeRNC+t5rfJrO6IyykYduwEJRIVkO+A2xsvuaGgjggnrUeKooqvS/ElPZ6pko1lqr5
	 /xBHadRqDUicMC8d95TQst6sAEGF4t2EXFmOm+BE8S5BphXQcWwyvDPZoyz/8r6QbI
	 4pAe/Ju90R2ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F27AE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173458595361.22598.16782038766725030073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4aedcbffe13ec7a8b059ee3171128ed54cff028a73358edb7ad076bc7e863b
Date: Thu, 19 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734585953
