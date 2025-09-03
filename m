Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5173E192B7D
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756868995; cv=none; b=fNEv/lkoEKH00L5p5PY49D6ZliefXY3M3hxBeSm+8DTcYBVuw18TygKoXGuoaRtzyiY2PPia1TmjF7SliRiIT2/qk9Z6T821s3v8Ksf36lzUFOWSt+DkNw1kLDiI4PBHafDyXyEhdcBCG5+mvsN26a86/RsTZA7gL5TWSKWlfOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756868995; c=relaxed/simple;
	bh=GDHe/m4N56anr1eHqWHTP5GdBYaW9671Ie/bIoGX3JQ=;
	h=To:Subject:From:Message-Id:Date; b=KXpB6Puovt7CDug2bTNvQaH0q4hwhstMxSTGr13rhsnhWe1VgI12ZrZ881eUSIVJXGaTlXkjitIUoX/VuwUd0as5Amipfsj0Tt6n3zjY0p2FSBS62wC+G4ZbiNw30J1EyMfHkgzH5JktrBOHd2AHng+tkWFLFpRyMpVtQSsQNM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5WXeIU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5WXeIU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5521C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756868993;
	bh=GDHe/m4N56anr1eHqWHTP5GdBYaW9671Ie/bIoGX3JQ=;
	h=To:Subject:From:Date:From;
	b=K5WXeIU7diLg2q16KeD99l6Azfg9RJWxoXrZi/S6MWDzg2fKrwnGDX77PQu5DT9zJ
	 rj5NG7M6CMrcvk7WMnNqJhs8kVsjlsJTE1EVuAAb9enNRV9MjIYsdjCIm8VuQQ4I3P
	 T4T0C9JenuJfuA1U1Y5jjfdYPl1Q5yEdkcGT+94tsV/Jd3ezqUejjnTJugThW1dsfk
	 JEoAzC7vZE+dt4eIFP4VYOLaC2FVqQSn21b3I16deS3MP+iqCJWZRGlOcxREcPeDUx
	 7KKsfD782Q3x1jn/fToObeXvcJBuSUtMByVrjnJB3gZm2iwwuv0aphoywA59uQdvIZ
	 5O2PMi5R5cSsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91598CA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686899357.17718.3307661436209509412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfa2c318af763624d390dd1e588a31b2ec307e9afea3c29fe512a6651e3ed73
Date: Wed, 03 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756868993
