Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8901990A7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782553714; cv=none; b=mkQjHTIC8aQc6qhFCn97dms8Z5Er/UF42Zrb9/5oIpeU/CPJ6byHelENl9XQitChlVefKh/VKVEikYgl4R+e1Ou4yLnHSd1AGIywUGxR9FYhvr+gV74cgR6pwd+eHDLLggRkRkRS63oLpsJmBzVrQrwstwjn7CIj5iJNcGSH8Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782553714; c=relaxed/simple;
	bh=csArdlZKMDo/CdN195FvVowzwZ3OmvOgclRtfkFZdqI=;
	h=To:Subject:From:Message-Id:Date; b=vGDdH59tshEujl8z7rmNj/gqStAbL4zlu3Tw2SZYzYuUzxxEsVnnTIb2ayyuJiWxkKk3I+rZ54agsBkTI4Gh05xvSBq/qfnzKJwOum4Oap/P3JkdNRrmT7pYyDwpIQkrzT9YKf7uDR4Wtt2JtD/bGsBFrDA8slbz7y3NruyAk8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lgp989wx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lgp989wx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0A1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782553713;
	bh=csArdlZKMDo/CdN195FvVowzwZ3OmvOgclRtfkFZdqI=;
	h=To:Subject:From:Date:From;
	b=Lgp989wxEwbwVQghjxQOaJt6ZdUuzcZes9pZZAkS+LDZJcxLj/LKOKqTimq4DTwMY
	 3rziZv/Xic3HUDA7Odlym5p7fcXGAL94dLAU8CucwSZmzeg8VRY0+KIr2/vg5XDkSQ
	 VpoJAhgzBti/IfrtcBtdxnRoKiQfouIbGds6GXOqdVF1hHUYOttKba7moAQaTpwPhV
	 wd8HoHG2TpNiKQ8EmBuB9kN+CLhX5GZR3Bg0Z5M8OKkZNbpvtB0CiM5VvFqT2sgnhg
	 3mqqMj0oBwuyrA8tH8fNLDyZI6sYsL+l1resyfhxDaNuai60RjH54PUec7PPcr4bAe
	 LMnMf2XcKPMbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD46BC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255371373.22917.11120497232202211168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ce1ec9c074b40e0e09f2264a3ba5b4ff7c16984341f6631c2063be72a4237c
Date: Sat, 27 Jun 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782553713
