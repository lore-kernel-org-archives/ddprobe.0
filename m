Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4231D9359
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730834154; cv=none; b=OM58c4/HmP5hKFACG68aJwGalT0VxWKm1qtERLbTQ4cgsnfcun03GvuyXZZUuJJ1viPasp9l5uKp65wt1rHPk2cg2kNs6XxA4PUsWgIgnsoZryackBD4o5lxdGaVMDk6ovAqWwuGDlbolphjFWpHnU1P1Yb8aruiPHMClVtshRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730834154; c=relaxed/simple;
	bh=fbRZhhL2H6IYUBCpGoqGlo20NHeYRZDdDuh3D1L5pQs=;
	h=To:Subject:From:Message-Id:Date; b=mYjGZXhlPAOqcNAb3dX27UsnTLUBMYhqaTzVdBkQlH74sGE3pszu1yFQETJe94d8xeOzWR3lHPsFATNVfvFe+08pvPIfLZRFvNukbKWxwwWxFdyjHeeIc0ZMS//pWlkjWYgS2xDtt+6KHFsQq2QJA1QI+deKsC4GqNuKBWIG/1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQCMbbVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQCMbbVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04E5C4CED1
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730834153;
	bh=fbRZhhL2H6IYUBCpGoqGlo20NHeYRZDdDuh3D1L5pQs=;
	h=To:Subject:From:Date:From;
	b=tQCMbbVFH+Xi6sn7Km+mchWLnddvlWnY/rT9QVhJrI5cUZeptLdttJahXd3ZwY9uD
	 cVoJt5Pd8byue9lblS4b5bYqbJEelLM+G4xfzNphjbF5DluK7TljzH3AbXML7mhS3Y
	 pXJc5qKCCJ4BKYwU2m9NrR1So1aBRfMiTeNpvZm3p0TzZLkfQfkBMXWg2LH/k+dlYP
	 AEgTcnM+qjOx1j2XdMbqYQnnCi+jBOe/6klHuW4nWb70tTDQHCOj42Yo88pt1CMuHL
	 2a+VJlnqMwiTB0JPqoluWyYQkaDgbOeIwfHyR1wh0Js1uVe5nIydUUNV2/hm3hOJO3
	 Z3+mNg1Bo3lcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E04AD36108
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173083415363.4064.8904972333508513108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e863ff2f09e65bf49a34d5fe528d330116bdf4d1261f69797958aa0f63a8c84
Date: Tue, 05 Nov 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730834153
