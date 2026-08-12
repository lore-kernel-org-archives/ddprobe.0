Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E42E360EF3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786569034; cv=none; b=g0Ns11IXy92/rGdladKvnwduqRZuVdHyYlSki+hVJ8jIthCSNydLTA8tk5kKQ6sdBuv8uOiMqEeX3/DLhNEazg0Mkkub9YN4RMp/Ygsf2nttZYLshJcE3Xcw//Jz0ukBxopxolL8j1niSsTkxRxMae3upTSK/WfzHA152gLSqno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786569034; c=relaxed/simple;
	bh=40Yv9DAkFWgAYN140KPQS1KwDPVpqx5BusJVsGzVa88=;
	h=To:Subject:From:Message-Id:Date; b=XSUDji8nDnH3bhlJor2EROEZEGYts8wJCe9Cp0nkonyXSumGpVEIUZ32a18kVPwI7gN3eokNHQx2PRire7uGqsNvj2w5f2FjoAiOGKemR1ozfADdt4kNJ9deRrDKuhsAhGp6fcsVOrAzEFuh1EIYa/eoDLG/yuFpCu0Wa3EkMQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5Dp92/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5Dp92/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4D0C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786569033;
	bh=40Yv9DAkFWgAYN140KPQS1KwDPVpqx5BusJVsGzVa88=;
	h=To:Subject:From:Date:From;
	b=G5Dp92/0xrAfjfEsUw3d4dWEBD6HIvZDd04SbQdO5Hd2/yteAiCUdGM29eIA8BBX0
	 VO4zWgeMgjJAxhy5VjvYeKx3ojgB3Wx89s3KFVe1+XKWlEop/RkToGi8W5Y/3QcFII
	 D5/sSdw8e2kNK1thNXKNM/M9NuY+mXC5WrPT8NW+z1OD6wNyTmUQYhZlkMB1PwCUq+
	 07K/yqEWVuxVTP21OiogpkQKk3Tz5o8znFRktP+VXlkAw4pn8vNU87DrXb7GF22X+y
	 sKfXV7IE7ySd3xgPnd72ULd6iqDf1+MinPncShSDYzK0yiRWAqSvAEaJlOy+MbKng1
	 rs3NfkabkemNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4114C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656903371.26416.11011992864525570918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7352adfcef63bb000b8bfd98c0b127c8bdbf7688b4d02e13d421c71b8c5466
Date: Wed, 12 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786569033
