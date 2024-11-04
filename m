Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93DBC5661
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730686554; cv=none; b=rppy/JQpgOkv0T8fDgm06pS/Yx9ZpoPqTJFum/16ZdHVC1cSwDWzh8q5v2WivEvYJvgHt3twXqtZRIhkaQ0NK44rr6CG+RnJ9v6XBIg9a/L3RXZNUH4DWB08NziCiG4wZq9dQUrOUogp6sRhERLVO9BWDv+g5oQAq0kIfUchVbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730686554; c=relaxed/simple;
	bh=hryexl0V5btmewjE0sNw6AWXr8l1c4x3WXBPWl0mrjY=;
	h=To:Subject:From:Message-Id:Date; b=dbbJu4glhnZMNNk15HYkjF5rWSVptoy5CvhF/h1rx7LQEgw0sTO3ZmQg9NSWpkO3rvS/C93tectE/O/P30JU1jeMJRPpB15DD25O4LaxUgSeJE70GgUU+7CfEft0tmghR8jpVj3Ufx8OXXO4gVh4TkhuLP18lOEdXdz1DdIZZY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRUn1iGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRUn1iGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9807C4CECF
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730686553;
	bh=hryexl0V5btmewjE0sNw6AWXr8l1c4x3WXBPWl0mrjY=;
	h=To:Subject:From:Date:From;
	b=cRUn1iGbOSKEjs2Duh1V8FncyWZbvAEoYIOqz3/kwogmj+UQXckLxu8JToYhnnmyN
	 2r21g20fOGLJSQMLIrgJWib7AD8f2+lB2+lRRwJybMtogdW3IgvgNDZpVKbJk2gvJz
	 IkLNa4bZikzsvF8k3s7Jto7ZduBquNuObUeTFaOGkUbhmJmUXpQaBB5zpOxhbl3DP1
	 V/Z/eFldt5tsn/9dJU2Q1+J+gSWuVyLFErMfOm2+4f2C20ItP82Onpc9xfbWWkrM3H
	 /fs4wHBbQFbKw6iVlO4Dlz/3mfZq3j3Vzm5tU9HZbfksaef4MoBgBWyew8YDOX1rdg
	 twnDbPL6pEm2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9760BD1119B
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173068655360.24463.13196958123725363139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299e412593ddcd5ffd4fbb76e865685a7bab539e686f22ed3edb7c18244f96ec
Date: Mon, 04 Nov 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730686553
