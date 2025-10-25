Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D1823185D
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761397194; cv=none; b=ep3+Bo7GDxIHR1XOr/e1utfse4G8QsKW5O6fjHsGGTIFHfiESrX+AHiQyGxmY+XXUU8duKWRHllc3xXl8uaJxFw70y6AFIcptIwDFwkLqzRS5bjCnpzkCXybAVm9qhGNkDwKBDnNgjKrTfnDGd8PTAS0IvBmPeJCpH0XBNB2NMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761397194; c=relaxed/simple;
	bh=p18uqpwttDM4Fj9xTIqqtezVjiJNl0YDdzAM3e0DBbs=;
	h=To:Subject:From:Message-Id:Date; b=KZRqdCcm5qr7zVtvDGqBNYqOYuRJW/mpJdBlkujo1HvOzyTQFPMV7eu/hjq+RpC3lWNmu6TVonQ4U63+CEW6LMSa1iDSg9w6KpCxRaPWCTaaB+AaVEDPUxCMPOm5GG1B3WVEg9bl/V6IVNaDROQcBMrpobmaffPUNg5VWu9Cywg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvS9MrX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvS9MrX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A446BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761397193;
	bh=p18uqpwttDM4Fj9xTIqqtezVjiJNl0YDdzAM3e0DBbs=;
	h=To:Subject:From:Date:From;
	b=cvS9MrX18sDYd/S4dl9vdjEtFstE4cPvF8Vd8Yr7WS6FSKeNxGzhGiRjk9mBgAz9o
	 i7t6qSjhgwDmMMopjtdMFeuxa8UrOEYrV/tV58C7OMMV/p76+1aVsLp3hY+LrAXGn3
	 AItkExk7Fb3POpSM0uyG8aGSgqRhLZne/Trs302jelkWPiT31mQcpNMR25/6nIoOY5
	 iaDFHDdz65HvZjQPd4bHjwhYOqXgXbNI9kPt7l5Pg71Icl4k2FtEm1QefwWprB2JUE
	 MnktohR1skFw/rGNjvycOp/GWaBCFgcRSXHgdh0XChHh/Zu3Y50eS7r1LmTM5bSVKg
	 gRyOhkTSAvFTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D04CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139719357.4988.16155745792888508633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4929a27c154031fc384b916e7271f6259a5a8f533256c50a29fa654d01ff32
Date: Sat, 25 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761397193
