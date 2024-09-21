Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B1D15CB
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726942554; cv=none; b=p/wo4T9qQxwmSGa3mb+bHUyisakstOaYtBynP6w6cL0ScWUAWKvSNyfj/zwxu3T7JBKYyi3h2WjFe1INyanD3FxMppd4LAWm6YbxveNDHMHz82BwAJkHdAnIjuHHiGjbqHCBjvHAJa1kD+gwuDZ/6xOraMuan5GwfjsanvSH55o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726942554; c=relaxed/simple;
	bh=jaO1bJnGdlaei4jnNLD+tuSzneCy/kbnjLBijWzs/KA=;
	h=To:Subject:From:Message-Id:Date; b=PynJSK7wulC8aqOcwKuBUdEwd46rjhc6rucMMVR3N9OKJZb0mHj401ulo05npSvm+mrZM6T8Aq6RMFAzl4eMYABwgAgU1U0J9e5Urg60/WHzjG7oQzKI7UW+C1QG2LNuXVn2Wco9q6zJGIJOYGAIN379FfnBENE4i7F9hATcbcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tufNWJ6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tufNWJ6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35D8C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726942553;
	bh=jaO1bJnGdlaei4jnNLD+tuSzneCy/kbnjLBijWzs/KA=;
	h=To:Subject:From:Date:From;
	b=tufNWJ6pGvQp1s5lcvL+gUyjKLq9g4sWbMQ5WOLvpTH0OERmQJ+gK/EIYZhzD9VUU
	 Z1pQTpcBSYN4YIxLshEvBUbtSHQGQ4QwBBYjZ+PlYcu3jWrrMXCTEDVHdkRl7nak0R
	 EtrTfCSnvWjgCbTludckj131DavQuGkoku2e2/1n9OnnTBMT4dsO0qvpLDGLS73fuE
	 Y15PQVXwzmNN/XGbl8lq9bvZgrLrU8IfIVABYnLXyAyWPqYyiJGltcHjvynW0N7Sbg
	 jJQar5w0nQPTpjilCQrnCTCqquPsSTUqdpoutGLdmB2VdONOg8ETXg74ugVD/+8MjB
	 Us1QRJUNUyFOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C30FCF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694255361.24011.6279825027054176059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3214617353a09a10011e8be09d2992af921db34e69033a1e02fcd092d10ba84b
Date: Sat, 21 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726942553
