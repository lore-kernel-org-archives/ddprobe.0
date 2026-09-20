Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B551A5B8C
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789921834; cv=none; b=b058lEv/gk5e2NP5Wt8Aez93Vyz5hCemxp75GdH9vyWCCbqNT2T8DrHnvzw41Kl/mXhcGTO2OjXhsopJxmkLMYx67ghsqoyAkBYoZ0rBulzhgoSsq5D8IxFYLbAGxmMFtPw/x4D7r9yWOtUhSMZeD4Gt7pwg0UynuXg52VK1lAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789921834; c=relaxed/simple;
	bh=BkkXOiigS2RzfOmISJnHgjFWJj8AR1lqLF0mnZxCLRk=;
	h=To:Subject:From:Message-Id:Date; b=FDXF/0r4eWC6urzyI5uvx36PBwL10LzceWdAfiXy2jO4iwCFKQIzrxOVK7PDxQxJRI/kipc0ET7ZSc4yqadZ41Mvk61Bsq0UY0ZbScObZh2mdkLljVJtbz9MGIUzGI6sdvINI7n9m05XR3zytcFid9WqN5JMYK70Ld5xNmVSFZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnQtKGfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnQtKGfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D468FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789921833;
	bh=BkkXOiigS2RzfOmISJnHgjFWJj8AR1lqLF0mnZxCLRk=;
	h=To:Subject:From:Date:From;
	b=BnQtKGfWtJb3OqSUGKOxqv7zSRYTDGQfJvtEy2LG3T39jsBt+cDf7ixJYYdMAdWES
	 CxmNyDes9zLLzgGcSA1uoP/C6s7/1t+45FP2kIROWtE1DrIPKip6G++8tnThvanDSy
	 Gl6VR9K8nRwvQ+y6NseWgu4QpH4oxex2eDDzdl444V3138AWXU3QeQRZAmJVrb4rOt
	 HmRXXUFxybHJomLO621qiRJdJRslX7Iewj1wpIJe+MPCQRanB22SIuZiNxH1aZqOH1
	 L/lYSxSmkiDnJ/EPke01OY39MK6JtHpnpdzzY0Q/zS5RgeNpPuiCAwfX35R0p7Xrmw
	 PoeWCBGutvA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF18C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992183368.13558.6808058358205003235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776d2465c059788db1ba86884cf7428cace9847a5ca150688d6cefb015a0b658
Date: Sun, 20 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789921833
