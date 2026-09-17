Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239103D75BE
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789667434; cv=none; b=SrOki2HN4aufLdzLt3zE0jG+Y9dCMlfpcbOR7WpMcFW5A1D+Tbk7nZf62rpYyOo0QXs5DBy/r8ILFdl6BAl3Qu60ow8cdrYX6GKLkZDqU5kp8IXQM54tKfO/P699r7XwwhDFpk+5IhFZ/dy/xEc3r9P8OQZcoTGoFQae9a/qcWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789667434; c=relaxed/simple;
	bh=0MfIO9C+ImhJ9duQJ+2FiSvcMs7fXMX57u0JJ54R6i0=;
	h=To:Subject:From:Message-Id:Date; b=J9frN923yLpKG7rN+9KMMA3KopNGrxYSo29Urew/IbZohIiiDqbww4aSiWmajFwAXs2IpjBn42Om0rFShxs7rxI5ux0EZwoEkaSLjFl9m871ctF0FBtgTrLGoqICeqvxGguNFTOflXR5DT2UFmsTJAZ1lIo2xj5QKR44lqqphBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgqY//KO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgqY//KO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AA1C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789667433;
	bh=0MfIO9C+ImhJ9duQJ+2FiSvcMs7fXMX57u0JJ54R6i0=;
	h=To:Subject:From:Date:From;
	b=mgqY//KOB9JQ7TuxfJdOEc8sttQHS2eWlWVCLekz10Fy0ZDbSQQeaCzQmUdflQ+wN
	 5YI6xOahbFmnk6ocwFrzs1TjTz9OukHX0989S7M7GFeutuGMWgMIC8MmrjSW/Bd3oO
	 3vqtyZ+CMADS4MX+hke+pyeaVTq563IoUhXsdGQU3FljPa3ihx4jK6P58SU96ho3J5
	 zXYFKSXbe3BMDByBFPhM/Vnr2X2PUJs3vuKngnstLW6PvYc+5bE7QHpYEGuuSwj+Yk
	 PWN9EEeAX4E0RUdQ7f49OS+OV8adcmG4o2PWl7BmH5R7XhOIXgT79MyJpNwMCS56sG
	 Rnyf4S/ylfqVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3269C982D2
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966743372.21850.5698056616434790256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d131767b6f4f68e0ded4b1ba40d3713f9b7c8c912df86b9f9637b31bb3028855
Date: Thu, 17 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789667433
