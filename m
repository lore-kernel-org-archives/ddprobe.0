Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B7249620
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758490794; cv=none; b=cTZKdH8aiMDdx1gm3AI0LbDU6H9oke/ODQmUPKHoIg7DbfWwIBxYROrqYVPFIi6E2HqMiKG0lzeKczvaIqU8eZHT+jvoWDH5RQwEPihv2uvL/OKcY3HO3hqJMqurbuSetl5VcrJC+Bnzz3MFY3l+G+GvZEfGTLO0KKkVK+vbpNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758490794; c=relaxed/simple;
	bh=pXVTuRiHh0aN0vsPqb/RZ9F9PsYZhfnx8xWwuUzae4o=;
	h=To:Subject:From:Message-Id:Date; b=TruGx/rRb5lwI9m/M7D5IUWDRDsjQlzm8DtJpBrN7if6c8+lDlxVls/W54+E1Fqqyx3kqIxz4PvTiITKXA0KyCMQTeImSKzWU3/VoUABmVOGrK23sNa0aqAVRoPIi/1tG9bgidetaGNozrQgMKZUDAdInBxcywM5xbTsvAZblIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WX3Sz+CR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WX3Sz+CR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A3CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758490793;
	bh=pXVTuRiHh0aN0vsPqb/RZ9F9PsYZhfnx8xWwuUzae4o=;
	h=To:Subject:From:Date:From;
	b=WX3Sz+CR1PCxHj5FfnwuGZWbIqMHXeaKr29msiXUTdGPf1rt0Iaa8E1Ya5LqP48yz
	 WmGnq+D7Bt/WcUdlbEf1UZgvW5w9fmke+bw+09Kka+UosPUhAF5NvMEeaTWaCiozba
	 +wTS12eZSnpPa1z00VXFBqxzKy1v81z4IXOPuojGo+0I2wstxtk2SXswvddO3WClV0
	 V/ieDPgvU+XwslsZ+wa4L4xy92XrDFgDu64mpFPGg1GljD//tS2B0HTFtRzK9DnhFu
	 MnsOKZqyX+oj2OpyyajScF+tz9FZ26OZibzkpzaUIbBgeWgVkyvuCxDCZfgaFhHUYH
	 jEL61gih5VYXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92840CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849079358.495.1466066584600494331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7169cd28b554ba3329a936f8ac1d73a254201453fc4ccdcee2dcdd2b585f9b7
Date: Sun, 21 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758490793
