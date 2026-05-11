Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209643DD522
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778506834; cv=none; b=e/0Q2vZK4087lwDwT32u/rbckR/ycZzLZWn5EUEUWtmwXTjvudYhG1+JHm3htIGB6a6C8kGrVYOONk1gguBeUJQhmwd+/2/jHLoCTVKPB1EPuZ/V6ZUyaTYzSDEC4xlfqbfHvqKayivbYM9O0OSOvhfIKi+OFceWQjxI3jMpF9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778506834; c=relaxed/simple;
	bh=bkOGgbhSTWCDBDZiIJtlZD3WRERqZpUnPrdMXVuHMis=;
	h=To:Subject:From:Message-Id:Date; b=HHAEIYcTa0qp+cLYZ1T2VW0yYjcnnu4A5GKgAdnnjv2rLVpOWeVEzR33KVijdSp0Bz76yOoLKFRLFQfD/yZaYN2FLJMoGIDh+7K0tYtNpwxHY1wgsJMEXzZ9FuMalw1a86BJWVL1PZjilHW8B05v/XH5aUZ08HlQ3nx4NIhEPSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGpxckeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGpxckeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC469C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778506833;
	bh=bkOGgbhSTWCDBDZiIJtlZD3WRERqZpUnPrdMXVuHMis=;
	h=To:Subject:From:Date:From;
	b=jGpxckeBMXWEs3Mj13y9SsEuSs3JmRUFED8NjueNZlgAQmBiPyEmA67wqfdWnoXKX
	 Op/JyjCoOdMqFfk1rHTVWGWW8OYwrvotz/X52BzmG9Xuy+5GROa8jAkvoqm0Pte1Or
	 qspeGBS+DKF7MxT2P9f9V8LETmoBqpg0rzlAvhaaYWrLl8FG3ayNRyNIj5fRZFMtot
	 ZP7kPIq6JbTYBb0UpUYO8HaoFHIVcaC85vsWgDrmjaOW7iBnUMLPo/ZjroMhTDt7Qe
	 kYoQUgEwwT7HFM2H5f/BaJSeesZJiomZrt2RggvSl/NDr62GtLHeRiCl0FmXMqRFD/
	 l61lErdzYE5Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3AACD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850683369.15528.2614924044882969813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077504b62d0d95716d49807609e10e311c858b8bcce3d7733d6e3db2265e9cd0
Date: Mon, 11 May 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778506833
