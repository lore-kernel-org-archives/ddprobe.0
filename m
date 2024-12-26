Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E88D77F10
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735199154; cv=none; b=qWopNqbuzChngbe7RFw5K58Zcl76s2ETkMlDZj+XXPMDraSMPRru30PHy/ueWb+dDugMdgvKi8F2bwfngMVrxJr+XKjjXoSw7BFmqvoUGgwfqngWYCc0eUjYcbl3Cra06GPIM8TWqoCYbI7SI/SZxJOImHsxuYkqI2IsyyzLtvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735199154; c=relaxed/simple;
	bh=KC5vPbb7fb10/YoWu+Zill4ff2G1ku0jc8uRF0EERCM=;
	h=To:Subject:From:Message-Id:Date; b=q11xAwM4auHBEaEBtiF5zQWj/di+OXTD4mDtcLJdCZGN+4VBownwOtomoRrNxWkrxqDwflAR4+ilJ74ykfsxaITYQXkveeKtHtQNKAXF1cqlHSOIYsFFo5q4EdTgSndQD5mxdinX1EGIaaJSy74J3QSSu0450aTWMfvxADyj62U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pArReiUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pArReiUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D1CC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735199153;
	bh=KC5vPbb7fb10/YoWu+Zill4ff2G1ku0jc8uRF0EERCM=;
	h=To:Subject:From:Date:From;
	b=pArReiUo3ygaAQAZyqlGRUQwL4mytmLJYOtSMhHrenuvat6Emg1X1Am+XAXbFdnnZ
	 l9YO9qWvmyFuiJ+eu/bY7PMZ1DpUUPG8g0W29tG2Rina/3vhp1KT0exFFkM6NBoUUX
	 +BGRozx8SxPGKGi7D43ht6B1P2iIXpoafbEyANKJ6fZ7ukhcajqanH1KcBylGO5iAU
	 tK8o+JB8DDuWngklJmHABxnSJay6YhCr1qiQ4PF2IUaJptiHRxBsRQ5+9+yFb/B5+I
	 9hWSMdK5Io6xxiNHOvmqqu3Gw2ueMUM+XTvcFvPICFmCpJJvttq/M08p9UN1LGtFi6
	 nOfGG8SEH0/Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C71E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173519915357.22113.1662482197648112085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a743a90ac16f272274d15c7b5146af239a44c0ed1bc328d912de57e1ac97061
Date: Thu, 26 Dec 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735199153
