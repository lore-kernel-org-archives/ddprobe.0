Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52ED314EC5B
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743749395; cv=none; b=ui2sTRK6GOFdBFc6z33ceMEBelEfepkIbqa3PqsL9QNUUN7lwOZwH2DaUFWBZMhFZQWrpI/O0XGzJZ3qIK6dyFje5ma1+QvO3lmwP/SSVW8O5jWfOaZofYGixtBQb5MrBgudofnxkXi/bsADSouhq+cp/eMW5+cdgtJpmpIXQBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743749395; c=relaxed/simple;
	bh=X2PJxWafhILde4Ks1xwV7GXRM3NH5V3Aw1vB7ojFLzM=;
	h=To:Subject:From:Message-Id:Date; b=WkrBAakP3kVRr5hj3S45hK6kpBH+kCy3YJYIDHwA9nKsNzYqCsW7ZfYRZzH4SvlE8Bf8tUTZJ2KKrQ7JmLm9l+OtGlytLOT4avXCrjk9L6Iq7P7kZcV9Eorx3o5VUenbC48KYb4A7/OF5dastclcfqowWH5p1VM3OOmuTCaRfQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UleJAXxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UleJAXxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0EBC4CEE5
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743749393;
	bh=X2PJxWafhILde4Ks1xwV7GXRM3NH5V3Aw1vB7ojFLzM=;
	h=To:Subject:From:Date:From;
	b=UleJAXxJld0uIH4BQtZ8QDTHlwqVq1fDstnRWWqawqkxlcwbCp3+eid4c/IUNiHEZ
	 yZhiufZ7dSShLNqlHQHIxf8SE6jxCiqdTWRNefvd4jCKNb3tw6KUnh42e5geaWJRCj
	 EvQzTvu5MTDzu9whKznUcDMX+PK6zed3bdrTSxXRUsIj/Ok52wYek4nuTgZnMJlw9k
	 /uj+DncrJJz9y9JtPyasEaFg2k4MQbn9XErzZsm8BlipYeZO4irCNY7BBuZ64PLymD
	 l9GqFZc7++dWiKh89XG/uz9P3E3cW9HwLidBb/+rrKLsjRQH1Oukvf5VBP6CG+A5Aq
	 sVGpCzd/KcSJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B3BC3601B
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374939365.7563.10234724348051452913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104948d1accdae7c0a8817089a3678bed8c34a95a0f335b6a0de271bf8560ffb
Date: Fri, 04 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743749393
