Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103832749D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769351034; cv=none; b=HcWsiiIO6Fiz/l1VRJVyULaIAV0Z4ZutVvFhf4Na5bgnnJsLm3tV3AcHjg9o/rB0fEXzClqPjyahhqFRDLuunFjnnX1hY/u7Z9+e5BZdRVsGLQn6SuP9P4O7b/lxRtauQoRX+hgkEoHMBqCdeiAaIdkgYEe8ywJ4MveMRfZHXhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769351034; c=relaxed/simple;
	bh=RP4PtWq0iLy0Xvyn0eluVMm4gNazYn9qYTBt5a6bIRY=;
	h=To:Subject:From:Message-Id:Date; b=s2HUefRjnQyxxCbfYfHzHh/zxSrDFlpmmuAIXIcKXqUJs8Jc/d+N8hHg40Fewz/YOAcxSv1wIrxOop431hm9fcohomUCCG6HXPYyVBCRzmW9IBgQWSoAWeJT1o8BdlqcD8nGqWgk8V+mEnEsJ5+LxQdToed+rWnH8G5piy6HHQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8j/jL7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8j/jL7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF4BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769351033;
	bh=RP4PtWq0iLy0Xvyn0eluVMm4gNazYn9qYTBt5a6bIRY=;
	h=To:Subject:From:Date:From;
	b=o8j/jL7a+1iMEGoyxht5CBXPVtqz0XIOMUHUUQ8QMMpDk/CHqhXGPzAIRPVoXekgk
	 I9ukqUb1U779CMPDjcvGLslO0C8N8NqnvWdpKRlO0CmXvJ5wdBVK6bSGQ0ASLIWeIo
	 oorzHzscnXqnFpJlCdLokn0XReOYNfNKf7nFYh3vHtAIs5CUP9nkeam0qRf2hzRBKL
	 dv4GsZuOMfmNrUSCTPrOW4hW2OBctOPMRFDH4A/avvkFKH9v/7ecWs6Fi1n54A2CBA
	 oH+vxibkbbb4bdjpWklrECDMOYzJI2fb41w0/9PpGWa9eD2R7gjzaiFtlMvB1pP3My
	 cZLKL1yLCLlDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D50E63CA2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935103358.30141.16289942527331489205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e0c2c996a6a31344d5c3556c4f227f8c97475987f399fda53bbd4fab8947cf
Date: Sun, 25 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769351033
