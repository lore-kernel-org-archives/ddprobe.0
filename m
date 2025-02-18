Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8673D994
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739922534; cv=none; b=CQvqZLWsjTISaKSv0Vi6YOQ3GxSg74Zte2eAY2DX5sa7e3QpKYVaU6b3LOLrjhmAmwS/0Z+8Uc42sZYuIXekCuQqJ9NTi9uhXLiFsfgUpnAnTvYpUewgUkzZeANR/QzMiTge4/CuFTPt+VIZmVdHe0WMuCGMdK6ouje6lFMGyfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739922534; c=relaxed/simple;
	bh=+13rk1wBWJHrsCyYKAcsN5AeSxF/hxRY4vbYiuQigiI=;
	h=To:Subject:From:Message-Id:Date; b=s/hNHxpyKfLzqBJ9FFnMHCndJ0wyRI4pKuW1Oxh9Ras5ARTOrMobzJEocetXj/YsAc1JLCA96C5LJHsZXVrzsWHzaBOAkW53QEHTygJyIjB2VL3YcLHsdqhxvml0XBYjYcyOBL7eMYv5LgVIR8ryBy8dYcboxPlXGRhoHvrZRMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/DmI+pA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/DmI+pA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25D7C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739922533;
	bh=+13rk1wBWJHrsCyYKAcsN5AeSxF/hxRY4vbYiuQigiI=;
	h=To:Subject:From:Date:From;
	b=K/DmI+pAbitzNUzc6F2v1jFtaDxvV0mCqmT1MguDnBHFJ4kWw/5qGtPW9SkrKa9VU
	 rkIzQiLxP/Ow8iOCbhKXXxjuolmXyu5uYhn1r4vd6VO8Nq8HRg5p57gMULhuZW1L4W
	 /mQHy0BXgQzexz+QD6l68yvbOW8xlsiigxDdUVKSf1TzulxP8HoP2KCNdGIomkZpYW
	 zPuFKsD549jfnbK1Ydagebam4lncKx2G2cLXLhYmFcpIUDqvWwmIWx6IIfuwMmFfg5
	 JhpIpmN00nHPH7QExHkf90Ddr8MJmYFfZEMCZfqc5i7ArBWOqVMEMCqjr/XB5Cmbun
	 epRalhkv1e8rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EE9C021AA
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173992253363.28392.13877814205123345960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4c30d33b524ef3a6f17ad34685c05f1d5803820fe93e76ff0c9214ed3965c5
Date: Tue, 18 Feb 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739922533
