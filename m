Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA1A3148D3
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781678194; cv=none; b=l3PUB+pmNvlCmPDN8ADqTGZhS2U+voCDF8VAVVCoqsnXEM+KawQLvqWicAouqod679pPwtwZul/EZU0adCSHatY7SPxQ7Rvqj8UBrGTHXVdWBqob3p/8RVyvJviXsP/23JNBJXd7AAtfoxFc8oJ1BrLilGnkW3TciQyvG+45MEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781678194; c=relaxed/simple;
	bh=Wy6Fqrs4uKB8OqX5mRrm4OcFQMcvfn7t3GTdyhFoHOs=;
	h=To:Subject:From:Message-Id:Date; b=qc1K6ElnYyUcIUVbo/4mvQfNUPBf6D75RBTGNZq9LuUUDPuigu7VOrrck9oR44ZxkozC10t30jiPM9GsqSboGpvSv581cV+mLE1PJ7sSzaDmG9R3QY/yQaoZlZDRdWXy7uG60Tvx2ftkDan9FQrEHNCsObIa4Bb+u/z/9n625C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0G3BHSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0G3BHSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4C4C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781678193;
	bh=Wy6Fqrs4uKB8OqX5mRrm4OcFQMcvfn7t3GTdyhFoHOs=;
	h=To:Subject:From:Date:From;
	b=t0G3BHSgoN/OTSpbIOM66B9flPl2JOCwoI7bID2YlbQAZphnnYSfRNycnvCgN1Dn+
	 wfz5cyxXmjf6ZGc5BMKY46GH+LiqT3ppy6cATsJD+sZ1HvHsNHyx60pGfuQVWTzy/8
	 rtCXg9w3pqE0yQHgR3wZ1du9f8kQ+F/QrGRU+llvt2ZS5Z3TawAw2qqIhjAI9A4iN9
	 xVpH2ZAR83+27BJYHp/ptftXFiflEDLNCQ0wOffUXjX4kS9OqZKVK6Ig/55K6nCghD
	 +nnU6Yhk1XfUWk7Pcqp06Mc7PEh8eJQTY5pNX+iP9Ot9BytjLnA524mAJDp62Bjlwx
	 qL38PozG+V6OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02BFCD98EE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167819371.19768.14122443264692037761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0fc1d0cc31d6705362725613e5730c8b11cbf784e28351c8987dcf7ed671e0
Date: Wed, 17 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781678193
