Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3BDE571
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771162494; cv=none; b=aBZmxQFZOIQNgRYhPAxNZxxy0FBFoWAbMj1hH3AaO63qDVA+l3af4M8DFl0D2seug0fPB90Hyr0zfYJ7LaDJ9udI71KkcmiONYXPT0BIYj3QBoKIkqzjEMVXWBhaaOJmnaNSRMJssEJNhCK8KxgTufZDP6K1wxc6Edx1kGNivg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771162494; c=relaxed/simple;
	bh=1AWvHe9be3tDAMV/7hvE+G4cqiIcChFO2AZ2UpnByfc=;
	h=To:Subject:From:Message-Id:Date; b=We9LTtWMYFPeJsyQA7t1QGtkfnT2+Z8JUGMlArJI/qrs20FOpvtlcfwvVuwyTXBalMaUSxsEEPn7ftrpzqr7ad2rTKvzgVZ1GdPN7GnpugHkCnZO/fgrdh8JYZ8DrZBMxVik/cPkWdHHMfOC6YIrgIJwj81chJJbXZh2CqtVO+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgfbS1wW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgfbS1wW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EF2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771162493;
	bh=1AWvHe9be3tDAMV/7hvE+G4cqiIcChFO2AZ2UpnByfc=;
	h=To:Subject:From:Date:From;
	b=jgfbS1wWwCVlzXFJLxIOHkx4rzjJPl8hSNeHUaDXm3bnNta4thV91Q8nFtK1OhTAY
	 BYp8xR79ukqq62TtA4dvccDVRIOTxrjMGqrZZOOOXhIDyKfDW6dFx2PY3SNJLb9xzw
	 obJ+4+bMpA3Ro88ajf6TUiybuRPfgj5hG5X5JNpHZDAsxyg61uXl0Vty7Hk8P0RbgO
	 8TrxImu4xYsLV/uwAEt6HDv/NXO34YYwaPakklpf4tiUZv5GdhxpzX2LvOgKTW88Tu
	 nZW7MF2PclJ2xlkkH53RwP992jp7I2lBoOwc/0gq9JPIAFlN1ql1SQre3UZfihXzzI
	 y04Na0YD7w0EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938ADEF584C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116249359.19496.17247191296547781830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff8adf1f75d1f408f89099dc88d927d7ac17526657ed653eb2b493045f16417
Date: Sun, 15 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771162493
