Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234BA823CE
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726256154; cv=none; b=AEKdSsUabhTxy2j+3zpGCWSTPx9u1jaCmhBx0pX997rZ/TC0W53g/oYEiLsUvDmYRifLMnGIsd1+ifjjtaIB7HY5TnM8J+o05VaGLozSmHfUUNrsnJCdoIW/LfMN0rYEsupaQ8Nh9Ck4RaAzKvq+MfuQWgcoFgxG1x6m5Gauvi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726256154; c=relaxed/simple;
	bh=weeF5n3G2c6pW+u1nbMeNHWM3IitZd3IvVGHhxXOnsA=;
	h=To:Subject:From:Message-Id:Date; b=d0rp4vNkOsv80zx8P+jYCOxXVLtoJzety1Xa1DshDsbfjf4Jln/6YG/KBb6SO5nWZub9l6DbbCBl1iJYKe89isWZl4WOVs3XLYUnMiiD3lbArsjIYhNf/u2D5hZMidYsI1MBjKc+SftwsClTdQIAuyA2YzTz7yPzO4gm6PUGfH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpvqkrU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpvqkrU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A90C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726256153;
	bh=weeF5n3G2c6pW+u1nbMeNHWM3IitZd3IvVGHhxXOnsA=;
	h=To:Subject:From:Date:From;
	b=FpvqkrU5T2ALIXG09PqTlT7kmRS/Kp95qCAjrbQh5wd7sDUqMNkkD60xo4XxdSeP5
	 xoDgDFZetmE0lWsjB1zCCYt63PCSCy07EXlmcta5A+PdwTGrYsFVLN+FEUeSZ7cXMj
	 2l3V6Q/60DrUcWjtSz5nu3jsJD2nezqmvbZf4GQzqjrMTBEb9ujvW5DCZGjjufLdny
	 scMJuRLr5CA7Sq6lYaz4DNxwKsS0Uy0mqwpCaYxsaRSM3ulgHFIOjzDhg8YOMaR2Gl
	 qHMLJk9P6gc2UFBhloELgbPtfDArfIT+WKa0TL5F4gNO6vKuh63RH4tF5RhhBtNjnl
	 XtSRqq36+iFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94005FC6171
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172625615359.23016.18437661723663066110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63a58ea9863294c39be8d7d1635eacde7ca34dd1231eb7c85865aa9eb123946
Date: Fri, 13 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726256153
