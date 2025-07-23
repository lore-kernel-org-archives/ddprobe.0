Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C2CC221F13
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753280395; cv=none; b=jAUGpzPTGzN6ZfXir74V1siTja1iBRtl6clslq7LhmF3/YB2E7Rlwk6taGYHFHwIQ6feIHGZR0dDpSFHlpjeRmbVrSDehEKsYKPcHAQ0YUMPxZTFUxRy/nO0PrjrWg0QdGNLoxCWKMZGDzUKpsy7AeLj5aGXkE/0Ktu5MNwGwwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753280395; c=relaxed/simple;
	bh=81sJV95ml6KfMJQw9hzIZ/fFbqSWJt2pTTR4rv4piWQ=;
	h=To:Subject:From:Message-Id:Date; b=gkrK7Skxx3WHdkFeUdCBaqD714GxpJvHktA9VN9Z1pZqnFmohCAf8xfHvL9WfyLWw2d0J7169uNWO4JcDd7WhlX23OwYE8tzHMx3I9UjOeVeJbISgIibZcure7KKpgavDdDakn87kdIBVEKe7zig9b2Wts/kxhp0LFhZOGZivf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0Z1niuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0Z1niuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1085C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753280393;
	bh=81sJV95ml6KfMJQw9hzIZ/fFbqSWJt2pTTR4rv4piWQ=;
	h=To:Subject:From:Date:From;
	b=P0Z1niuf5wu2JVzl/0eIg0hK6jtzWy+l/8vDpt1YJY6H34Wm989dJadMphT+1dY1/
	 uVrbqyuTzyjIc9++eV7YVPrN/qfbTo2yLgFXXUdHQUZ6HJ73PpJ/tFCXabyd0bzXr9
	 QpkJYgTZSjqiMkK4zJWFzRRKYTFkUlVEhPtUoq7r3XjtqeEXJ4kiLjA9w78NDTFCjK
	 vWx+/RLhxrLMfGerG1gD6Rpv4AB6estMFgnWpA7Pa2ScR3BkA8TsV66KlDH53t6v9d
	 91AN8Mknik5MgbmQOAwzkRa8zXrPQtysPtzmR268eEPdNT5EBbhNIK/06DQTzdyspN
	 9KWgblCHsIsNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140BC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328039358.16384.10103776327102780371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec1584b18b62c1b98bc562aaf3d1b62929531369637e45cb997daa1953aeea6
Date: Wed, 23 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753280393
