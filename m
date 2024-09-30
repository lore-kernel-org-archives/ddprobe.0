Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FB355E48
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727697354; cv=none; b=UMoc7QJEyYGknyXuwRXpoYOY4ft1I6xsJjXdhmURMdtO8MqTheYSH7LRpQ8ro70wzY8fGNN8kQ4zGbFGUGbuSpzs6mcUz7ZEJDpWVgFwckuBMW1EojifRuCSRgQ8iNh7fEjjFDda76I91sijwSzgaH/Zv7LlhLjqlsdNk3mh1GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727697354; c=relaxed/simple;
	bh=PkoLce6ckh/k5Uy2alXXHBg7HKBzTMCyrNCvf+nozNE=;
	h=To:Subject:From:Message-Id:Date; b=TjIJrqAHwqvldao5XJF7ILyqXBjMaajZvc7xMfECBIPp+JSOQGjl+EaTtf+9QWKdbmkqZGW645n3kpjAGsah6kcAxP0cLl9CpMjIPtpa8/Wwi+6dHXrNVQ5VbuOnbOTUzLEr75Awsw4HahCJAlTsKJqdtNMEsH6E3oyCv5yHJDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOlNtufB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOlNtufB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3165C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727697353;
	bh=PkoLce6ckh/k5Uy2alXXHBg7HKBzTMCyrNCvf+nozNE=;
	h=To:Subject:From:Date:From;
	b=vOlNtufBbhM+VsOv9OolAVBIeH6EaLh1KZ1gYKlNhku8VLj+2uZZlxh+OaU2T9rig
	 dhcx+hm7iVWLhUEwVzmHAjxdKch2tLDXEFpOXio8PYdzx3H91hQfIlAyDnWejBl5tr
	 7/qgBe9OasadWsGn2hNz118sq6QEH744MQSG9UcQZMgLGhHKJZDs33gG3USBtEJJLk
	 e/MfIJq68SbZMdzvjQH5i1G8/s5J6ZntJsjCXggnquPhWn4zhxqUbRNS4fVO54tJ9/
	 J+o07YeVSmv7Gi8yHvYCvZzFQ406CNpqZv9RQxt6HENoh8EHwBhPlgjhRs1AfmbapC
	 Qcu8Wwq/1bS9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93518CF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172769735359.27859.2789446683061228017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99af11ccee5cfdbd5107f78a41592fb05958f740fe00ed7a043dedd57e66b76a
Date: Mon, 30 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727697353
