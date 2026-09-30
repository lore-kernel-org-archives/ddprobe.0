Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8F41D47AC
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790767234; cv=none; b=T2De3F0EVT2TKbcbJbnlCP+Va6AJUkCyYFY6h6oZ+FGsISEBqv+hXStdI2lthVb2wcHlb1ynn6kkDetGh1a8BgFpqzAixgKUoWIZUzFHVI5Zlr6d78/r3SG5Cv4Ut0y3QBAp22LKbsX8rLn6oXcPftWpyHuNN3Q00iCQMpWbpx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790767234; c=relaxed/simple;
	bh=nkm3b8UsZHzhLGCSJHpVZiZp3+7D0czS9Eez511NLGo=;
	h=To:Subject:From:Message-Id:Date; b=KkxanVRCB4sS2tiq1ij5zny6n/cweaOs4lHKX42hLTMYfelIPUbDCLeOA4ssEKDqB5aap3o5YgRYIuurHTXns3fNMUzFRgOiXJ0vngNC+1JDqFVuGdyw4Oc22e+cf0DtOUXAaRuDKvXqquYLyEKYUbEn31kP44qjtS4Wo9LEN8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4qCHXaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4qCHXaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B09C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790767233;
	bh=nkm3b8UsZHzhLGCSJHpVZiZp3+7D0czS9Eez511NLGo=;
	h=To:Subject:From:Date:From;
	b=c4qCHXaPkTiZrT3atDCqWZlg5OFsL5H4PmteeMRveANmiEEZwtnCTIV45jtYM2N9O
	 W3OZ5XniUzUcKUMtWmAxVhFe0u6zHsQoagdAtpBS6JkFpczUWD7pe9ePI9f9FxIfL+
	 4/6cwQKK8wVHS9xkbqWBNPql9XW1cJ4cTaDWEHXlSPtA9+1866sIZX6rUPXv9oMH6O
	 b6ALnU7e0+Gb9j1WxpAvZYH7i99MLd8qsLc2imVNkbg9swioMuN39pJ4AbGdPG3mWb
	 LOozTQPG9zIiCsltCKThcf8RmpgFRUDGuD5Le+kHLFROghRFZE4SEURQ/rcXvBQb6w
	 Hj8EsZuDftZmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99C8CA5FBA
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076723368.20020.9748680134037261387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132145e209573d05d73ff920529e2582a8f21ae93ef3342c3132bf6c890c64d7
Date: Wed, 30 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790767233
