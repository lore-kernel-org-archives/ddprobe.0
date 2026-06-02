Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458872EB87F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780433674; cv=none; b=VVQz5vmiHEk3bzVCZDBFUcaD253Fb7TSazS/A9fs3ekpyNGrNiI0kZ6nCOu/F7Df+R+QxZ9YQdy9Ni83brVjetHJlZniyf1Rgzcs1PweZlEXSVz3sx+EZZTPH/inf9MklpgBDiK0Mw8MZIFpYTiaDmQor7qiFKw+5vo1pJQWZfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780433674; c=relaxed/simple;
	bh=MfcJ3rlpOwlYjFwJuyNZt41gMqlv3Jsza3Uglf+RwFQ=;
	h=To:Subject:From:Message-Id:Date; b=G3/jB98WfeSD1ey5ILroOMHl/YiElYyDTp9ImsT8IxQ2MI8kLA3Md7XDd/CikFwzsqKyPB8Kp9c7cO5anPP15NET8EvbL0N8D49LGXH8MZkub0+XeDiKil8wUSwZl1qyFeGf8e+3lkff03H4xHJJw2cDK8/DREzpkyVcuc/7lYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5H+qqF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5H+qqF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46DEC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780433673;
	bh=MfcJ3rlpOwlYjFwJuyNZt41gMqlv3Jsza3Uglf+RwFQ=;
	h=To:Subject:From:Date:From;
	b=M5H+qqF4/IGW638NlYHQvw+DIbpB9hJKhkrYCnqP/63m0OvH4XTqCvu262le1LNo+
	 6O1efv0lHvGXxzRpPBfPkn1qgpGfQEGhhwe2du+1z05f6iZXCpP+I1bXcaslnSdhWS
	 5rz7Blm4vSXakNZ2Tn4PjFxQshI4dAgCwdpMkVVUtelOjyqqjz2k3xiZ3am0q3n/wh
	 mvCcHnrJuKq9GI671s7h1rRPtha6Q5V2jgP6l+1HffbHa6OyljfSTtjeGI6wdjwkXo
	 3m9DhT8yDsipgQQZhCm/6PUol4E6xsxFZSsDIlbJh7lEKsAjhKCnaYoVn6TZ/jWb3m
	 lhmfHget+Czrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F70CD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 20:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043367368.22399.8523276191744709914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e33606c76a807218d93fe99cf532a71f37452932e42f13a60dc070ea9219264
Date: Tue, 02 Jun 2026 20:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780433673
