Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A566A8D2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732715754; cv=none; b=VW/fdAfdFrkHaT30VCPcNcB7hQNpobDOBZNqHLYNJPgp1EGAHH6aHOUzwUZW3p35ESnCknT8GcxCbAGkHVF8kwp9KfY48wcCxBzK6LrELKr0N4AzsGWQA5FNlulH0wABgtyBM83Wfl8qGsBGsgz3OtdjthQUXa+DM2IzYw95t4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732715754; c=relaxed/simple;
	bh=VD8bP0VV+C08y9GQ2XWJY/bEKU46eI/kxrDYIbLLAck=;
	h=To:Subject:From:Message-Id:Date; b=j5BhwYlWJTxLaWSnMmX2LNF5qc8mV38boWyqeStcqtq5k3hw9xNMBA3+6m17tA/kl0eehd6JDgAVeAytJ5penjAFe83nRME6ISC2JypSeqtCvbzW2STyuVXVyQysY9lrXV6RPY9FIfDeE6ajGjpQv6hgxyTaw8P1i3lHw4OiYvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smJ7uqU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smJ7uqU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21B2C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732715753;
	bh=VD8bP0VV+C08y9GQ2XWJY/bEKU46eI/kxrDYIbLLAck=;
	h=To:Subject:From:Date:From;
	b=smJ7uqU4s+Hn6bHqpcyQn2NcsoncebJANMxvYlxBudrZOVJ3rH2drFYNI9ZSu+kem
	 Cu8Lv0rgWDA8Q9gJbs9vbK4KsDVvrT0nntoZ9tWTnTQl6xOy6OriM5PGIyogxBhxWM
	 li3j04bv95ZxhWJIXkQwxbAUPRC77uiS4PV2RgLTsWpX81T7N10nJsWHfw+QXtPWm5
	 SQBjuRK19o8bJsX1keKdxr3E9WwVTwkxiBs+6aQgcdBGRZFssTsHPTmv81Kju6Sie4
	 61vwz4h9bOvOxCjHoUiqcIYZS8+WsRZFoxQdJdmBf+qzoWafs755NjXN71KZs+KmwS
	 CVOBT0muz9OVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C180D6ACD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271575362.26268.1062377591797866326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec63057b9d7861c22b1869abc8126138f4c4585fdc28fb5bf422802eeb33a16
Date: Wed, 27 Nov 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732715753
