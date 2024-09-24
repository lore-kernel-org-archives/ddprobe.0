Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A341B85EB
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727158554; cv=none; b=PiAkshfJqILuqFQQNVfmsauRqbsCHgAPKHzVaKEDqwvf569FV+Mp58YozG87fv8HEO2lJcu/+BFKp4Wu8iu69gRdQXejC4W/sI96Sc7U941M9YsEYkqv0YCn/l1fF51QJe9e0wG4NeVcoeGwnBr0N+115ZS93POoInAfwd/6QQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727158554; c=relaxed/simple;
	bh=7auZj4HUQ71XcWo+w9CO6+cD8OqzeMXCgWpdpFSHp+Q=;
	h=To:Subject:From:Message-Id:Date; b=fPcMMK/F2TRUgmRT+9WOV51xxBbnUn81MZgMSuvz5SfcJpRbX9Fjw1dWw7BHhvS0WZPXtoT9t8qV5qjMQIwYxPP0kS3hsY4u81wUYBSqpGQsZNQHAH5lF6G73A+HadsvnTFXyf/QT+jDToMwrPR9IZv6EjWB0cOUneOpplkVc30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYWqRSsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYWqRSsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E65C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727158553;
	bh=7auZj4HUQ71XcWo+w9CO6+cD8OqzeMXCgWpdpFSHp+Q=;
	h=To:Subject:From:Date:From;
	b=GYWqRSsXeeCmCCfl07EsqQQliSHS0/61/kD6VHg8fzuHQVk1jKf69qbXX/UJvrklT
	 TE1lUAsin5VEe98zTQ1BLSen3v85GRb++wQ7MhgbZxuy8OhRpj0E8ZNVK7CfZzQF00
	 LEvdcG3KHNCAKWsMHp0HOvJdNLpO8aYRsRzCznYOgdgftqYxmAWiJMc2c4TQkTw1sv
	 YEXweIkPekbB7XGMkduZ2ubxSenlpsVbow9xDXFxoL3fWdywiqKTIVtH/JNJPZClA1
	 VdX7VaMykg5cs1lIN2+5pC4US55gMqUkS7o59nRvzdiLKAQPgWflM9J/DDKHcbdBN1
	 YWIy9CbsoJI/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93451CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172715855359.29319.5832631945248138540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc4ea31224838640067ec8054aa4f8e6bea8278d1185acaaed2c6afbc41cd98
Date: Tue, 24 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727158553
