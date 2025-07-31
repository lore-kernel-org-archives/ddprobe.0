Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5184A230BF2
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753928995; cv=none; b=hiLPkadB5weliElrSgTyLmddSH8246Oq4VRWmlQB8+Mt0uUBEGMRSx+WlBQsZCEfpFb1Ijr/SEyj60Yo4ykyhAhFu6wMXndeoQm2c0hIvuUuL+uAb3R8fkyua8h/UdUbSCkGMraLzqCkuiXxMV8+Q4Ctvl5qOz3gqX2RilxmkTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753928995; c=relaxed/simple;
	bh=nVYLFth+an5yDeHPOYqmLRVrjrCiMq4wkCG5cpDaP8g=;
	h=To:Subject:From:Message-Id:Date; b=K91aj3HSyotdnIicCiOWGeDPcd8il3GG136xC6NVIP5bG2jvL/g3QkuK6rbTXvVA/24zDDYR1bEhzgXxZ+vmNHtKNjia4EAGefj+lMI9nG7ayZrmu1lPh/imN+O2JbFrFvMU+r0g7FQmkzREFeiOQqmxaVKtwumDT5pEvRNu10E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZKsWriK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZKsWriK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18B3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753928993;
	bh=nVYLFth+an5yDeHPOYqmLRVrjrCiMq4wkCG5cpDaP8g=;
	h=To:Subject:From:Date:From;
	b=cZKsWriKqs97KIE3lVQjoawe96S+naVHcbzjKZmqjt49ePBrkyX987Cp+A+L/KoCD
	 tP8yS0v+OFOoTtIGEeiB+xsysoekJ76s1hZxuyZl7y930psQUyTS/atkDInClKlBpt
	 oMEo9BQajDXNUG+P2V0VoRBNy8U6yrFnsYv0DhOdZW+XbIVl/HKKuE22JihGNGi8jj
	 1Pgl3HKUSpGO7jsnVHRlOEawZNMu9SuSqMA7VZWelXe29PPsOaurrqBTDE3noHAy3A
	 8+wKt3tVGzLkya0A+1QjOjQ6GQRaEirIzZQ7T4l4WTZ4eMi0U7re2yCjjzo3VI/lp1
	 lH5zyGmg1xfnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A51C87FC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392899357.14565.10900536222167243178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e67e23cbe92ed69aca13c0c2cfac078c564602f7ef68693cf8e533ea59bd16
Date: Thu, 31 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753928993
