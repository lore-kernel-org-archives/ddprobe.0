Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DDD12594
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718877023; cv=none; b=epEkAE7I+5T85ztOsQjhsTxIhO7HuqnRFjI4ElriZmitmSNkIplOXp3XjUneb4vpsP2IoyYedciGFRiAiFBTIQv86pawiR34QSEUyLN1MOj0bbVvynsq9St0xCOgf7GWgmrq+Odp38EQ7Snc2pM4a8Gu7xK1AR6ufm3q/s/0ye4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718877023; c=relaxed/simple;
	bh=nQvIDIf2NqRZ7bl/7+im1cvwcrvMCVQHub1UYM5aleY=;
	h=To:Subject:From:Message-Id:Date; b=c6k0nYPX5nYN3A3PJg0eCwncz0j7T5jIboOsWOEN9Xl0rF6VG10/5dFC/2oI43uN7PvwmpueEdX7+1P5i31cXQnor/f9C67IdyqPjp9EAxvsa46ZSij38nEUDgfSyDcPKu2/Ge0/GD+NRVDvrmlE+OnEGaCbsimqjGKHtxjDWyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YA0/1v7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YA0/1v7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4AD6C32781
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718877022;
	bh=nQvIDIf2NqRZ7bl/7+im1cvwcrvMCVQHub1UYM5aleY=;
	h=To:Subject:From:Date:From;
	b=YA0/1v7bHARtm78/vcyfprFyNNUFZUoVnuYYITyPD1jKXf7Sfg/ceMZYg2/3gQC1J
	 kcGrmIFYT9bxQfyWNKfAZUeKgvdqvbo3WIpjx8IYHbxvKZ8ne2WSwlcgOAHFFJpX1g
	 7YakdS35gkmvK+iFNcZdecdmXa6D1pNNoq6cpKzdqJbwnDO6CFSvX7v/93uzQ7B1zT
	 /CCBQ6HG5fx4Sr4cg6tcJZR8g/HxfRLPEMVQtXwG5F/nzEqVume2q/UEuSaxWqgziO
	 6UJuh33YZuMMNkZC63tZ/5U2ImvQh6Ty9R3tPpdiGaXMbwPyf8u3g0X6zYMo8NM8cn
	 jsjytkKt2DXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77C7C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887702280.10997.14523318219966765072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e49de64b8ac2b49a6310da70b23152ec5e8cbed4501d97562e78e50fdf8291c
Date: Thu, 20 Jun 2024 09:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718877022
