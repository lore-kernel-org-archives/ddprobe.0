Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FDF3A6F04
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773298494; cv=none; b=qoSmtKRj5ZjJ30o3fQdxyceFA6wKAe1rDkouP2RP8bhYf1WS5wLwRTgrsNrUJKvQa/hijXXJNbf2Xk+LohH58LZHzva8B/z5XsMJfruuV9lo7UbnDyVMS+RBNeawEYV8VUo2KKLBc7OcBJ0Nasbwv0UBmO/p7QJt3tTOrE7vxUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773298494; c=relaxed/simple;
	bh=hu5UIZ9GqbxBuKi3vP5fm0geDjj8EdwAGgaV/fM2jaM=;
	h=To:Subject:From:Message-Id:Date; b=Iz3vWnHTnDfHl4rWrkhHZw+GM6UFWgcvapoDU5VzE9fLSea10pVTTuIEdQgs183T9Frb40tERoH8E5pA0az4snjuPMPBuOcOc2qQzahHCu1lXD+HSE8CmQHeGmRiRsDLmIRPhFYv1L03zaW+D+lRs2uVu+XDgwOnRzWz0uc8ngM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2NnuHgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2NnuHgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93DFC2BC9E
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773298493;
	bh=hu5UIZ9GqbxBuKi3vP5fm0geDjj8EdwAGgaV/fM2jaM=;
	h=To:Subject:From:Date:From;
	b=I2NnuHgEXG1aDIpM7ZA5cUXYpdKQCQi/XQZAe7SctX2/UXU9zoPOcYlyQveFAP3Ee
	 N3a1l13fR+QUw0EunckWEe70GpGsChvku6VKiFvDuKInhYy0MQuuovAVI0k+lZfx2O
	 f+lWQjil5Q9dOJTdKBUnzglbtYFo1Sr3CVo8iMga8cw1G44/YYocCvlUXOTtgHPvrU
	 g9jTZXcUD3G93shVMuOaRHgLAA5b7ktoODhCLYwr7PaP4eFclmH4BQUn3v7/6LTfp8
	 9aytvFzt5ZU6QWH1PoPNRxpAJfk7drx/qyaJN54TyBp5U4eDOhdnNroayS6LZywL2K
	 ZG7KQ0N98VLDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9529EFED2D1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329849360.840.16127102823609679465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b0a61159d7ce3c07a026bd2f14c58200c956251b1ebc28fb1998774f87aea6
Date: Thu, 12 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773298493
