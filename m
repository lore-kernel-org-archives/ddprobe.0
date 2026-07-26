Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491CB4908DF
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785039034; cv=none; b=A/4PLDxG1rMNP+VEwdv0+/A9OroVpIoRBbKxU6IoZ0Wqkk9nF5s/KJTv5kCs4wGB7p9RI17rtJg0NMXNaOzhTt5eZ4INqtShW4g342UPIwpZTorTO6IvoLNTyNYIV4KFV1fs8Nw6NoGFNUWq70UcOefUaATGhH5lALDqdmyguSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785039034; c=relaxed/simple;
	bh=pQfBeu5GqmeZFhNJdoouK+i+b92h8eA+hvyxXhHwOYA=;
	h=To:Subject:From:Message-Id:Date; b=j1sh730dKFX7W6pE+95FSq4BC30JArjgJDfVK2npsSSmlo7c2CB8+1KzZSXZSWfom8QJqyHfKh8Hn7J//Qgu7lhJwJGotjfhC3X8ADe71RDjstIp/dNRbZROzz6SNGlN3CBxexmmBCWlhMiqLG/bnVoep2n0ABa3tQ7LVv1RWb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diCUwvFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diCUwvFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15EEC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785039033;
	bh=pQfBeu5GqmeZFhNJdoouK+i+b92h8eA+hvyxXhHwOYA=;
	h=To:Subject:From:Date:From;
	b=diCUwvFh48f8uG1eb/RocReirrUr/hSf7WPsO0jP5VmHhlJ7ZT+tggLTMs1A+pPYs
	 /8Awj94Qz8JsK5RXuR4KR26d30Et6rjQVhIbqoFIux2LJ4MUAOBlc8S0/4qgbgVnoU
	 1mD/yM2Gv2au98MACXeRZ8tX6yZk/xV+eFswEaKbzlJbq5+7nkMquCuKmm3fFfyZne
	 N7jzIJjRGaYtsm1Z9ks0NQ/Hczy5wEt38bULbBtRauQ/BaZlchyvuiwz9dUOMIXCK/
	 4FipU7coozraYVd/as2Mw8fx6aJ9IWnbGMaKERjiYZIIhkAfMbJNFhQ61IdmnPUd90
	 MJMFjnaZK/WKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2C6C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503903368.26326.6235581827812338697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 117e160dfc0692d34cd0d8ed8544dc49f5a6806c927fa891e118a20178c003ef
Date: Sun, 26 Jul 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785039033
