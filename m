Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED492E4277
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750075194; cv=none; b=d2IBqMzNcCd6EGzolIoKOTgbEgHjCL8C1sHkvoSDwUKP2RB6XUQKHEOquYYXfdAUbYYpwpZ6BXscfaUH38fG3YFkNvuo4S6mjroVXhguvW6n1/YECaWt/O+YwF8od6phtfiIVRkb4Nxq66LKoOCCsLRKDoXApqhed/vjsFFLCqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750075194; c=relaxed/simple;
	bh=Wxq4QmfjmOzwh86XaaVqGKLjOXx7IuJkTpwDoj5SwOo=;
	h=To:Subject:From:Message-Id:Date; b=NnxNOu67ce5h0hI57GJiJe5ktr0T2CY3sy5QfJX7xqcDfBcXJzF72jQPDF3Si7evjlmmf9TKBNB9BUHsCJ3A5peVkMsGahfhGQR0XhA6DxYy6xPdajZtwnPnPi8JttfYsOWoIYUE1m2goio06XsUaCWy6e8qYKDObkjecKWDSg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXH1dBMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXH1dBMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AA5C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750075193;
	bh=Wxq4QmfjmOzwh86XaaVqGKLjOXx7IuJkTpwDoj5SwOo=;
	h=To:Subject:From:Date:From;
	b=UXH1dBMJPt+9Xp0zMhSi9vO8uKH2NABCBSN2xAYaJScVMWgaJFXsc1R6UlOXd0T4j
	 qu6L72rSLv0XNZwspHAHLjn/+PCW9owrE8nwVb+nr90getCDHaIt3K0OFU97YA3oHO
	 PzS3wGO1GsmGxVaCyBmX8A7uzQvtlqxq2oGtinvj9Adu1kHTikuqdtaiFrcecSkgwt
	 SBMZblDDqg4er6QgU5NbEFiBb9qQk+2CVcNj+gTkbYvcKasiHyvaydX4/bdltBBlkV
	 2kHhxp/offC6gJgD3LmJtIqJHR0V/BCPm8RzAkUIit5O8FBHFpQ5A/uD6yFKDGEBH6
	 MrQXFHmUf6iQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D40C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007519358.24632.8949544247299328831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d462a8afefd6c494bb801bfaf1bfc789106c12ecaeb1ea3b1f73df0c140f9302
Date: Mon, 16 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750075193
