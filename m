Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2289D35975
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766382834; cv=none; b=JEDQhhR0H57rxdIbE4ffz+XXh67KKOPO38vyVITOHGPNIlTwCP4iGvEalJCDP+SVQQCj9mIG0c1AbqL9kTR5C37RzauRpxSCHa4klFFjxgh9jL9m76KlF28BGQKO0psg1yPipq8BR9Ua9EysZK4PC0AFV1UvnQlJVQSad/600/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766382834; c=relaxed/simple;
	bh=Bg71pziD7zvsdR0FZ/AlwqCfYVKNcwd9/1ffiSgS1Vw=;
	h=To:Subject:From:Message-Id:Date; b=FiEdy6n/4esT5k+KidTShsMg0gBL6VO3OwOlEbyeFmBs6cicb/OZK+c2ZvzZMfCl1hIt4zJUaezqSwGhRCex4DK/+A/QmQCrf9RC0rTgg9/kyG9rIHX2rQCdvWo5OBak4oLEy4xDWWfPwL8mGXj7L0HEU4CaYEI8I7kl1JP+lHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=absS3XEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="absS3XEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA6BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766382833;
	bh=Bg71pziD7zvsdR0FZ/AlwqCfYVKNcwd9/1ffiSgS1Vw=;
	h=To:Subject:From:Date:From;
	b=absS3XEK49LDNrPFI9ZbFB4MoazIx4PlmtpPHuo/5M0TI1CFEa0ihhbEaWFDs8lfo
	 bkqT3CZSkJrtBdGa2vfyli/GTdbt2oT0KYH43yZVkbE5GRlGTzt+Ars10GFZSKCzWV
	 7Rg31eaLfVJHriTBXuh1VROFVW3IakvGuWxBW3+yak8bW4DAabd787PNgkayLffYr/
	 Kci29GsZkjiiOtVR5ynR9gLJflZEHWze9BpA4b/2Qju5stvxFOyatgSzPwAAbURPP7
	 nyCeGLtnpYRVwHAabeSirvYvmy9KSxWboBkqOwG/7nn8qD1FRgN9i5s+/wp9M2xMps
	 8bv8oEoabSSAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F2BE6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638283358.23589.16342214265917652623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4575b26893c85adb2e59154e922303d7b202558d5e50f3aa31aef48e14aa0030
Date: Mon, 22 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766382833
