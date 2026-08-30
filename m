Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D40381B04
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788083434; cv=none; b=UBqUpNfVVZUZkNBgpv90f28DTlvpKsU/b+WKQsDSxoMghRzDWOGpD+aZ5YVUFp7qM1Rjp6hZBpQuw8kD6UOEpqJ7SddppczzHoJwR5xQseJlN7wuEIWoGZnjCqQt5l0prQ6a6tD5mo3v1H/IIiiqyBYL8wDFsbNSgoxIBuC18Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788083434; c=relaxed/simple;
	bh=FOZPTQGq+Nv1mtWc+3HQsZJ6taoj6+//1vYYJKHYANo=;
	h=To:Subject:From:Message-Id:Date; b=EEQHxstPOEElPRiZ1IggdKnLLeRC/wKSeiThLTOuKjrcO+HpkxbPJwG+IpcNwhvDXrQZgJ11hVxObNJo2rceVfpDIXmcAfceqoLyp5rmTe95T2BnyT+3icjZNrkkohrQjgNqjkN8IWguvInMmZ30EqviW/jRqmwqcO/9L1g0MLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVrjZ0Jr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVrjZ0Jr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1FEC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788083433;
	bh=FOZPTQGq+Nv1mtWc+3HQsZJ6taoj6+//1vYYJKHYANo=;
	h=To:Subject:From:Date:From;
	b=uVrjZ0JraaYdcLf8pIOZG1GIt+khoII1hUriyicHjkp/vVZt7zruArx0uCay9F7fI
	 6rhqWOaFJwYNnHk3hpOQRIaEoHT38M5//D374HiAuPfOUAWe58J4mWuSCyAMaRvmj1
	 K60yfod1YEr2wnHrLOyca/iUWUzHqj+dnGuFah5eTOS0gRwTMGB/0kI6cCbHyNrvmH
	 gRB8iGTUS0fb4Mn8TDqUyFz0E8unlXYfOMdEVnu/gjiu5QJh1NFYeSFbZez6oXn0Em
	 1Vblu1fjiqIp2yMtjFS12t/3tyOT6auEXcJ/alXxOqDr3UHsGAWSPaBAwiyp/gvenj
	 u6q5dGb8d7Pfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAD7C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808343369.25874.9303144920418542946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6cb34a47012b39788480ba6319cf41a489608d7cc99761ee21cd53e35d9872
Date: Sun, 30 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788083433
