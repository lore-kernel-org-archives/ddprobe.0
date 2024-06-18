Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AE8160873
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718738363; cv=none; b=KhMpk2I9xhq1tSEWnZcOLvE/MFWlxECaTk/mkF4EWjbNBffEqU3gpprXjcmzpN8n4xFZxYiyGMeAlxJEXssI4EDA8rEPFhjG6NBABYNANBB+UGTZrpE5RFeUOsRynEZp8E+jHO7Q01ZZiUdKFIw7V8I9ygBSMlMZSqgtRiJKwhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718738363; c=relaxed/simple;
	bh=OJvV3hOy17W5OddbCpjDFcOAxvHUhhUT0kuO7RpTt+4=;
	h=To:Subject:From:Message-Id:Date; b=QT6b1yPBbMolRFzWp+iGPkoNiH70Q/n8WIKMCtSmdZT+5aPk94BiL2ri8EU7oUrU9p3yK8WPjVTlr/PhuCbwEipUvYEC8k3yP65cppm2VshiTE2czoPa8DmXt8hUwBp6oNhzutdUq1r9PHsQj2Nj/mujVdvKTqG7jFYJleuJ+OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgbLyA2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgbLyA2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB886C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718738362;
	bh=OJvV3hOy17W5OddbCpjDFcOAxvHUhhUT0kuO7RpTt+4=;
	h=To:Subject:From:Date:From;
	b=KgbLyA2QKqY53QrRCu1zYGjyrThU1GkZQx7jqaMj9qCVHEU1TEb5l9QKFtO3gvJ3K
	 /6e3YNvnid6BMPGix7hSuMzBOThz0nC+oEcoPJUCdqta584NZ7tJM9RLOIsLnYK7WY
	 Yg8i92HHu+QxiRZHnvv9zAqulvV2jQg8AKJOjtiXB1kxFELWl5KWv2CqQMn3ebqosa
	 8F5I+KesgxbFfWkE6RAWlaYKHRbIf9dB6KYoYwNgnP90wqqux4yf0QlJ0tk9HD9PZd
	 Ts/wM4g3x2vX1GicRpjOdsd2fm4Lq/xcGtjaIMqJh2i5ypmioOg+OGDjuJbxgoDMbQ
	 jjG4P6zrvitRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F5EC2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873836280.9435.7302865866312859004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3050a270fd25be011866c070602df298d8109e7a4a0e3f35e4ad7f6a4a2ce8e3
Date: Tue, 18 Jun 2024 19:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718738362
