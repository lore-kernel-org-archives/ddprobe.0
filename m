Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368CC18732F
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726703154; cv=none; b=hfHMzr6NK4UDnRB++Blbx85q8slV0+zFI3eGYGgkLmLSbIxzfA1F6jiMEdAqlNggEpEH7sizkLFcMjCd2Oe5vPQGW6d3xGSzAcQ6CBFTiSA9vGCbpCdKr450Cn+8wgnuRVrz/ynmmVXGhQARH0vt/UByOiRN1Ve04+GjVFkL3zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726703154; c=relaxed/simple;
	bh=/Q4wqjLocoBOhF1kgPdhOifkUrEvs0At82Z+LTlP9pA=;
	h=To:Subject:From:Message-Id:Date; b=QCoVbzJN19ALXgnwTv0kckuwsIWCIWmqxZ8GJV/ta/PspJnrZpL3jUVDbiWyygP3cWe6/ICpTj6rqyIk/yJrY4VsNA+OIFEftHEr9ZWt3ntMjbHL9TEk7peV9LHdKOU6HaHTl3Yfj4mPS4UaGFNTOzi++esdZw/s6NYmNIP2l+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXMNBUD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXMNBUD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02D2C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726703153;
	bh=/Q4wqjLocoBOhF1kgPdhOifkUrEvs0At82Z+LTlP9pA=;
	h=To:Subject:From:Date:From;
	b=gXMNBUD9fG8KZkf6J+OAbQJQzfgnrT5uYEOIoCs6Pw7BdVjow55i7qq7wYNjqO1Uj
	 YNy1k/8IWv5zxjKUU1gvMW5Y4yM7lmdyV6vdbfzYqyRfJLq0PZaS6BXwon0dRzMgyg
	 oLvSeQYWnuPnwqQttgkGY3H+edNqn6GFOONdzkVJSFMNRsKtIEPXfvA60A62Vn8jE3
	 F2Ywgn2+KbopBGwpqGCKHoqjR9w+lotZpJtkMd2sBWJs6V2Qh3QwqWUJbxFEXN/VxF
	 71xmble4KJPGzcf+5W10EETWoJepGd8lFOGyAJLnhrSn9ZVpjUdTZbIxxp3oowNLLp
	 AFiTJXD5YOsvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992D0CDD55F
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172670315361.23201.10484612517301359456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8ee21b49f3c88dc57580733f23f0f034daa956b461bdc2d733a593909f5506
Date: Wed, 18 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726703153
