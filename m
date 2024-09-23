Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389D67350E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727135154; cv=none; b=pggtihck0WjXd6SN83PBGjHHAQJHLzm+Ncjo52MhG7zXKU4Gkp0EfRX1FEHrYGPBPfVEJ8tbAWA2xFb4sHhsxzD5jPZKoNWE7HkhWJpTaGPpDVahosDgbf1/JK+L+VjS0W2KiNz3XqGLqRGy54qYphlxGi0brcbfrJqvC69EWZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727135154; c=relaxed/simple;
	bh=C9I2HIOQCkvEAZhxvnmmYaq8KMN4yH+yp6hSUZE5bic=;
	h=To:Subject:From:Message-Id:Date; b=tSlTKovbCrVsQBGBvTl5j4Z1UvHXZxzR2aRZMqfXh7AYjcbZCUctQfJGVWMRKhyUiwBuDdIvoLmwAXqPF4ZlQCT7xKADjfaqF/A3/oT9EMWxMEzMwJUGwckAUk7Gz03Icsr+LqmIPUoTOga4hvPlr8dsBWZzv3Wn5U7tPrI/kxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=groWY1nj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="groWY1nj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE213C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727135153;
	bh=C9I2HIOQCkvEAZhxvnmmYaq8KMN4yH+yp6hSUZE5bic=;
	h=To:Subject:From:Date:From;
	b=groWY1njVLrfPRF4jBHTc4VDW7sb5cYC3Pm1iW0TWVV2g2DC+DLE7MQqsGx15gf0Q
	 oyKWdVHntBgVrW/J6EZliYV0Wl3MdQgk0RxvZCQSWPlJ4I3gJLz38/r418FE3tCeK5
	 Sx+P1mEeTmXtdOJvUykqlcrE31a0ekYBb6szwUYYlZ/ZxngNssuWQiANBBSVjnU6a/
	 IrQRcwguQXNdgfXAvsrFXTtGnSCuaG+vqz+O7eKATlz1jczLgGp8FGuRNFPC19Hcks
	 f4vsPBXqAd1sptRItOleZ+vgL9NqEH1TjStpsbRL1sGZLs7cPA7PnYLo6TjV96BBd8
	 iLdaur/qQKzoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9138CF9C73
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172713515365.9618.17311005913087606173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f23bc9c713315bb191756b7bf94149b58928dfd9ff4b2456315690d00d0af41
Date: Mon, 23 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727135153
