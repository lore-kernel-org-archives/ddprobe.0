Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEE64502F
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731390954; cv=none; b=VyWb2kXvmrOAdJIPltGq5fm1xRHo0sfDh1qqRmGIIhwt+zLoWjHLKIFpCGdmhokp4M8nXGY3jvVBDkPUcdFW8ltqv2U4Y+HSzC5006Q25Km7E95ldUf/+rvC8CESf/htMN5MNsbKZgDvV9rYMOXPTQQ6651iFQEcad8rdxpdrjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731390954; c=relaxed/simple;
	bh=++G9jyuk3zDFp+E9oddJp/Z4olwQXS2Hv5kdoz7gXfM=;
	h=To:Subject:From:Message-Id:Date; b=syT+lTvYX+pW4vlXStvXSs+WcBdTWIN9fDxo/y97BeCj21ToymL7pDF8vLf3ObqNrF8b8wsR0rNBoPg5r0hcdPX8Imz+NHjJ5bseF+kKZbw8pwxTACYtkJvZwXtd/z4ZH/q3k1kftUg8GB1ht0p4Fn4WboRpqLCxZvFQxEXcfZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpgDKRpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpgDKRpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB51DC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731390953;
	bh=++G9jyuk3zDFp+E9oddJp/Z4olwQXS2Hv5kdoz7gXfM=;
	h=To:Subject:From:Date:From;
	b=jpgDKRpGdcMdk4qQcKGSXNIRBqCBMUqUdC+BsybwETOi8FspXuKCWBBbdPEtpsjyv
	 C4eRwhGQjTdhwCYUPXhLMM8hKkm9swmNCtA7E7kmQgSwslSM0P/EoYV1jEPkcXk0ig
	 owc80r4mkbTJpzb9J3YCn9draHXrfghfaHY9GXjPa6BBUUAo+slOSx49I0IOS4T/zx
	 bHKs225srlNJpflFk2phN0ALoqbdcSkb5MUoVtPKO9LH9ZftXySK4Zfrt9TiFO+ebN
	 Tp3HuRNu+0wHdHfdk+upi66p818Ve9Bt2IwG5CcP9v77mehegfZT1d3fwwuH1vxH7q
	 ZYxH12vVp4Y4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9812FD41D56
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173139095360.23238.835827308377033697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a947864bd1e60f9681fd06651393f534cd1400c0800ef994a311934b9409e48
Date: Tue, 12 Nov 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731390953
