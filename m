Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4010025334B
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754381394; cv=none; b=vCAtnRcqsgupeE3XzGzC6Q8hyvDn2G+csixnFTROb5dngDyPlQX4HO9oT5pJ5NO73jwkqzSReM6e1U2OpUdG6pcMJ9rPm8Fz5Y+7hFmCjbW0hT/L0MQTcjh352RK92asLjGfyTmN1Mm4teXS8jhbNGM/D6YIb3LK3nU8D2En1Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754381394; c=relaxed/simple;
	bh=pdtSP4J9j/TFH9OybBaLw8E3vPr3Wa1B7laWx8q43Rk=;
	h=To:Subject:From:Message-Id:Date; b=n9YM0EMBSOLiFSrwhxjSBq/vt3v1RLZWz8KCBIB1GUYSmKSJQOdACsUizmo3+QfDjq1MMrX59lg1SrIThpnLlGhSxXEHSm0uObxt5jMWvDPCuY2UQUogsXsfyyHo1MWaKAa2s3q7AMRDGgtGUlrRUf4RUopXAML/fCv4RHepu7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GM3UsrJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GM3UsrJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D99C4CEFB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754381393;
	bh=pdtSP4J9j/TFH9OybBaLw8E3vPr3Wa1B7laWx8q43Rk=;
	h=To:Subject:From:Date:From;
	b=GM3UsrJKt1ev0NS7C8Qt+ykeRGOdXdr8ciAMhzYP3RGnL0ErxwQCUynYQtdWPYu5B
	 L6YsYCRQJIMBN7WvJCCy+vz5pWTZEHhdpM9bxs2EKh/cRkUr1zWiBFnuPAf47QeqMu
	 glKpY17OCK3Ijp//xdlj8SUM1ZiTTUoNYb/TJKaq8QlG1XKYHmYkqm0DJ0SxD14wFa
	 WE09WNZm6pM1878BFoukbblU7Ft09QIFov/QFRXnl8dvhzh6ZAYzAMljdjEmCI1Kdp
	 SeBQZNkp+KQ+fcKrzv1Xt34dGX9W8I/BscDdVnKo+sxyuf0tjq/bwEhrRgc/dF5DJA
	 w5P/RQv+MBTLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921D3C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438139357.6891.17730253211255858863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cffed8374c09cf015b52544bcbb754bc626c7c51130c79699c79c1c0d7da2c1
Date: Tue, 05 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754381393
