Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA4E142E73
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751431794; cv=none; b=nZO+0p6QrM92K5S91Qkdh+LN0WJNUgc7B/idlsv0lBQ543Pg3gOjD1veeR9o2wYgn59a4Dc7LoYCsuEbOlnuiRQphltVUIqSmIgzjCwXVj1G/Kk9EfdCbMKZDU4BoJi2n5HQoXG9YlJKgkteQJjk/WIUSSxiCqgxqmk26WmnaVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751431794; c=relaxed/simple;
	bh=eNgpp3eaL9tyTD4tiCdmOv1g4M8FIeaswS5wr7AcB10=;
	h=To:Subject:From:Message-Id:Date; b=ZvdXL+Q/ytr5UtqrfOtqV5lIoY8rMvDrMeytuM+MdfNLvjqjX51cPPZqKuEf/822nCAispJRAupx6UWA0muM+qI9bxOh52aawgwVLOU36P6VYcFbLXMtEVCqk0rCjMkiNkspLnGoT2QyrsyR+3IBDgiL/9BscFFMQb2apk9LYjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwJPDAMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwJPDAMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A523CC4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751431793;
	bh=eNgpp3eaL9tyTD4tiCdmOv1g4M8FIeaswS5wr7AcB10=;
	h=To:Subject:From:Date:From;
	b=EwJPDAMkHnBXZqE6PI0viSR6tS8usPoGlIA4+XWFXwg+z4sNf3d95b7wdJfyo+L8a
	 3m22kiU05d3bVqw7AUPuJAjPDAITnFTJ5W7q282xU2eKxRbTjVoP7jeL7MsBQpcF2o
	 NSw7ZLTtvtIZ0x3wSC6m1uELXyLUphXzRzC15mF6WubTsk7cuZbYU00UqnI4AtD1ly
	 4FrTFhVpQxwTC3mt/VGahh/R85OSLoGOnt0ZBl8WjXzD5iPbWLDNG8uQXeGONxX5ct
	 Ue+uQbKGkQlWxH4Vuwjv8hXdBv8ersN7waM/Xru40y6rhn+Q0NTAK58bGxAb+z1zVO
	 M9fWEeIApKkqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C3AC83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143179358.11478.59660081858001129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b962c87cefe62d74a86d54a7a82cc77702f0f1c6b0897aafcc3b013b05927ba5
Date: Wed, 02 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751431793
