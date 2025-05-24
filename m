Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3F041C71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748047794; cv=none; b=H1wOg9qP6jVCyujHY8JUADhbgQl/4wMtFNRT/T3m8TvG0jk6WrYQh4TQAPKXb1DYErrt7Waw05P6LK7U88K0OMnHQYAEdjT2rU91f7EbdPhDK/Zmuisb6dA2ydpMXyjqLH07thpOrA3O+anmqRx/eYbuxjfrc9xt+DSaYazFBrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748047794; c=relaxed/simple;
	bh=lGYioEqdFyciRHaHXeYaBx6kJNXtyh5lwcXchAyIJYg=;
	h=To:Subject:From:Message-Id:Date; b=oOMewgvsnByrW/cN+IxVhR6ptzIsmM8aPb5nbqoD3Vr/DG++5INq3YBkXKnaHrS5p1qSVAH6y6EeNji4KiQ8H5aJ8OX4YTlhR75egTRRfMu0tpyUBNH+zMzk/kIkJEG0zjgQraaNT5AsUSYxEIBEPZ/tA19Gj354HPg24c5iCV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2XvGAdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2XvGAdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82BBC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748047793;
	bh=lGYioEqdFyciRHaHXeYaBx6kJNXtyh5lwcXchAyIJYg=;
	h=To:Subject:From:Date:From;
	b=V2XvGAdpA23f6QL5+1FhyQVYFLkSsAqhwXQ0dEsXJGXQIKY1/Y9LREnv71PiMHPA3
	 0/74aQM8vqwPDJFH6+pPqrFzG8kttWFXhF6r898/nIT990E4YpKqLG7yk5NS7qLady
	 yL0MPaFFMP98UDpwqLPeR5+9w13Iv3NJCLcNw2GmaQFA7roGe4Y+2MlTvoyPZeCBrr
	 dFvmK6kGL4uW054QhWigWAZOvNzRFCIk/Lgi4t/eZmJ3uYuqoOSH6UKytP4BkDuNdm
	 2plQT0UQOunJgiAXwyK2G95s37AGGV2dxa/zV/mdHmtxyxM973QflMFzqnHE0nRgzU
	 ojhnd6fN9Wviw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957EFC54ED0
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804779358.7163.17944978323050757775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e14de00612b411e6f0fa88c2a71e6e9153825a336aeee9a3d6e837ba48758c
Date: Sat, 24 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748047793
