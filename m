Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470CD5FBB5
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 09:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713517763; cv=none; b=Rzp3Xl/nei1mAijnfEMzqxibbtg3AgyPTer5US4gf3uQ+QfKKtaHvFhXQIIwNFzYjMv7cMGxN3mF5SXHibdUCOD9cWom7UJNe1QSzJtDimlQjNQSXNTyVr9y0nBUdSAL3sKLVXY7d1JYuDlCe7lkyfZA5nfGy+8TvTmqiTuL1Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713517763; c=relaxed/simple;
	bh=t2nCQcLxWyopJwA4IMpWItkaDidZLAnambqBK8023wA=;
	h=To:Subject:From:Message-Id:Date; b=eJfRQhS2nUsBCCySNzlHE4KSFg+5gZBPLiFoVFvcmSi+SKshKcmL8/gKbVoUJSoZymq3/SLkOZQQrGF1Y7wlg4Swr1D05Vsiu2/jGn/UISJ5QLdt0D17VAw2Yblro+NBjrwX4/hXqkoJ30W8y6X0IZzjvh+zfEn7fvNI5pUtIO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAKTSmOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAKTSmOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66B7C3277B
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 09:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713517762;
	bh=t2nCQcLxWyopJwA4IMpWItkaDidZLAnambqBK8023wA=;
	h=To:Subject:From:Date:From;
	b=jAKTSmOVkQS0JPXsoFnuhPmAUuUawUmGnTmZ9ZBvOLPLumKxGS0X1gG+klj5FNWOU
	 szTh/sP7asGXR86Udk7jplmgcV9tXpdiM3zBEDlAtKk+PLnwtAXAmYizaOeN1xHcoI
	 eeqO5M+TpgcNYQ5LbU3XOstVYzqI//xF9p4FeBIuV/MC251nXd4gi2Fw6GefHzCj6z
	 lyL9h7IleyLEb5eRF5xCmm9N6IXer3UaUJieXqoguPTcjzVd/4dfOrICxHtriaxEW4
	 u0GSBYctr9kGSxiUqUH+Hqjex8ws8BYj8er0+BC+/Z6+ytUoOYAe5F2rz/ui1sskfE
	 iQD1LFTgnsu9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BCCC04FF6
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 09:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171351776279.24031.782248676963059188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45feb536f60dfdf2bac06afcbedcca0fa74cc7f265cf9d97964bd9a4e6fc951
Date: Fri, 19 Apr 2024 09:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713517762
