Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A30E36F419
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786562434; cv=none; b=g5HAv3hwnx/sknwwcrcG/FPcrpAN3c4Newldu8+TE7Qe5yoGQqz6835wYRqJAdzbul/dMJPm4OgI+K1HyPN+e17IN7xwXSN/0+xIMEgiYeFyVxUE9VeK8gtduHExoydWIVs5kKe4QDUkG0gsJiCgw7YJrUo1Gg23cVavCB8PvAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786562434; c=relaxed/simple;
	bh=22HYSuHlAXur3Z0YA+41Z8uJAd+G94QKgxFKyHVkNig=;
	h=To:Subject:From:Message-Id:Date; b=A8Pi6xs02/cI+MqgMUw+m1d58yQ/Bt9O7lSb7/1IQcJiL2R+RLYF0kplH9oVtzLnxJXW3WngDeOzyCiBnMj5u7UiuegVot6p0RxwALQ3Q+O9BH9LjvPc9OU1EMlhgSDlXmdqXaCnp9i45+sEpC76mFcZO3rILO/4orlggwjkqKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOqfIkSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOqfIkSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC4EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786562433;
	bh=22HYSuHlAXur3Z0YA+41Z8uJAd+G94QKgxFKyHVkNig=;
	h=To:Subject:From:Date:From;
	b=vOqfIkSlzYPttjkb9FO84pmaHfP5udh5TgAfbk0Bs1n8RReKAgQ0BWv7ARi7/4d7u
	 ZK4elBQdEG8VxZde1fkvx2/HhUw5AcxRjI60r1ZkbcfLPAgIVqxT83235DcsP/vEwX
	 dkQ8edkby10rMhV8H8wkRzJr2RFhooirlNFpvuADmhTkCfBOb4ftNYWfjhLJCEB8OV
	 tmtEavsLl2OsfVXnCKczl5M1NqkWui+skVGJG1j0iDY5FXV5RuqcaEuyRtixRDo9B0
	 o9DdGm06PSgjh17Tjteca3nAWhlIu3OfzabtAUL9BY89RsPEbRkpexqUtSLFcHBHnw
	 G4lVSA+v8jVdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B4EC5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656243368.16294.15235983698715813933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 751e609d3c08e7621e223c2b76897a976cc52b006861847838994cc5aedf01c2
Date: Wed, 12 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786562433
