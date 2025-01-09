Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C9119ABDE
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736444754; cv=none; b=mTfLvSaMpBSrxosQcg20TztidfGY3SzuggvmizWMg0t17CzHg1DdFlm0SRfIFOL0FbmAXi18QSeAXhk460kK/VDZz3m8LuxNeuZU2u8oQ8AyUXqP8cJpinFqEg9blvbevhAQ/kBuGNgPCBdF94wstL+fDIiYLcEGz2nRjHYFWX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736444754; c=relaxed/simple;
	bh=1eB4ooWVaV9tIqb5h8wtP3SU1pZPJXu8LnbH8SBNAWM=;
	h=To:Subject:From:Message-Id:Date; b=XBvmlPhb6xsmebZbaYMmy8fPULKnf2qvuPEmjaHyA8wtq5Y/JSDN+hvV/vwRShdPj3JNr48MzvW7+SvvUaRGGXDPA9OS8cYdAQbe9B8lZLX26dP6MOrao1TPFZPogx2Xc6po4w0W7b7vECqwz6kT/s5eoZwTIGseEuQnOzZtmig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgUGuxvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgUGuxvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9756C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736444753;
	bh=1eB4ooWVaV9tIqb5h8wtP3SU1pZPJXu8LnbH8SBNAWM=;
	h=To:Subject:From:Date:From;
	b=mgUGuxvr3wcxv9DDaI/pRSy7vdElSERyDLGGMRpD7DTfirRuuIcJiuOiJI2sX7ifc
	 M6ScSCFDaO1pf+dq2O0JhOOuBNbcHsFI7KVUb4g7P8gE8OPNq0yQlCMh36wQqv7QGG
	 Im1rk9RV/gRVZfxQqRDZT8XmJtnMJjLrPu2mYGibUdLXmeelGMjYbfo7NE7BTqqZAq
	 lPjOVEm/OaFQlqLqfSsW5LCRT12GYcwwOR1O8VPWtv9ZyM9bPN3Rbtm8pa6K4mbnFE
	 yJa2jupnMQpFUVk3zM9VuZwsp1RLiqbsu3jW+UPc3v7SZ6+vJxC4Wwka2HHqpE92LC
	 tZ1Tb9LUCGk6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F1AE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644475358.4655.12470051553072787356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821b6316fe3100f473adc585332dfcabb771a65ea5af389bb7311f72ea5ec97a
Date: Thu, 09 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736444753
