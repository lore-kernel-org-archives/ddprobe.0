Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7F428725B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781520394; cv=none; b=ibjqJCKuUZ2icIlfZ/YGGx8vYVNZ8VQLEOyxfa3w9FqHFvRGkyp1KNWD35dYDdEiB0KlN8tPafKQvB5M4BrgKW1Lb5mqdZngIicHmUViEoaEl65prh0cJITd5ALvCB6moG/3yh8zOCzk4SXqEmgVm394TPJSD+HHchCKFu+CSG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781520394; c=relaxed/simple;
	bh=PwutrVziHt9OGX0lh8oSeGV/yzCJvFQ6QZBmqENhGhU=;
	h=To:Subject:From:Message-Id:Date; b=ss4E+o25FAMJQMv0GToYjaJUnsiLY2wMBGK8B/1qRH53oDWG0U1rIAmrDpY12sV/1nZ/dEPJ3PujvmhxXOf7fQ5nr5sX0btpXm65NwB3D0U6ssYc+nU/HhThjeYQRZflIOpPSgBmHRX3KpZxYS5FPFgo9XAF82VFItVflQA5sog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUAP53CT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUAP53CT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA618C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781520393;
	bh=PwutrVziHt9OGX0lh8oSeGV/yzCJvFQ6QZBmqENhGhU=;
	h=To:Subject:From:Date:From;
	b=sUAP53CTBCfbFFU7eEWVB4PfAFmkTjx8PqDQvJWuq9HH270uUTWmxsTY5dQUtd9wU
	 fKGADZbzV/i9Ra8LHsoP2ZQlABPp/1ZhGjOAjewho0t1ZbnNIk/fTvsw/UuK/qgZf9
	 SMJj4NgUF9Yr6WCYFWe4cyaan4DynZtG488VCMvM3vrk/ObEMtxPF4P98xK8eq45cx
	 eKFvpDAjI9FxQGy7nTOsDAmulLIFS3ymdoKXRmWzECb/OVejbu0dYCtEcPUZL6kQeC
	 1k9OkDQKI+GVboaAu+AosJDROiNwtp9CwPXmShH61VGmt5R6FFxIwpgQpsR2qZZbv/
	 H03vCZYTJVjSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CE0CD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152039374.12017.2000479121344724063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f041e4fcfac846b736bda8546020fef7f972ed42da3f5e690d31aeb2a8a432af
Date: Mon, 15 Jun 2026 10:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781520393
