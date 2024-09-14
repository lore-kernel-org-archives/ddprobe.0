Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C9D43149
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726304154; cv=none; b=DreLhxPDJSq+RtdaT9GyxdydqFgsFZYV45S/LAwsd9kk5AqkPXBOH6TaPLa9hv9VMAVZstAjhkmX2ThJ9SwR/3clqkXs9Z+kV7LfWKoFQPd1Oyf7WxOVkJeri8EmuhRXIHMNeXcJEj3650aBaBsyF8AXhmAnUOlMk1EJPREMybo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726304154; c=relaxed/simple;
	bh=KJ4DWSTdcqWWuqcX1LvW230dcSdXtm6IOATFvsr8W44=;
	h=To:Subject:From:Message-Id:Date; b=YqAjOtDWW5dFH2LAejSSDNcsdR/a3b7+ZBt4u2En9KgaIrjYOgSFMLG29/j5r/74BA3acFa5nZHk12YHYZBPhj2rLRMwSdbVFzTzah0qj2UVh9KNWJmwErNQpFdFGJ60znwRUY1HThp0t0qYEQE76q97eeq6W/Z3CoMOJ8Kd14M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7rGRTDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7rGRTDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42E5C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726304153;
	bh=KJ4DWSTdcqWWuqcX1LvW230dcSdXtm6IOATFvsr8W44=;
	h=To:Subject:From:Date:From;
	b=U7rGRTDlTnBeSglhiZsnap//bPERhjJIoFp1XE16CDYccaiD/Razs6wbJ7qzBnJjP
	 I4bCfaw2ezisKLcHwkLw/KgbpXFJvKeX9gs6tzE0N5rrmEkcTI1UdH2qH8JybrNHEt
	 hfg2UR7cElkL8N3uBemQZ+HdneEpVMVOerM7hMMFw8PoNZKMT1AQvhMQMr5Pd5GYT2
	 WwR1FL4Dswvt6sQbO/P+iQawsLV4ur483URO1lCCoXspAkAvgvBeUH0LiayDQ1iDf6
	 /fTfJF+KOcAc+ng9HIsnlQL8vbAS6sxo+670tovXwZchi2hI0utWsLfUwCB6kXnmuF
	 TBx75xc0Hffig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFEDC02184
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172630415363.13436.10262412362549119766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfefc3af37c62d3b08952caf730ba319798d728d25733278b69aef375c4dd9d9
Date: Sat, 14 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726304153
