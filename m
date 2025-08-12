Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B667F9EC
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754961594; cv=none; b=hizokmxBjQRBlPz6JAP/+Mz6vhOfrfS+Fnk7FpcF7SlO8LSEm7cUXtoVqQwF4oJ2PauRAqsw+Fhuj2ryg71dy7XtsaKMIudTFw26PbGR9WMzCshyeQhbl3hyWIS6oERFvSi2luBU0W19o/pgaAm758kysTZZLYKGXbh/fb2AqMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754961594; c=relaxed/simple;
	bh=lWxBw6yrN3/P6mgJMYbEf9oX7rzGIkMlyDU7VYQ4y0Q=;
	h=To:Subject:From:Message-Id:Date; b=N1Ha5lPBrh49UvuzjH1g3GhCoUPbmsXF/P3HtLRMMsXjgvJ2apiM3Npo9EOVkPKXUiy35gPLcBu8dhQ4k9yhaL/Y12v2PDQ1gCqcwsNkYDTxqREy+ufDBrqYJO5cRftpTebbDX/o/vmW6xVXXM0+6F6ysVn+7fM79qelvX5gHVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYj9i2DH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYj9i2DH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F93BC4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754961593;
	bh=lWxBw6yrN3/P6mgJMYbEf9oX7rzGIkMlyDU7VYQ4y0Q=;
	h=To:Subject:From:Date:From;
	b=KYj9i2DHq/+d1OspTQo7k/IUXYyDSUmpT+xB3pMqbELP7OolEmeXLL1TycA2bNVY5
	 U9ick76rYoXB0UCDl0J4drTR3WDaDLzwwjCDmAKhIDRIzMZUn7ZVPgTC2d5K/l+KQ1
	 Bd95j6LqTA8oI+n/n+AKUXAvh6wx4OHG5jHYwPpusG4Yx6b52F4jDkOuq5XW54v9EC
	 jH53V6WYc/X5G0IndPzbV4x6289gPWw+j4wIHGzEXW0/M6rwa4g7H0thCMBUq8IaDV
	 hciyV+fwfmBKRSxqV2BDc+GKTMMDF229vCuYokYv48HKqDCKPGQlTwhnA+rzvpHSn5
	 DjjPnhB1usgig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9151CCA0ED1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496159357.30492.18318312144976491603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b08d1d62784f578293f20aecfcfc02793e8311cc48ac616fef5b89121f09f8
Date: Tue, 12 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754961593
