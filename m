Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D281C8618
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742395194; cv=none; b=OwXz9VJHDMkzxwZ60U5k1IwjuFrYzlCYojxcTBcC8XxKoyGsTMoFV5p2C6C3Zlch9fTr+PAcuBdJ/ds8uEqIUYwrDzyyNxb4rzxpheuBQ37zZBdPlJTBCcLxVxw8uloeBFm/h6892uqgFNBRPZsUf9PRPuRSEaWFCy4KZxQLLnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742395194; c=relaxed/simple;
	bh=hTrAmcS9VUWFtlNiZiasDtGrlmyH/nmeOMHqEbX30Ps=;
	h=To:Subject:From:Message-Id:Date; b=hI24faZ1GvBHjhEo41HQwD995gp764J8Hi89e8Nr/cxVmP7CJvSU6OoBXZ4xV+IDs8IwKLGFTlPUYeWAPZI2ijT54hKFk/2MZI1XXwHMdn/nTFTWLnB+qOcxkTggcn4gDqxmKQt3i/cp+Hi0P4zZqqjF3xsyeg/WeOkhVKOZR2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTu+jEgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTu+jEgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BBBC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742395193;
	bh=hTrAmcS9VUWFtlNiZiasDtGrlmyH/nmeOMHqEbX30Ps=;
	h=To:Subject:From:Date:From;
	b=JTu+jEgdo9QLaZucPbAyIEvYx9C2/ueL/cv5/aUat1IRlD2YDYk/OdyNw7NZqmIKE
	 1z65/nZrWoLyUQwqQK2e3uxhKIYFOjq7MEUQUMwlqrXTjNH/Sk0yv2UYa2GYrcyPjc
	 ZHTFTQfM+3p0In/OkJEAy7ExSW5nChJho9hobcFdJ0kB9jNC/3dzPwdpWXEIKvWuId
	 OyE+Mw9pJZbQYFHu9sKkAR0D1qVxhClJksFNreSlnOTA1TnTOj+e7h0IUUpN9YKM2x
	 se2FidSm4LkQUl+HP7GvICrl6g7i5ZXOvgTy6I9afHzfQH+etUUE/Dlp3sZfibGiqa
	 r9U7u7D3IldBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B8AC35FFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174239519365.14349.2066337332252710103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5569b08d4813bb9654d97d1e8307cb191baa684ce92b27d0d167bc14e12e964
Date: Wed, 19 Mar 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742395193
