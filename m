Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEB425393E
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778758834; cv=none; b=E0ncyOX9Gw6AQrWPwJo76bSjapJt7X6O6UpNYm415iJnqYPI+s6DcyzYh7TNyrWBAsCqirVQhQ5S9fVoJ18HJR9AUroSqJWMMx/73h6RlGX5LsdJZgk4TDNcP7SvaERVeZd7J7K2d8O/slul/+rogqxtBd730ZdHD/LB3a9XjiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778758834; c=relaxed/simple;
	bh=hvrvff/87M7F1dqELJOZidBQuvw7gYl7Z73hnAF0jTY=;
	h=To:Subject:From:Message-Id:Date; b=Z8gAtK3Y1hLd3Kf7gy5xPrgekV8RjwFhs/+xZIMRIS3isYT/v/fhHS0oBg6pDyIG4OkA7o1wp+b+iay7/z1XzHXuCiaKlPkbR8TOub0lPsy0IY92YQEDAJKQdSyRC93Evo71febxf1Yg6N/k8/tbQRvIlwwie1b27Z8XbDLF67E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QouXk2iP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QouXk2iP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9883C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778758833;
	bh=hvrvff/87M7F1dqELJOZidBQuvw7gYl7Z73hnAF0jTY=;
	h=To:Subject:From:Date:From;
	b=QouXk2iPMuTrJea2DV2rz9BVkmGorE4pSSii/Yt8EOIyJBvQ3q0XMTaAFYJopiKAb
	 MihClsKigzClRdqdGYdRnWYB64PLAmhZ7Rja6QVKGXSJ7JgXyhPykLSV0WrHHyhUq2
	 OjKyKw4NVTSVNa5oks4BlAgxtKEM/372uI90lz8SLmTCoMg8m6+keGBu2UlWWrhDDE
	 SFahrdfILCgVQrLfoZK+CYxnzKxPlS+zHq1rtEAMbVObB+egNx0a/hPg3JzRJ9U9q3
	 r3gbMlrCki8t880KvklP9d15U7E7VXSkQKDG0xNe6zj+sVogx2Yc2cYSyjpPW39EE/
	 RmndLW2mYrChw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8EECD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875883368.20903.13175486997565375437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b809189f3baff3d5a54599ddd14a091465a9e62656b5046d0c3fb07fb5571e
Date: Thu, 14 May 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778758833
