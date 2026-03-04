Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6220384243
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772663694; cv=none; b=Kh5Q5npaztZvTQi+41R5ckrv3YorH94T7S4P68VMSIg1yC/rxi2mb32/CodQ66R5sId/NTG5v8UKBj08R6EdLLco7MsQfNIO/aZEzJwt/zSAX8giv9LLfeyuhLUkYjDFqX8vTWtEWuIlXa8+h8m5cy9QdsMrSlJ/1fmn8gv31RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772663694; c=relaxed/simple;
	bh=khOjMZeP26NAkV7Xb+9iCh6Bba15Ek6WnME+DRnfWbY=;
	h=To:Subject:From:Message-Id:Date; b=F2sJfOpuyWX4GZOpjVourZUaQLnskoeGqNFXni0Z2mZAwgWVMQTA9z6vMmoQglav4s7Qo4XI50eb1/fWCeuYKjNwIEQpvnZYS+BmcPA6mipwLMySRW8qBRtL3VM9Frc+v7F1XYteOKVsC2SohudJ7bLX06nVNvhrGP4NPcyhqII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qh+o9XGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qh+o9XGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD23C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772663693;
	bh=khOjMZeP26NAkV7Xb+9iCh6Bba15Ek6WnME+DRnfWbY=;
	h=To:Subject:From:Date:From;
	b=qh+o9XGWs1Zr2HWh9JApplXAigIX/PivwzgeVN3y4/yZR7hJikQKYZ5BJrGMeRcsu
	 2UbcU+Cj+bxgzFM7NCEnthgcfMnwhpb/EUAfqhxKe2PgQUEMIZM3/y+AZjYkw5mhYq
	 tcNBM/Dxy9//jg9h2bjdZSSNMcaZ7wP+SKxGoCzAeamWI1BqE5sbRN9QsTNijU/qcb
	 ICAvMOHBlyK+qgIs69z+KDDt5oIU4K8PhB8xmIlkuOQ2/f95lRGS2fr5CB4OsSkLWR
	 fzYkhtA0eZvS9iaqqpDHXpKeUZypd3Y46Lyjy09n/SjSW860N9A9jIY8+lkcku8G20
	 rP/0sTibZbdAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E1AEFCE4C
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266369358.27919.1558351288451276522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0107da726e4850f054d5feb7105d2a163478964fb7c6799b18f108f2ed0365f
Date: Wed, 04 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772663693
