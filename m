Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084542BEFF8
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764884574; cv=none; b=aZ7vyqDyhbuFW95pAJ4sGAC5vF30eeUnglQvsvh/Oshq+ONHBBXzM5Mlqy6KfOVccMfVExhrwmoI9I98x/JmIMuctx4LTKujj9EINiP4yFCiiStK7C2M/Jznto/wsFS8No2O0oelMH673yYPvWGKaFOGRY/kXqdbWdTVlOkFuFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764884574; c=relaxed/simple;
	bh=rc/12Ljs3PTFsIYTm6bbPJxh7MHE8SD9BE1n+bDel1w=;
	h=To:Subject:From:Message-Id:Date; b=L/1mA/uVpYQjSzg1mh1W52SRfmGL8rfWExeGmiyaf1GTb5nMFD0En7x3hHmxFQanYAzT3EOalwPlBy/lUblm2ch/vYkMVmamXH3hw7vnb/e+CBk8CWrTHQitQ477Uwki79E75WmGZ6/Goq+1IS06tFT8SA+oDTghkgGuHmB5U00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJ8tXFZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJ8tXFZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2640C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764884573;
	bh=rc/12Ljs3PTFsIYTm6bbPJxh7MHE8SD9BE1n+bDel1w=;
	h=To:Subject:From:Date:From;
	b=PJ8tXFZCbVaahvk3lh53QywA5zEl/8NW421J7HHz1IZvkuyBDrXP9JR2bvUCdbVWV
	 iUAyG6kl/Aurj5ubhCqnRuoHpaI4Gy0CaN0hyNBRlFXrubMvfzFApulvr7L5wn5V5O
	 wTx3AOmMm7GFUnRLauBmpRQUVVTGuH8+H+hddACekAttuVkITq0bX5jU40wZjf5aRu
	 KU6rjT2rez5Yt9mmceHvYFO6Y8trmYre2FA8sL6bD1n/8JkU/1TdtGq/+Hfj+q9v+O
	 DDuG3kIJYaYkRoCgI73N729lzpeYalMCC1bpNwEZJxAJPOryqHYtV5a8bydtFFurqT
	 xMM9AUKq9FkJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B65D2A551
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488457358.8722.16921716190522463141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f7b77032c4acd80e0d0feeddf9d592b62cdd56ba1e1894db1af8675d8e6422
Date: Thu, 04 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764884573
