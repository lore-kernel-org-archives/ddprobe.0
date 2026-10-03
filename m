Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F2A41166E
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791021634; cv=none; b=lKAbfevwD5n4AUiGtYko4/Z4QGMKqL2E6V7GVHNWdIhYbGDFjTx7wcAam0wxhOSYVZwNm2OaaboorAxEo91eeaPwATY+c+UiVe0J7LeKfV6/mtgatWYETSUIxfkGTH4QcQAh2bKkFhrYel3z/TrLjJ7C69C39h6erAH9vS0sLOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791021634; c=relaxed/simple;
	bh=3mjimYVo68ndOExqkw8e871fQO2U9sgu2nqN/9vkxN8=;
	h=To:Subject:From:Message-Id:Date; b=SYjEzQrSmtwYL5DLwiBmuCVrzUQWGwgGmnVjQ/XrFKJ3S0Hq2Zo7l2iZmRLy4I9fA9FTQF8FoU5xEn4gfpYkS1HysK83q0vr3aIg6CpywsRPGHLRdgwo4Bs+i9I78yAx4NfnOrs/r8XcIkX0j4VeY9HJdnJoIV18y8GqRXInpEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWjTIJO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWjTIJO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD92CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791021633;
	bh=3mjimYVo68ndOExqkw8e871fQO2U9sgu2nqN/9vkxN8=;
	h=To:Subject:From:Date:From;
	b=uWjTIJO7aFouIo1pgFYU1HsBGpt+qPooViE1EzA+OB0TQ9O1DwZnvdKulYdmgxJoI
	 2LVRx17f7RzWgGG+O2yFV32rYbg+k85hrZmeWGwG9OOI43NuJv5dGYdghmuGkc+Cad
	 IB2HnItFzSbzdZFX+w6zNCLvYkGvTwJAIxrWwC8tYoNDanaUcvm6+1URp92sWK/fV6
	 kajtPI/h3KPqMEnPLa0HFhNAjvBMaP8n6iXQn2CogAy5ub/OPJ8bSuw9GhbVJrQrEl
	 +iRemJaoZtbNYXN2YjyqWCVKrSLr40qA+VS7hRUxwVlGV4wlP3l1YF7/VZ7eHXd9eY
	 HOtb2sFWN0dfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB07ACA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102163369.22565.10827216738451441714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8419b524bbd2415915fa19745e5b4924c38611884feabd48ad934e0c7714da9
Date: Sat, 03 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791021633
