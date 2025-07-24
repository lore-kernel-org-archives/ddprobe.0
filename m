Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB4533E1
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753318794; cv=none; b=GpyaiQObYgW9TavC/9cwC2/MRVS7g/97Utna+YmwaMY7N/so/A6kMkz9lYbVH7hlFC7RlNi68554aeQ6pXPazJBAAnMm3jH9cX0iIPvMEin7HDor/TalmufjwRsWWXgPcODtwBxGNba7F6SjP5kktUjMHp70fBS6pE//hthz7sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753318794; c=relaxed/simple;
	bh=xSwO447JfM+8bRV20u0lgMaVbPUm/ZORz5NuJxM2hZE=;
	h=To:Subject:From:Message-Id:Date; b=iiq2zQtj+yOZW3w6hi5JO1Anv/2hDn1E98mwRM2t0N3uh5eT8kErL0mXgf5MVXKqkrSkXOPIDsNDuo5eFWe5UR/aF3hyBzFrQma6hQQT+p4DBTUyWalyFM9ZMRyg1eVcOB7i44vlz2PqLD8FIZN7kBRDJxwKKC8gcngqtxLe2Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fg6uBeun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fg6uBeun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8DFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753318793;
	bh=xSwO447JfM+8bRV20u0lgMaVbPUm/ZORz5NuJxM2hZE=;
	h=To:Subject:From:Date:From;
	b=Fg6uBeunB+jCZCBKxrOkeLw+oSZHIzyap5o8D8fWxRYHCSoznsR0BJQvdl0wUwl9D
	 3mb7vg8f3RwwqhbLYcdnpLObvOUF3+CtSxW6n0iO3VNhBuSMGeQokTdo5t3nGjTCks
	 RGgRafW4BwAbE42KzVNz73Hs1ETEC93E5QMKFQRU3n4QQQdZHgdpG1RY6ek5QIUh6u
	 +8g7qj6o5p+3n3FjLwUAQTMui4xObMQDsMwmcSb1jMNr0PxlvclOW4AeGR3EDjCHjP
	 LX2gslUoN9u5cBYyknoO6ZzAKAY8y0qOpqA70qKguwFzd04FHqf+2xn1NMwxYCwq4E
	 UTbQvIuPDDHiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9174DC83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331879357.11703.1730417026491707454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802759cc5da8efc84c43de3bc9bf21adc48cef4711dace7410ee478ddea6d8c8
Date: Thu, 24 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753318793
