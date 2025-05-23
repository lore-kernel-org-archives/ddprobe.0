Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C961A288
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747986594; cv=none; b=CxSbsmyN/1uT+WUBLrdG9LVzc2PlucGzq6JlUcgZMoeP0ECfmOAyaMwS6T2ox3mcBiIDCqNv5Zo7Hm/7a1ScqosAzqhdIEZQRmAfRXDeerb4nibhbB4spr6QzQkXDV8Q+M9HmaFqMaC9MC6eJ1Og/ZrgvFrwyOsBQzT1Df2fjUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747986594; c=relaxed/simple;
	bh=IS9IqxTlCVdrxTHFWSQ4sct/RNVN6hV7NFtWgUpYqHE=;
	h=To:Subject:From:Message-Id:Date; b=uCf22KV5VDuSERZHNhXK5utcrApo3Fa+en5BLFkErfFYrCKxVwz7McVRq8IqI579Fv2RgmCvfa2g4CpOH1XM905oBKUuxHNckMrGXu0lIF7WjuCnARGfmZkVKhrs+CJrtNuy2fXSCfDxltUdpupAqqKZzPT9HwpePXapwGiUgZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9uIwQwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9uIwQwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AF1C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747986593;
	bh=IS9IqxTlCVdrxTHFWSQ4sct/RNVN6hV7NFtWgUpYqHE=;
	h=To:Subject:From:Date:From;
	b=M9uIwQwB9fjzNJxL8xeYDgSUzFx0dIwX0NbQZa9dJlFuN6lphQxqjyb1RVYZnEB+R
	 8MYHDKYlUEBZr+1odtf6m8D6GPd/CfygQOCj23k1e0tGp9tPlt6+qKrytEFqiV5M5x
	 n6TZMhfeN+ac/Mg65r9petAuFonWXI79M2XpWZ6zTrTM1z9kzy/fyglsBlug8qxBrI
	 rgt7ZswDlk691SGpcIqTaNbLznmtK4/23ED1nXipdzzJboTJUxX8O62pVTUIa4/YrO
	 2ZhKhUlzP7XBbl8Y7AD/G/RbnugNo4/3An0ZWKXGUd+sZbBSCVbKgTMznQh6NCU0m1
	 j2VgGaN/vQUJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1F0C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798659357.32207.15907423416568076520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c070185426911267547fe350f4f198eabe4f2454ec580f22aaee98b1aa9ff5f
Date: Fri, 23 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747986593
