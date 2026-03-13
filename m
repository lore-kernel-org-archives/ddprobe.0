Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7F9313E3F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773426894; cv=none; b=hyFXfSC13YQNKY9k+xw/PIdjipZkPx3kxDv8sgHvpCXv1NcrrmYHKsKKVhof7pJTiQmXNpHXQKrlG4Je1eKzAERkx25i5Fkm7p5zLzYZya0PE+2u60HOi+7amPAcYQ6uApZSkMQdY5NKNmVtvvZuJQVdQiTDivnaLY8/4QMn+gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773426894; c=relaxed/simple;
	bh=1+v13K+VhMAYEqRI7+MC2hqAPDAdplwFINmm7tiOO4I=;
	h=To:Subject:From:Message-Id:Date; b=Se0/tnkAxEpd5IVouyskcg5S977x+JcezTt1uoKjgfyyyCcDkv17THxgmJczgZeZ6JCV/SdLnEmnE2pUTM5cZ9wlmJ1Ej/ieVa+RolcfJdlJSe5gohVmhUpeX3+JGQHuDouxF8vGBKdwwaTGrHdxxVg/zYAWqlqRID+fMM6WkMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dco942a3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dco942a3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25F3C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773426893;
	bh=1+v13K+VhMAYEqRI7+MC2hqAPDAdplwFINmm7tiOO4I=;
	h=To:Subject:From:Date:From;
	b=Dco942a3+jo8WQirw8MXN8zbvypXQUo/eMiwGRIIcVO+A4DBfwVtClLFNbXBjxze7
	 U6Sdy2CwZs7+AxBlhBg+xx07yDAtsO97XnwSKgG3fze/VSzcMJI7jOKoJUsZMxwhEG
	 xBEIwwokQBAMI46ShAT+mvQGGIRn2m1ZVcuWA/jOIM6q3apJlShhaYA3+S5XoTHT9+
	 FVgk2Buu+cU3/QuKi10R2JTnw6F+rmv3qMVTD4lER9LE3V1DUJNm1y+Ul4aHpL4UkS
	 KI0eSCKj+iuf5hCUKc4V/OuqvKsfdVB2H8OTiJbzOIPvel6nglF01uwdWnRNe5VBup
	 NtrIypXysi+bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EBD107BCD7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342689358.5411.12991681791119106706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d96ccfdc7eba5f000fb3a9a681a9e26b3f879ee2691841231bf3a86bc9ebec6a
Date: Fri, 13 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773426893
