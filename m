Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263C128B418
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752190794; cv=none; b=kntHNp9w6n0N1TYhsyzjg49tqPV8yXuK4UhFJm2LaLT1Wrkt2x68Sed8kL3OAzWxpsKeptwbMRAGBizVTGg9h5viefhVYfcBr4JRdOZ8wJPc19WoYe/u1SL8HEZpbzX5t40gkf3HqKpt2vV2dWupacV7VpUhZyePV2eMc+gCbOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752190794; c=relaxed/simple;
	bh=Xu8Nc61depJOoRmCsvZcW7nsXUNHh0VQa/KQ5Y/lR/g=;
	h=To:Subject:From:Message-Id:Date; b=JoOrtN+iChGF4XXBhHh0HFzlBO3YuJoaz/Gz9lxFOFpo77Ou4iU+r5+msY3J8oelU7H3j9gC6vlsVVyhacf0jNAHJMqP/hfBY2ygBEKnBWNwxYyxlx9aQLTCjURh+rIV2FzQBGrwzoI5Eb7qph7fFhqbRiYRw/6DJGCYFdbXJ/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uN2vILa1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uN2vILa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5A7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752190793;
	bh=Xu8Nc61depJOoRmCsvZcW7nsXUNHh0VQa/KQ5Y/lR/g=;
	h=To:Subject:From:Date:From;
	b=uN2vILa186o8PsMujcRBTn+FjbR6sroFUkLwBWcuyWv/GX08FdJHt4SlXN3kgY6g/
	 A3ndWv3sIGpuJvhmejK0WEnwcXeNYnFxLrpBydGlcgty6qjVzppCdMuZymc9F4KF0A
	 1ZgeflQOXnhItXKt4WXt074U6oZqGC+OYKnhFcil0nNdTL4hzuLDs3tMJHgb0uyeE6
	 bf0S3P8sbLR4onKnoa+IhCcWeCTMf+LRo9KsWWCV2x40rRpnG2tQu5sc8hkfjRC0We
	 SQF93U0U3ee1Vs8mIEsBpyvY6bcZ9yT5UPNfmCjZl8y84Wq3MafGXiefSf3rLBwhNe
	 5M0vfUfddbdPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEAC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219079357.12404.16433011381179860218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0db15c0f9af62452e50174c9de80b860bb8a47a5be6f91c6359e257e015e13d
Date: Thu, 10 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752190793
