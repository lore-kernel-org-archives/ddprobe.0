Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1602D8771
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993795; cv=none; b=gMrFrgID5bW98y6OkKOMcvPoai9ddms2f/cOYjWXkQv0v9jZ5RrGhXO2nZKdUuVOmlAs4TBHfnl8QDRUrZ1WokomagI2niFfjYCGlF0WjBoBC9l3uiXw90fSrZKDKkQjdzz0qAWHZTCj1uG87/L7rf9CmouMAXvjJiR7nMVLzOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993795; c=relaxed/simple;
	bh=Z5dOHBS4hJekMi/dh2OwfVEdxMMGplUUBYuG/F5/gEk=;
	h=To:Subject:From:Message-Id:Date; b=kA1AQniHG6IE2HN5XZqgRtJI2ceL/s7tCIWnHkWuumieHhCYgmbDArqFdwctnGQlcUJBVL2n4/ov7xbSJuPbACJ23T5B+vH6prJXAHHkzteMSKS+lxZGioGJ44N3gGN3jibfhe8iXmdz9BQ0pqNzogh/JP3LJOXsolspiwGp+aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPq9KzlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPq9KzlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3702C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756993793;
	bh=Z5dOHBS4hJekMi/dh2OwfVEdxMMGplUUBYuG/F5/gEk=;
	h=To:Subject:From:Date:From;
	b=MPq9KzlOvrJMBbeVsM+k3LYFUonThqpO49f+DSptXXZ1+6jkpQeGIHWBquXBvEuoE
	 RJkEXsh6jykdGjT+zC7sgfDcnAFdUP1t4mLGi/R+cau04JGAUqLAk1vBHu3WuS+s+O
	 iJxgcHgOGMO86oVcR+xVZOhW9Tif+LTlehZsclMS9yFIW8LI0xUpUTRRjW9/+6etO6
	 vIF+7ZHOVbgg+DMzjTVAq0HK9zqFd1eXTbjYPVPWlHPzyNI4JYhBHPbK7glE7UctiL
	 RecFciOQ6u3KQamZZQehF6eZD/vNi88HBSKEMo+CLtrlSzCQYK4KoqwGNa6fvf/fic
	 gSQsMe70WupMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F5CA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699379357.23696.18325648552845683825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fac6609607a60832bd752f30077521c27aa1c790ab9a8c29e715d5ca59ebf98
Date: Thu, 04 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756993793
