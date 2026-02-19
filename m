Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E37326930
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771484093; cv=none; b=qAS2y6FGX7vjI1KqC4ZH9aEvggbdJHNcmMrgh1MESsL+2M+62cwKBcl036Gpe8u1yVH7tCWGkqcJQ30qQog42u5+rvotg+t784myDgDTW5PZS50f/An1NAXH7utSBcVZZzR/mtmkTahZzyyN4wg3AQ1NU5qLsPYIDCXcFcZkbF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771484093; c=relaxed/simple;
	bh=Op4ITjKW8T83niSCetccHyoWFCk1xLYMI8eM2P14hOI=;
	h=To:Subject:From:Message-Id:Date; b=nPeNNAtwyjgROeBDtcou3X2IkV+UIRI77hvZk7P4jsCHdwR2sbPdYwP/m3FhulmcmxFOYJUrzU6DaN7NmNLAxBOqLqoAYsUmenCqIhQVuZ9WZ2+MJRZFEdcJ6TTvy+VWG41gl9rnIcj4MaIZknY12485uOv+67v4DmlCAPERvt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdf1Gy1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdf1Gy1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FC8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771484093;
	bh=Op4ITjKW8T83niSCetccHyoWFCk1xLYMI8eM2P14hOI=;
	h=To:Subject:From:Date:From;
	b=tdf1Gy1aJ9T9a8ys4OM2ULQxBDhQsiHz34VVDGIO5dR7T+AXS3WLtYGY9u3JwmpBF
	 Qn3IrwLBgVkJVrMZ/6O5rdLJQPXYIYm0hr4evZiiInaLYJZUfMNM/KRHmuOfQavaW7
	 9lUIDBhvIQixl3IOIVhtSpfIFLIuTwOklVZO3bD6z4ddaoOxeWv885Yra6s1wTUGeD
	 9nJTgCPs4IjeZfuILqbpo+5Prk4LfU4UFpx2U/SKPkWeg/SOBgMI9u9Q6zXWjer24k
	 9t0zo6vLrtveG1nEK58MDgG8o151CXH4r04R4+EJLKBuEc23lEFn2zBo6J+Fm3KbfA
	 UyOLaR07I0DxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F4FE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148409359.21499.7302179204086726122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4afd86befe8c26ae3e39242c65ce359fa6916f6c5a32fe1adda83fe4fb76ff7
Date: Thu, 19 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771484093
