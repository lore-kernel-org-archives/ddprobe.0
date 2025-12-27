Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190037E0FF
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766869434; cv=none; b=F09OIGUJlxCeT3COGkFuOmL7bi+CwCE3hqiFdMrSggcoySuj8VY79IeKJtGAt8QduLoJYz5xcaHhQKbTJjHNN4iS+S++XV4xfsaDBjBqvHzBiZbZqSTOI7O2Kzfo1JyNOZ+Q7UHzM9Iv0bgxkCAMQioQLm65ocK7+QMUmTFtoUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766869434; c=relaxed/simple;
	bh=mgvz5MeDMh5S9b+36bs4hWK5PnSWoHu+nvH6VvG1g+s=;
	h=To:Subject:From:Message-Id:Date; b=f5puG/cTvO6RwggUowTa5RgP+4U3YAIS3rAYvWxUvjQnsleeMASuZuI2nDNNlp49mzvw4Bw4W880I930NIqtsZnItrzuU6nGFvP7o8cxPYK+qKlW3MHGZ0sBq9lIWRrMLQkp4Rjpb+copzhxw3U5yLvKBN8Ek5+iBwiCv751oSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmJP2gY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmJP2gY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DFBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766869433;
	bh=mgvz5MeDMh5S9b+36bs4hWK5PnSWoHu+nvH6VvG1g+s=;
	h=To:Subject:From:Date:From;
	b=cmJP2gY/gDo64K1rAcCDPUtO701UCt0RaPI6nYXfcaI0lLX03kjU/ZI+DEt2ZIu4f
	 +ZllqQtdSZGSa54+d6hw0MqYibfGL4Vlp1fTCJPpOf88Xw4NSbNM3+rAb/c7bs4pMc
	 /MBuY820RHRyLspc9kBAip57JSsaqqCvjrwrLk6bFAOM0yik51qR7Ru32kuWUiDQ9d
	 WfGe1C30KJHfYqq9QQRaAY5KH8DqG51PtwpF030Za7zXfT2Qdzf8Vn7tfqmQAFRw4k
	 kFQM0Cq39XT4lYv8pI0uxQPGteEIxEOi/o/ftDtmDMXd+1rB5cxWNwO0m8ZRae0KQw
	 a7d/83w66HX4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C82E9270E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686943360.18410.1604478792655964958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37967db1c7f9bf905283990495c0dc057436f755c98dd1800b932b432333a05c
Date: Sat, 27 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766869433
