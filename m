Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F9221E0BE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751084994; cv=none; b=pKfSrsb3mX2PAhjzchsM4CmgEU9F4HsdVEAlVIW5bt+FcgA40hwJ5JD2m1qkWGbbnDc5jOHlP5rmSXjiqWD3TjjD5PeBXwrf0W7WSPjpKxNOj3N9FpXNUudKlPcGBHByZjyoHq1voVeVdqZdTeg1FinjpkHYFAtd9cpOKPD9YaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751084994; c=relaxed/simple;
	bh=+fI2T7f4wML0o7mA36KyqXe+F+kRo5R++9c3r6Iowl8=;
	h=To:Subject:From:Message-Id:Date; b=t7c8562k8dnKAe1Fh0XWmaHnlpCXxf91BcOa2IG0H6JUcj+hutrqxDp6CzGNeBqCKzVtoftt0WVvEILFfEoGga2FSIhT7c32BVddeehgbUGFxx0qHaFxUYmUQJpJH5UWqSTJ9y9oFQvyP1Ze7d23o1ks1t+GygCFdCKw2ylrxTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgLvutP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgLvutP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCF9C4CEF2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751084993;
	bh=+fI2T7f4wML0o7mA36KyqXe+F+kRo5R++9c3r6Iowl8=;
	h=To:Subject:From:Date:From;
	b=fgLvutP0HmG2m0JRraNtPn/JFGJbq3yc6EjSAd0/cDprrImCzqfgFMR6I6i7lCUSK
	 DVrX8fMRKOyMD4kFugOd3V/0IP6305TLtXziWGqLVhmDg7DiMnXIvL1kueQpKm11Ix
	 mESIt6Pzg5a4n7Q6HHFT7Cz3ASWWWsEiwpOPL8kXa7X317MIwelAv/nR3t5KSotGXE
	 vHw1z/b6Cq9zGy5EJK3QzL6BD8NLR+824Qrrt5IYeKGaOpEZplykh/hL0Obw1uG/Z5
	 6IxMMj21KwDsG3o3bMw5q/vkW92+8jQ+/ZbcO9MojOD9ZR8rkDMScDxQZK5VX8BhDI
	 CjjRUPMD3+LQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43A5C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108499364.15182.4423287962751418255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49459fe680d1f63772943af07b542c1ad467e57735ec867f467e3ca8ad8caed
Date: Sat, 28 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751084993
