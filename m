Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FAD292B5A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752066594; cv=none; b=fUasNtNt8UtUaOwTFNUE8BnHhlxyO/jT172He0gkN3l32d0Qc8A7DzZA5JtTjLtdP220KWd1549ch7Z2WTB2e5xnANaMdQeO98+LRXdHfJT1HelKmmp61iur/XsXflrZc768Gq5EjWGdVAcdTN2wEQUE2MAyfhikxi/JuFOyrh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752066594; c=relaxed/simple;
	bh=k+dXgieRMri4ZfwM2czm2qjeo1zNmpXkGKOMD5hWHJE=;
	h=To:Subject:From:Message-Id:Date; b=bEBqnz9aOf4eIV1b8sOHI5LA1EJni0qBszke2rbmyFVhSpN+rf7Njwd1Oj88ZF5cjUwxDNLMnjrjKgMgWXcVwgDV5W2MKOPw7qNC+RfAoxZqPVJkas7qRAE+sazzok8VknETQUk3/luC/aw4AZj9dAI7Bj+XzY7jPJ4MJJHhBb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVcKIUjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVcKIUjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC8AC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752066593;
	bh=k+dXgieRMri4ZfwM2czm2qjeo1zNmpXkGKOMD5hWHJE=;
	h=To:Subject:From:Date:From;
	b=LVcKIUjf4xSMVzQeW3E8UUeKF5ERK6ptrxF/KM9PYr56WIYDVG4Ph8uRuw72QuWa5
	 ZWixx8Yea4OBJdngdmXP8YKheWZzzbBYNfvLGvNN4AIpIF6WzE0k8AnZZByiQ+7hZ6
	 j3sAOG0i0LybAoMg4x+/aG2Fla6nvj+IsqhOZTWYNQZVX2LZEU63aI30rahnh6+8t3
	 nNTgpX88CDU6mtYQSOO4NvdnF6Y6n1/phdabbqtumHBrdWxN+28Ra59fRMsI+EqbOw
	 SBvzte9poJ5nZflrqaItBDm4yP49pZflCun5MrOZlhIhslPmIaEbdJFNpRcJzTWaqD
	 RHEFC23sHCAgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9EDC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206659357.9034.399178974031781640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5241bef8d59582245b2a32daad4c3a54a3047f9c8ef224b6065cc1da4d8781de
Date: Wed, 09 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752066593
