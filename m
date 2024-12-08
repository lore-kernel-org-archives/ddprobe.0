Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5899F139566
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733679954; cv=none; b=ECcjblW03Kzdixi1GYECiZjG9InMlxLeSAFS5GBlMgkl6UsXq8oDOv29VuaJol+F0JHqBzCII0eMQXHKFBetIK1P11MAF6ZsNyjNAJeDgcWDJTJ60LT3es6Y9VbFGgE/vyf4K6IQmv4HCu1NECh05eD0XkYyx5DpgHNtM4i+mEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733679954; c=relaxed/simple;
	bh=P9g0rNnF3T+muZSJ12QUEdHu3sy8OAHkuNRwdyWkiLY=;
	h=To:Subject:From:Message-Id:Date; b=r707mZMiCOuKzzgGw30eLH4uwz6cPJkBYrcdJ+RQ1m075PH/VvgjPJ4AVIeyvg7z9hLWMGHTEkm/UC1LpFn48gAMpsqEFo/n1HCh8VvGzcRMYbvM1QKkXDWvJeAY1QeNqzMHalj1+ciDHuH1L6Dthy5NNtdZFL6Lq+xiaBTpOWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvVWmW8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvVWmW8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09D9C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733679953;
	bh=P9g0rNnF3T+muZSJ12QUEdHu3sy8OAHkuNRwdyWkiLY=;
	h=To:Subject:From:Date:From;
	b=rvVWmW8CLl13rNFFTQsBwzC5SC61If5Gz7JvB69wBI6MdgFG/Bk6EeWHbW+32PyS1
	 pFYemwCjxBuZHQjlKhfuzskGXPyMjS4j6YKO9azT4f0hxQDTqbvjvDnh5A+JMkasJQ
	 tOXpKDzWuD9O7YStzLUKwYgYPk9tmyJ1SRcnLALVaXWsvzHwy/xnMAQElHyI26slfv
	 fE28lO5hfdVv8Us/9/Gpro/6ndccHFvadHJ8pZzVUtEwMff3k6NkeSn3UGVrfaM2LL
	 q0TXWVTgiBvs0J+kHub2N+5CZYXaNXZZJxIrsRgSsKEaQXC6UfYQ6dVYPAXIyIMwec
	 c+rE21qjS9Kng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B89E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173367995364.32719.15758144921228307576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d45a1a232824f0d327ea05a5195d9f296753d8cf6b773fb9b0c48f66429aaa
Date: Sun, 08 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733679953
