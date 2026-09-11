Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0E357D20A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789156234; cv=none; b=piFtZ8KMwYuNrAzEnypIBhCod2EvIB4AvE0dP6JukHKhhrBKyRbsqvziVXgqjLmvMVE9DmEVh5ANFnm7xevOH2RhOIkG9xLXexL39Y8ftThOGeHyuKO9pioZ9R8F+hmOO5p0rVsqYgSDTA9daIEaB9aZLEmv6ZUQc6ZHcfp3Puk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789156234; c=relaxed/simple;
	bh=QltYkoJF2WEzgdil7cnCQvgOGii6vpLfjnqnBsDZO98=;
	h=To:Subject:From:Message-Id:Date; b=ZtzlE+/ymXTpQwFVM995yhDG6zPxbDg1F2FbuG6SYWdDypRLMwUvAkus0hhLkf/bMY3QUSBDyt+fKJqWOXDRqsfkyFMfs8xFjFoCmzIrRPl86tNo2bJLikUFJw98/hgTAcmAJ6OpZxyVoHZgljnsC3tHjOZlNBMrFdhE/LrdkJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh+UPX5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh+UPX5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD84AC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789156233;
	bh=QltYkoJF2WEzgdil7cnCQvgOGii6vpLfjnqnBsDZO98=;
	h=To:Subject:From:Date:From;
	b=Oh+UPX5LtwHyE9hvMK4Bd2+hUB/klu2sPo3wFA5/bXlewbNEzG5og07SSxnjHBGHT
	 m4TbOlfCH6gNfHYtwm0v2DaMA9zryab/UQkdMZGT6Os0ELS7ubn1Kc9f3s5rQzLZGp
	 y2rbYcq0SazCUBNaJLKjuyIlYaZy8+1K9Q0My9xRvezpEg7l/gu+wMujATn1vGUAIT
	 JNXL6JqIXLl8pr+/RNMvUXB6ZdT7aESlFDxE7jaIOg0GrCpEHxfmYRV4HeigTNPln9
	 3BJvMmplsl4s4GsAZ3I2a3zKe7ipt/sIUffRg8lFZF8cw/ACW0DsfYCGPZWdJQZXj8
	 /Ry2lCUXDcd4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B393DC88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915623372.15210.10117022512010340834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f65b7ef219754d977716dff1e9a8b2e0580e389857be1e1f297dfb90fca0337
Date: Fri, 11 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789156233
