Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3158E610B
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727271354; cv=none; b=V1I0BZnTmzR/RswLt3/8EA9pPEf0pvdkUE4s7aeqnJabN/1A5EiyQkqq/0JSm/xYtZlNYBvNXYPf6mbRfUgPXKXB0r9Nz6clLOvzifoCsJsIPQiq+YODyHN0oFs7/hnDcFR0W7nmF+KTVhUSblTpvdbrQF/6sFNbY1h1NFLVKoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727271354; c=relaxed/simple;
	bh=b3YZBT6DAVnfTjdb++8wS8VpBPPc/RVwa1Ll3m4RX6A=;
	h=To:Subject:From:Message-Id:Date; b=b+P23ZETrXlQTRkKHx7n7lhT2yY15JrPuDrsK+gXx5UKk50oOyNegyxpremKGr34moTGwsNXDBscyUiWvNh/352+CH+NIN1REPl8UDXoakTP4Cf+dKMUrRT3mgP5G8EYPYwv3l4H3YHciUzdpL/Q3BW0B0fcQclKZfVxr1vmbW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErvhO+1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErvhO+1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E82C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727271353;
	bh=b3YZBT6DAVnfTjdb++8wS8VpBPPc/RVwa1Ll3m4RX6A=;
	h=To:Subject:From:Date:From;
	b=ErvhO+1T1X0oZq7nB85IOfb8I1p+7tn5u01yHUiNiC63BwO9c+dYqD7WU9RkAg+pU
	 C10LMoJXnqo8d6SmXEXtQnMmXnbjSaSKHMS19fxN3Gki1gg/JpNfQunBCbtjnC+RW2
	 M33Wb8rLh+zAZe84dmesK3WMSpsE4jnix8nnd0WmEpykwxmRO5yLrjJCvGgoAQp+t7
	 szWgvn9ez/ciFb/oYEaKTm0CDI8xNaX2pZ9FAm+Kh2YjB4JzA88AL4gcEgJ0UdtTsS
	 ZnnoSe1NlHFXcRsmPRqjZGY9EJdTLsaJkcXNwPb6H1DG5/1NYD/O90sHEQLFR7FqsL
	 ciLQZFY9p4p2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DD6CF58E5
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172727135358.10478.12960680891090262552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4a12fd232d8686528839c6771b98403cfb43f556f596ec1a350be81dc68bd8
Date: Wed, 25 Sep 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727271353
