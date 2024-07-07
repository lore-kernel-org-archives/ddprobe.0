Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CEBB641
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720356383; cv=none; b=oywEl5Ekaa2zFCg54QhHqtTjtueBEWiaRqdL9FBm+FiGKLJlWuR6oEIsDefEi/4mwgz5MzRAwCpJgqWLtGWEQWnPoa8k3yuxw2/uV1M5zFa1FBK2VCia1C9sECKOdtu/lEvMqtOvoAXTBYH2dcBGIGAmAGG9Y14GrAkJAuizW6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720356383; c=relaxed/simple;
	bh=HKWA8qi6dlrU5UkEzL01Gp5QwBTDcLwSYbmpZmARfFM=;
	h=To:Subject:From:Message-Id:Date; b=U0VzUvGHtM6k6tFdurJZvkOJ60V15FL0vIIkQs+gcxDmG3AFa30u4uU+8JGqaCQV9UtnlJQnUPlaejn/LelBqBc5di4MPJMKyojpyW0BO6XgBvPjKxwGDyyzAByME4ept4ffnrrNuJJ6yFePVwkCA0EOiIzxHXLfCjokKrsJG0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vau3zf0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vau3zf0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5025C4AF07
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720356382;
	bh=HKWA8qi6dlrU5UkEzL01Gp5QwBTDcLwSYbmpZmARfFM=;
	h=To:Subject:From:Date:From;
	b=Vau3zf0XS/NmJ/uY/oZ94E1gOcdHuq2G9Bj58FqemgfnOabkMLpXL0QGe924m0Jek
	 10kcc+fSu60ecaFU41VjtaOwMVXcBxANXbsu2ZqLebDvR7ygaBxc3VgfRhLAdAkd6Z
	 lph5TSMC3DU3KVzXa52vGOd979drmWxGzI0Osq2QzArdNkMXukRWQL4u3EZHK1sdew
	 DtsuEfNW6BIFaLMvS9MZu+I7eIRtcj14JibZUu5O2kjFpaVY8njL+q648qXBUf9Gaf
	 xT1TMNZPAIlC2F/9b4ce73Aa9+ZZmxscvGKekSIJBKjUvDW2K/NEPWdQOB55TnWZzG
	 pc5nZ6WyZgLLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC6DC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035638277.7509.4621669674867606095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2279aa3feaed8cf3139d47d3e519b55feae33b62e87b90a4a57f68ee4d237c
Date: Sun, 07 Jul 2024 12:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720356382
