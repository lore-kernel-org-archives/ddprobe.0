Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7C3217F54
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729941354; cv=none; b=HHo9XR1PcdkuxxtqcBVof9IClVv4gRXwnGvQWRVl6kFH5mhuQRE+s57E1tHGqLeUFlHIkdnrLLsmhRch9cXbOY0eA+Zzqp/CeREhJv8RWDklNogAv0ChbjBDpQuzgRkmUKdJFSTsgqP7BeEantJCAo9SQB6NS85EaB+/rrM0tO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729941354; c=relaxed/simple;
	bh=XHdikIRlahbdyiMEH2jiPbEneGqbAgaaAlkLIdRITt4=;
	h=To:Subject:From:Message-Id:Date; b=I7UOWa8KWg6+SRarXOG+T0L1tWEU1y4QQs1inBkG+JsVVO5UIDn1nupBquo3nilv57kQyX0zHg+S7quJiZ68UaW+lms3fFnjGxpZ7TgE7ITLewC1gQTM2SWLwlGWRmV9RTiFgVRuVbybFAaPvYOyD4NXN7hCzqa/PE5422S289E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kT36VF4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kT36VF4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF67CC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729941353;
	bh=XHdikIRlahbdyiMEH2jiPbEneGqbAgaaAlkLIdRITt4=;
	h=To:Subject:From:Date:From;
	b=kT36VF4PiE+jk0tIisfTZox8ZwwpmQ6dRj120psUASJTFCfiWuTcw1b7HDoUI8tPX
	 YmNvnGalfDSwyVje3+dBcj9LeOKr/6l989Uo3uGrnsMNhDdddHp/kIbKU1l20TUE+h
	 YjqfHh0sHl6PosZqrQlnZcc+QhJa0088eld0/1xeEhhUpxlRxB6vOu/iU6o3DpzfKc
	 5kWbeDvWvmCku/Cuh6T/HQODoSis3gaVB/Pm9cryXpoaFINKePZRI4c4E7J00OqiH1
	 08+UMOIeh49JCyX+X+4gP/NC75pSa38hiMmDzu3wSCTp8xfEH3RRPwssygRzTO/dQq
	 +/bEb+Pws0qrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED6BD10BF0
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172994135363.31868.3239816816594748136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d3c9c0178682b72d5b03e12f78f3102a177a8f4fe47b32c8fdefd27f912846
Date: Sat, 26 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729941353
