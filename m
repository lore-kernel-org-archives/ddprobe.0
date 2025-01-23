Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CEA20E71C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737647753; cv=none; b=NiwelivS66wSXVsJNZrLs6erxRd3KFhQfiAfHnvBNwl1XG/51QZMQ/eqCQc4KX14z/tJON109Md2xULrOSohgwoav6+RGbYA6dBPNcCQNxu4vIo7uUsSrVJ9CNO6ibaZQ78FCPUjibMKdKoFywNz3p3tDBqFXZyePnfW1200wTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737647753; c=relaxed/simple;
	bh=HIq3CLwO2/WjcCo7SA3S29jDU6Ehz7eNk8T9CCi2z1g=;
	h=To:Subject:From:Message-Id:Date; b=usJMqzFliQRDKCWrr5HSz5AF8Uo7BCU88s8cVOw0HitNm4zfV7cLCjAMluXTWDrBnkjZj+6WcRm+1/YIJdVhug0tvPTg+aIkpbCOJywTGZMsJFhV77WxTvuzO+sW7DYVk9ug2R1C/YcYYBrDE6NPAr3nVAiQZUCvu+SiQVI5aeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKiiA2lQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKiiA2lQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A750EC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737647753;
	bh=HIq3CLwO2/WjcCo7SA3S29jDU6Ehz7eNk8T9CCi2z1g=;
	h=To:Subject:From:Date:From;
	b=CKiiA2lQMyrY4mY9YEK8hftoiRZ20u71OywBrpm6nc2Bg9p55vq9lDLMxTt1KH581
	 V+JoVPJtGNwwf3dwPQYIiHAi/yhntXzp7My545TzJ8V9jhJiEJybPaQ/a9geubygSN
	 Y1TdKY8yNnIvXjTydvt6TGquHvBPPxEgFy+DsVnlcpw1tM9Z403zKRO2BrYfMOisGE
	 vh/ej9ajhNoxFv7NVjoI2FUR5usS8vAittlBNK9IygO03WJcL2vBEmz6oggsQfWQGl
	 vsSz/4hxEurQh/38wppy8wPRC436NnpAXEc2Xh0AQaK3UIqxovhRPeM5q64bEtvnZ5
	 lcMucxxnTKIjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3C9C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173764775362.17347.13862251648704348340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3520dc23a4815d8db1d32eb54b6e1bffabd52bed548dcdee290cbc14c7896e22
Date: Thu, 23 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737647753
