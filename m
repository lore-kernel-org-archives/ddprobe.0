Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2C6275AF6
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759231194; cv=none; b=AUsb9G1H/zpgmey60vk3KVTRAeYS+rAF0MG/drclq2cBC0HFgUEW4f7Pld9Qo2wGqrii7rl8zK/ZWtyVeL9r9dzSD4BIDiAooLI/hDfNNVInnSmf4ktbTF5h2ht2zmphYRJY1RkA3V7cIzEvcg/QZleL0bkvQV4nuHzCzd5W4jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759231194; c=relaxed/simple;
	bh=SGgncXvS3iw5csyFoeWjewQXHLIFODZgbOLUGv66Oqc=;
	h=To:Subject:From:Message-Id:Date; b=UC4CICq4tt0X171yufeWOBnzYt6f4nXMUAFZEkkORxq3vsVuhDBZaFTc58kzYxg4AFSXsRijrPzg1+tiO8iHVdFwQgzjCQpbCroHZ1j0I3z0s4BwFShz+KnC+qKE5r9iKlyErWTU20C3FpK57rmJg+P1JMgrnDqN79b9zXr7KfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agqNCCs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agqNCCs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CB7C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759231193;
	bh=SGgncXvS3iw5csyFoeWjewQXHLIFODZgbOLUGv66Oqc=;
	h=To:Subject:From:Date:From;
	b=agqNCCs2yt+pY9FrQaCSui8V0dH4NZyLenRv7Kc5aEX6Dy3kJYtCP71oyP8xpZaEK
	 O7nJhTv4czbZVLhqiu44MW93xUAzvCy+GJjN6ClSTGqwEeDclC+e3LKYjYbBYaolIK
	 mecuc3y5NkLWDC+fC9ojiGkKYmef6RCoHzmXuqUbv/zsSk4WtR+Yh8ckL6XaLj3VQi
	 4WRJi9U/U8X+Y0zuVXiaAnsLc80G/lsUGw9Xx45OjQ3d2lEwPsAqpzWDsahtZnN3LO
	 9B94yjbkH6tp31N2qpM3FFXXjvsU+E4AIoR/3iius6ZxzFCMUvpaZcWNrIz6VUgi6S
	 Bth8s0wcGVe1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F2CCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923119358.4337.2490598570310088196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e23b52de35a58991d319d383a7fc42b5107b0bb632795347de9add3e6eb0a6
Date: Tue, 30 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759231193
