Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C3D8314A6A
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763019595; cv=none; b=oizkAk8Y48HY66e/y6uhpCWewvalJd42gOfOstQuNve7meSSHsYPosUM2DHffiUOBirQ9PGFg9v2/4XepUq6Vv4zvsDX15GkemAZz9WwKb/zkPL34OuS1Ks8r0+VFBzzv2uGR1CfjrBNLmfpSML+hhgWc3eSxENtp8kba+37vVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763019595; c=relaxed/simple;
	bh=9+cW9MtoKzwCFhl3FX2zx0tI5b8SxKeOOzIValNDBFs=;
	h=To:Subject:From:Message-Id:Date; b=b8nzpswe/SyspjDvawlSbkLvkGHKU6Vwil1AKdEy7Im5h36ovOxDxoUO/Xl7GC/upp1++GfNk+OYrl9hgihgBnazft5D0soqQlhVSM8kcBzPRfyGBgl1bTgAQP+o2ndkaB03fKktyvvZ5PlRa+SFqNfV5pyeB1KdBTVjyPaWMhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLmQoXAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLmQoXAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C76C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763019593;
	bh=9+cW9MtoKzwCFhl3FX2zx0tI5b8SxKeOOzIValNDBFs=;
	h=To:Subject:From:Date:From;
	b=oLmQoXApFxgHq5tnwQrMb/OC7dS4+kcm4NCB7K2G2zJLWdzOcnjsBvn07vl6J9pkZ
	 YEVefxi4T6rYcxnUdRWxfC1HE3lFKWXnil4L8cv8/NW8JTAxyQkuZa/vGlnpEr69MZ
	 wFRIysYStnOBFGoCwDpraAxUUmZiu2dQBcv7RDogLDE1eB2+jP0vkxgYZ1B4XapJ+I
	 Uu81Np4YuTPrC13EetfOjkB+BYw172Dp7WpKbCf9MmKp+Mj3lUW80vu3/lxXGl5o9u
	 1loTuBdMT8UmIcO48VOaq3jCTjDdCNKcJwu5PytDfRrGPG1wsv2povDfMQ1qWGnBNc
	 RSwryDWrHeyGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFF5CD4F28
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301959364.9821.11254513028035195932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5514470746e381a8f127d69fbac3229f6340706e19a49da5049807ea4aa71b82
Date: Thu, 13 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763019593
