Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBFA184
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767594834; cv=none; b=HJZUtdZerwkDvvQU/2/idDusJj5wUceqLiZOlP9HowjaAeErmI2+/rpDRGeKV368CekINr5js5RvE2n+LCuAm0GG6fYW6ipU+7Hdl3wV98QCP9ElbOtdQ/6Eu8vivSORKro3miN42Y9QIMAUf6CbfmJtD0AWXY6uVMMO8qhxO1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767594834; c=relaxed/simple;
	bh=oPTpqWNmgyzrMaTf4+W1CbMQR5szo+uZHzMuuynB4Oc=;
	h=To:Subject:From:Message-Id:Date; b=gF3imFt+gK56k1eEQ4Z/7tDmIF9EHV7/ALBSRYyldL/NGIsdhvJ7KmmzJacLi0ZpbPVNKrx+OhHS2hvcgrCjb3gcC+xPRDNGz0cgL+asmZk9we05omM4SFfbHBmXS563LCproaUb1eeefZCx+PObzfcP3qZ4MO6zNRAR+QS5aow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjhBANke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjhBANke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF90BC19421
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767594833;
	bh=oPTpqWNmgyzrMaTf4+W1CbMQR5szo+uZHzMuuynB4Oc=;
	h=To:Subject:From:Date:From;
	b=sjhBANke2SRmHGOHPxUCqaQBRxc+4eVDFTyV274c+AwWh+k0EEY6D4nPU6lp3OM1x
	 hFJheWxdO+jaT5fVcOnOeLwRIBhTat6Hk353uncwjcnHj95NSyYobr3c4Z36NGpiP0
	 erdUQMD5D+TfZ6y7RCagoZNWI7FL0Uajaj42s2udBXUIsti+xAd0W0uVsg5YBF0JHy
	 mntZr6BqwPuijs7XnoEiOv0/zLBHjRD7yOrYAIfRnGWn6dTtDoN7cl2dBOE3vXWZv6
	 685ku/qMtVAtJx+punKejC9xDxqyk/YJxUFvi59Rxd9Hn+Ab+rTwQuj7zGHhI9+zOh
	 vurUJrJZXiYDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCDFC2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759483363.4390.7462492571056046057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c79ea7efb92b76920345b35af1138281319effb180eafe3db03332a0ecb8cc6
Date: Mon, 05 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767594833
