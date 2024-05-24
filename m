Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FAF12E5E
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 07:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716536003; cv=none; b=LoqLPEqzzyDgDC0tQ7wys7iaChHxWbuiuB2z1G87+uto2lytvYMK1Ll5OJacZQ0X1yexKB4SCX2vdrJoxjTcWvaOO4ndeQ8ZLVcIBpJXlhCucrMBPQEqzP3RrYfj+vT7biMqc3KD+TJBqsBXVuy2jJKGtxqTqH+ESh2SMEMF0ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716536003; c=relaxed/simple;
	bh=q1vR7Hf24J+1gHLP2RJPrgWpZ34N4WL/dOD2pQm1crI=;
	h=To:Subject:From:Message-Id:Date; b=Ua7wIJE/n0rawdR0avmYQbntVulhUrbzyKoAzKrukz6x2nzGVywTUTK+pEqD95MWDuehAFaYJF8qJBsKheyy9swoCh21Z4uLU7a7q6dfQ/UzU7rRf9DShOjXsaE4t5ZqlJeLuhExDqxHszkbpVbACRcVpd7V42iqjWbs5AgN2lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPYwEjjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPYwEjjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3B6C2BD11
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 07:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716536002;
	bh=q1vR7Hf24J+1gHLP2RJPrgWpZ34N4WL/dOD2pQm1crI=;
	h=To:Subject:From:Date:From;
	b=TPYwEjjzQAg6kxTIxC9YC5+ZKzc0Dz6Xsdbp1cfVLhCW465WALx5O6s1WTQ1A/4py
	 cujvXSnwKrFaD829SZDcamgg/Uq8y7ZbUeUVy4GRYqOdEjOaatwKUyYFbLRnlCuTCL
	 /rWveF7ainSUUddBwrfwyBw4eLuOhgGkVzehMrrqwMFKSauqP+7VN1zKVvuL5vs+YW
	 gq0sVVS1333yDW6ynwCBo9Q6hhtv0WiIWqe3Sq2rMHIh6uiypJwf7toZsizat1dkYK
	 4cCUnk0ScDLV2pjAHHPizSGbVmZNyegRmOZk5t2D5VqMyWuHShk1595RYa/xDRFew1
	 IrO9g+bgb9t7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4778C25B79
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 07:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171653600279.25890.8492822908562128960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f98cfda3cb2e04e62120839b62f29ee31ff436a6d19c95160dc86f731a9091
Date: Fri, 24 May 2024 07:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716536002
