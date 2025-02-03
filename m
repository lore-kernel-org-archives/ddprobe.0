Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F16920408E
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738604754; cv=none; b=bbxY/ICFLPvJ4rGXxaMXkgCtPhiSWH1uIx+xDWD0hx7eGjds8OrN9o6CQimeaugYvOIECMnqBY4r0CUWltweLOLTGONW+8mawIhPxCG/oREQfLm8219RiZ4iG/VrTWnMZJsQrKjvSpHg1tu78TcI42/xvGwfUzEN0ODOPuYrBPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738604754; c=relaxed/simple;
	bh=OgPbitWBm6+lb07ifu8GLE/3axSMp42Kj3peFI7lD74=;
	h=To:Subject:From:Message-Id:Date; b=lN0LroDj0WyCRN0gUzFzUlJMLckKaHRqlW1ssT1QqBQGpIVAIScZhHHqOS5MAwSMANsI7Zi+yVCO1NRMVE2ZInZ6lfx0yat2ETJiWogxHfgaAB5RLFrhL7EtbpsxlPkH7SgJ5xPL52sn2wLjAUWlxpkrNDHe7mR+gwfdHgz5Mpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/jO1Ti5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/jO1Ti5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F04C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738604753;
	bh=OgPbitWBm6+lb07ifu8GLE/3axSMp42Kj3peFI7lD74=;
	h=To:Subject:From:Date:From;
	b=S/jO1Ti5WomE8/FxC6nbd4tQMaj+vEPVy4i898qdrltqRCOxkhhh/LwUUeuzy8zjB
	 XsYlZqGW5/uQeQidBOlumpmI0kzGITUw7a0cN1QhrT8Gg3kEANa7fjGNN+HUWPP70f
	 Gdg8Se/mmb5Xh5ti47MhKqaEDaB3dUoAwjNuJqzvK8yf4Hb5TSpS01lX6fImhdlNxs
	 MGjwHpX1QxZEyjvVXvd1KcpTEZlfG36kU3r984sdbiX6lI9lTHyfza9ocCHCJMUpSt
	 nDzC4M19ZvFzZt8kAE0nX4mTDal9oz2+HiBjz4aWqu48mh7oMCEQV5k+exogz3u7Uv
	 bQCdc8dAAQ5Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF13C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173860475362.3026.16986363375723381994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e497f60e3d0f5badd81edf2f31986f0edb259401fe673f5cc7be01f6728ea922
Date: Mon, 03 Feb 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738604753
