Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D7B625
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 17:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713634223; cv=none; b=m4DkT3bFWnF1X04Ls/U301HU+U3UfepEo16quoVvHa70jiTOfn3P+6HIZP8xnsAZKqzosJHm6hCTLPz2LvcTd8Z6QjdFTJn14O8pI+Kf3sIntK8YZKmkK8sMkmNVyXpCy6lY3wdOjkyAOr8ygw76dxTOkeFIOHrLh/OBavWkOUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713634223; c=relaxed/simple;
	bh=Ch7ZsSZTGPt1IqeRIUZk/D5/WSh0Mez6PFLyyF4+4OY=;
	h=To:Subject:From:Message-Id:Date; b=gyKWv0o3ASQcIDUkuUa7frw+SU/d+yGXGIQJDNWdGc4eS/3Tqrmwik8zBoaWTXVRjgfrAqQUUyJo92W8TS4KdO/mb5QDzofOuSKB8v0CcFHk6n5nPFjkNgeUxyqlkvPLPYcHj0XHmKkixY+1P8wlA5yez1HTE4uPLaPhQ6wEBBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pm4L+Gkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pm4L+Gkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1FEBC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 17:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713634222;
	bh=Ch7ZsSZTGPt1IqeRIUZk/D5/WSh0Mez6PFLyyF4+4OY=;
	h=To:Subject:From:Date:From;
	b=Pm4L+Gkdacneom7nd6OITDH3QjPi+dtzWop4zkfBaWkyPd/NrT5Nm3cOdXH664/er
	 fypETqmUzw9ZhFxVD0nh3ORS7asQ0Q12q2vxwTO/+KHFcYdM7R1raVsPCXYWZ23QKw
	 LwU6v9WvLtjD56GJvoT8aC2mUiVgj6wZFViRkvXsLmKs6QhiLKqP+lBLkpeqBmEZjO
	 AAE1SN5MoaMGLdHlOIHFYVcIPOjXyqhB/wUImCWnrbk0fVVkzpvB1rg9YeRhLEJ/P3
	 HTci3ZFR79wNPwn5J/dfSzdlmaGXBK2eXzwxLqLFzEkcxLCzyBupmSqSAbPj5F9/wb
	 Cz4XbsMkiEyFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE291C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 17:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171363422278.23144.2121797539097704486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7a993ead587c053b38df47a60c36761428e28f9d0058ae3967a04423d22b28
Date: Sat, 20 Apr 2024 17:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713634222
