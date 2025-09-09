Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A062C1587
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757390994; cv=none; b=E4KCQFlWxP6Gaz/VXa5v1Be3TGRM+tXbhrayuV/uv+Th0DBd6/2Xbt3d1pA6F0iYlFeZWcBRgnomVq56b33tsIFNprGWNLhaaFHLRx97DwH/xweB0s0RhEUUE7x3nBCG8dqnPp/0r8An/WKLq2NGo/IJFSdYB1AQAkq1A5yNQ+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757390994; c=relaxed/simple;
	bh=HNPVrX/chjIdW7YNqwWpQOXOfH7U4Qhd3Q7SR7Cz8vA=;
	h=To:Subject:From:Message-Id:Date; b=l015aeNrRG849w47xKaPAyt+R0RfdcvPlqWX3ujk8/ZW7C5M+fk9Rhjqkt7BuSFAkGhjN9Cs2djYcYw4ktO/tyZrgWX3Q/z6rH9WVbxjVS2sE+uia15G9o2O2D2/mLldHKGMTFMYqPXjyDVx4GVWJaz8dVUHkhGbEN9gT+s0vzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMdO/wFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMdO/wFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D7AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757390993;
	bh=HNPVrX/chjIdW7YNqwWpQOXOfH7U4Qhd3Q7SR7Cz8vA=;
	h=To:Subject:From:Date:From;
	b=hMdO/wFHjY0iOSmMnkhHb5sqtAz3r8HEF2kmxCnWOdJn3VhavfBg0BUNxormJt/++
	 0bf4Jms/C/jQ9MSQ7gTLZ59/cUoInD+d7IPVCkYzkf7vvWgKv5ZLToA0TtiNX+v5kX
	 tqYKs+Pp9UQh1BdcoM0ZL78c6H4Pxu9b7S1lmDanh6MKHFMW9bxwMIFDfJ3bBXPqSz
	 jdb4WlCkKvZqLiyqR0ooKE9umy93jyBg/4XxQsyHiY7E7oBYYjvLrKQeSPKIuE6RRp
	 FojlA7hls/oSydFaWYfiBOj3Si9qBVv37fV6Q5NOlHmgqeeCowmpK3P79/OB1nVXIa
	 F0eIEP/+7U5Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EADDCAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739099357.13424.13836288307633530600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4bda9506dfad53aa9ffea13b147a806956043a1f0379be54f56b8d48ed1c7f6
Date: Tue, 09 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757390993
