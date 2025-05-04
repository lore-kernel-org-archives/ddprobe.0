Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284171FE44D
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746381594; cv=none; b=rdz6yekAOkdHJ/CxrEakL8dm2IlZ6d0K5phVqi9vgeHXeh3FEPNQSjAyM17oPywo3SYFToSBioVw27SEGyWcU/5uPw9n7fPwq67W/WtoPNB6MA5DbXAU0T40SM7RH9YmyHKyDk2D5T/K9tMV0JcoxDvuvEZSByo+3ZFYVipA4yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746381594; c=relaxed/simple;
	bh=IGQQaFFdRoXgfyJ/iZlRKj+3lMXenp8QMLkCadCY9tU=;
	h=To:Subject:From:Message-Id:Date; b=Z2ung0XB7qrx8O+DuCTwtKFRNu8cuXVf7g1IfLiR9TffRF4VVC7WBTKgOSNblOR6sfgNDHTaLJFfe4lNi/nwAZBOItqOZvep13s84jnFpKkoO7Grb5gZubKLF2nfUw/66KfkkDa6CTU/+q1QdAy44dqBCvQgbuY7GD97byPfdgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cscnBoGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cscnBoGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D935C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746381593;
	bh=IGQQaFFdRoXgfyJ/iZlRKj+3lMXenp8QMLkCadCY9tU=;
	h=To:Subject:From:Date:From;
	b=cscnBoGdw9FZweeDxzDI98IN4wrjAORXQfmZeiSD7CgOb0TGHU8J5pOQQxOpifBYP
	 T3lI7e8xEdpKhWBipX2X8OXsPOtddfaEOCfh02t4Bj4ay/VulHhzqCDhAzq6AtgOKe
	 saVlG0c8ASgQc4yx/He5NYrPxZVt7ZmQAYk13UO3IMMP3b/YvkUnXuJukJUOxeDZ97
	 TuetCoOpnCyn2TXisDQDWjvQGO+hCo0KbJadilD6BBNQ8BKWqV2jn8NgOIC3QcILQn
	 9//GcDfJWjs9SpclqvssAvnZXtAhTIpzrsanFxdgGCTlIaQK0Bamo3kTJasIFqYMOh
	 4WvDmsXgcw9BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3DCC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638159357.12604.7189371325508375221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6960627c6308de2946ea1e739ab082b5f47073afc6f1ce8c35a521eb5c8ef2
Date: Sun, 04 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746381593
