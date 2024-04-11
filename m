Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007E3149C59
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712839697; cv=none; b=sLd+I9babpqipIgIiG12CZCE0z5Ed/zecaJXwZHKZ9RL+ckXY3Fkh848oQ4J7oNnP7NT9N5kmqynxlAdTXElqbFvPhgtNgLWBQwaIUTk7IyqUL+zgWJ6QZX9Gs+cr/C9H9IMJaQJkLNCdOQyz6eLVuy4oa1J9LWMU2mGXlQkYMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712839697; c=relaxed/simple;
	bh=ttF/mNVO2VU0qP8NAlY/GJ2Ye32cmtz8iFEzrrp99JI=;
	h=To:Subject:From:Message-Id:Date; b=D6NqLCDLsck4U59g0gIhnacrwobOqzX5lWph8mE+TEVNb8OOMzTIucPPYUkBckRE/F/DUMKu0KExYOoVxIqQaM9oar2NW7S37bS2PdE2HlV31Rw7Dz5+B+aJqrwmCniSnb3LaDuosn0g29ke6hRuhdMpUZ5MLe0BAcTR53w94BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaLpCXkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaLpCXkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8103AC433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712839696;
	bh=ttF/mNVO2VU0qP8NAlY/GJ2Ye32cmtz8iFEzrrp99JI=;
	h=To:Subject:From:Date:From;
	b=ZaLpCXkMB422Pe9vyJ6TVrvFU3zETl6ZI95FYwL4KGzYNqN3QpP53MvO8W0njCsuh
	 aiZRvvGwZ1tEPB7DknfVGOOaSqDff1kNnNOXF1qXT467tbjuzEmSpM3V66x9Uv8s9R
	 pEL394CgH8sS1UfdAf3aGVV1aAAWlF55bnzoFw98in4AdJRi1ykOsqHFh8SkboUG2i
	 AMmoHVlaU9snsXxbD79dWNWERI8PmhmYGwVFHvpb9jHFaoMKkEWAlrlYr8W5SP2x30
	 AF/z6q/KW1nMoizv07vF/kn4q3BcWJCqYitQG6QGGeMH8hJpxmO5LcWJm8X396346t
	 Oc4wMmpUgkJiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A66FCD128A
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171283969642.25190.16799189567678217679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd62394d939057858d8a808e63b465abc892c28bc6dbd84a384331823c953398
Date: Thu, 11 Apr 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712839696
