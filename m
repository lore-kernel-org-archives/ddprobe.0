Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F6B1E5702
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751005194; cv=none; b=G609kSWbr3YyHv7MXhsIZgWuChM7+L3IxxNsYRI9zVL96GIK+EZcaKWrI49uW37szvGng2SUwLI/Wb/lNiq52qMRlJ1irwb/z4s7a5tqLvI1GM7vUdla8mk4opmuR/5HPKVe0nYgW3Ti3brlLtLe+TzMO5rtVooBra8+tncrbgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751005194; c=relaxed/simple;
	bh=JJAC7ijPv1mtdk3K1kXjdY6xD9BadY/o9Ljldf+deB0=;
	h=To:Subject:From:Message-Id:Date; b=XKt6EQ13dCNWmo7H1+RCnruAiy15a6QaDzMaCYhvyXqrp07bjwi3S7+pg6FYngkxB48dDhUDV4mLf3S/dcM19/oZ5ZlC0P0Um18/KWI4tSSkKOpbPSYXC8ufXlZyZwF8hwiLp/caCrhlLGuAGDjSMSyBEA085lkA0vh7jzR4T7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhIl6f1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhIl6f1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1024C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751005193;
	bh=JJAC7ijPv1mtdk3K1kXjdY6xD9BadY/o9Ljldf+deB0=;
	h=To:Subject:From:Date:From;
	b=RhIl6f1X2jT5HokwTcuAS8iQxIo7gsBqs8uIrEPoliSI1fCPIzYH1BmzkAqBGj9Gl
	 sy+pkE8gFixps3k/EubM/pRlaEMDyW8rISRQfYtV8DV+9XWs1mcRO1+8RRNDVhv4XD
	 Itmycb1cJM5hehVhgOtBTYiEA+IrXJR6twbQuP9mAJZKezMxDf7ektocP2UW0HEEIo
	 hI2Woewd1e+ZQ4JW6XwDBzkw/40ct5x5YFs5xPqfnkIFiqIQRYc1Kht6pPMx6daKDE
	 mZVTZ6NqDzrXquDlds/LZcNgrjZXHFIjtqbrjlOQLQ+giyY38ia1cAOJSjPfiPvOJD
	 o3CGIQOnho2jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A940C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100519362.11160.3441563458550582437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315a72e93439a85b40b94749a6b464cbd526a89607cbffc7db2dfdedac836d5d
Date: Fri, 27 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751005193
