Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5A52522A1
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756397395; cv=none; b=h6R1lxSHUSfSkHxF3p5/KIMPvtAkYGGvHj+Xlh3IUHZ26p8Zk52rKMveotjhCJKhUsLqQWckqQkCPH+FGMbHcts+gJixXMTx7SaAjBPAkrzfVTzbUHEYZRQch77N9JUqIx490jBV0f5gdle+IozYfrOCCx2zRioYydPphfbX1no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756397395; c=relaxed/simple;
	bh=gvZsND1jXUVBstEX+ZcaXHemV2srptIKVJsVYJcL5B4=;
	h=To:Subject:From:Message-Id:Date; b=okPGdqFFwirKNGYEtjXknRtYgvf8MQcUQNRnDfz9rz0u+jO3G2X6hjMoSxwoWMnmWLPrrrr0rcI++Wcom42UXOqZhPEhPPzJPwl4obgqHEpKwayCqJWrCJ8xHL51KaS3Y7Ao1hKZECcvOze6vScSC4LeEurC0kvkx9Q3Wa8SavM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INj2Pn20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INj2Pn20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20A4C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756397393;
	bh=gvZsND1jXUVBstEX+ZcaXHemV2srptIKVJsVYJcL5B4=;
	h=To:Subject:From:Date:From;
	b=INj2Pn20oJkEdGbiYzq4WPvsh0K2EppEkxUQulbb6ddKfZJxBKrEEhSRIx3sIoXPO
	 KZdKRjF0LgBTsBZTnQ4suVU/Rgv4s/us+ZvAUsNl6AhIYcn8iVBFqisG0qlem1wwB5
	 St0rpWVJ7q5V2Itfg7rR+e2ffBG7+9JOIhwY10UuIep4v4qTM4cRkpP8HaIuc23ybn
	 GUqPz9j0XpxwYFdYhwqKqJvDnOA5865McXTPQ8qys/Y/03fRv6pbKRP0ueCs2OVOn5
	 I/femKpV87Bbwc7n8SJag9WNxb3Bvjmqm/342Hmcfu9HYiH48qz2HPO1buALDqT2YC
	 ElaxRVyENptFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F245C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639739357.22284.7321086076445449504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be01cd9834a5c1618bca342f3ba9dbd80d60b55c3b8dfb2d111d29ee44f8b54
Date: Thu, 28 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756397393
