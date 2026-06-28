Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485A22FFFB8
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782625114; cv=none; b=obqZDFsOZrFFdMXU5KNv0qcrymDEFkdl9isbuoXtvlQfrWHa74fRkFcXw4MhS6B0oH5RmJfGZGBY0eWV4AntqGYteK+ziAz0bFga3q62/EFoujqAXUjduxs+7IUqENGyh8yhSNHMgMrSD6Ub+Tpl8fQlDKwHUwLNPNzxhMSg7Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782625114; c=relaxed/simple;
	bh=3j2Vi5KhnRqFF89QngQuEAE+OvTua4yobxlRTI2oCZA=;
	h=To:Subject:From:Message-Id:Date; b=OMiU0gjuGw1Py6gW/t94QQGzmZBoHkoKBs5+lhL069wcmjuZYm8B6yQimV5+BLZajQkn+PJMTjsM2ZBt5lZ7Snye4vu74NZhTFehWE2b05aEkoiyhck+DG4fB86/rXANGjUOBeN2MrxDxwiyuvq3vjJYOyDQNzdyUybqkXYAqmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmLc5e/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmLc5e/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C780AC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782625113;
	bh=3j2Vi5KhnRqFF89QngQuEAE+OvTua4yobxlRTI2oCZA=;
	h=To:Subject:From:Date:From;
	b=AmLc5e/6snnRmGZlZQWM5u8Utw+ZdtuGJjwqL9z8JGf5jBoJfKa+Vk7Aue9DwDKPw
	 iVnnUkDwCgz6W9/xvan3hUVZHZ0sElXmxJZbleoHejLk/yJKZbIKBazOvS9QnoLCoC
	 whL3rc/spJxIEZDo8yzYaC7VYPdOTf4DHI1eXR5MBYz1S+ejt93bp+GkvnTbDPsZmy
	 P5sy3WOJGFsjJDVO1UUXA40V4lnrJ5kLysL4cZNVPXcqC4eRA+Dr4tltB5mjEc+8gC
	 4yWXL3CoEN0aXo3icr2RBL1XrZiEjTSP/JslQlvb0LPDtpmXHuTBrJj1BkEN4hyWNH
	 YKr8u3VpcrMpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE42C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262511368.28419.8159478010601171712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2955afbd3e63e3917222d4297cfef0198133e21df8d4e85d2f988014623546a2
Date: Sun, 28 Jun 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782625113
