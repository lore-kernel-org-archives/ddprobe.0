Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03646223DDA
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755081594; cv=none; b=tipPnhpMLNobCi7hofc784yWI5u6oXTpka6hj/zGJKpAhf1OZ78+gNgnGyQvZdlX1glQgF4DCjj46aLxSDfju3DukHCS0RynCYtfroiIkox5Qwofe6Mwe/aX0vCSqBacBbTw4jWOLridT5HMRgq65KGJUXDF85gB7fAufoth3HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755081594; c=relaxed/simple;
	bh=B1gzOqF4h3lwcX3Z2PE6jMjFNSeAA+fbPpw8PIiha24=;
	h=To:Subject:From:Message-Id:Date; b=F5Ebt84bOkaBmhdxgN7E9kXgig0l8oA1bcreungd8CcanqyHAeKKH6mhq21pfMzoI3ezISFSCxCC3mlTqsVOu9jO0GaWklPbgnBbA1h6544xCXVUVA2EkaBkBmof7H5hj1kasxkIubnOA2WQtfYH2eWSnKkWRpW9jSn7n7Dgofc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7NPyYhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7NPyYhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D996C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755081593;
	bh=B1gzOqF4h3lwcX3Z2PE6jMjFNSeAA+fbPpw8PIiha24=;
	h=To:Subject:From:Date:From;
	b=U7NPyYhywN1rRki9QZPKGTZyu0SP5NtwhyRJrSSLgIuftsgxfM/VKP05JOjHTheBv
	 6fhpv03hMARGwWPolPUNOjrASM87lnrGo60bM2ERAKSHPVpGbkF5jTlZKrlQTvYxdv
	 EKu/qu7PaNa/6MIvQ9RBkAhbCRiME0OGc2Qbs1nh4ROlTDWT+oH5egQSOmQh/+anwV
	 E1qBbKHqOyhQospGBP2qkfoNXRi99gJYGVAqjAbg/GLZ0e9yt/NEsAK6tPmDbBrHmK
	 S5VMpfWytzhxK6pMzmi5tV5rIo1IRbZMK6ZVXAxxw0IREoR6ww0se1ZspoyYeliSz/
	 eEb3g44/wfnOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F45FCA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508159357.5237.14521822030409522211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e98c3453a49021a38f7e42254bc949c399c3739edc767d4c1427cf77a33e4f
Date: Wed, 13 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755081593
