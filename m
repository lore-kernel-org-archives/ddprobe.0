Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C70424DCF9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782946114; cv=none; b=lrPrkIkOBmOZxI7Xgjdb8LKTg4w/w9/EInfyvuuAV6dAU+9MtLfbJefCoqXhdFuOqGlpwW7drOd0piNHBWbPJ9WdBEj65VT1EtfXbseHCoJoFL84IECiJY0kV0bQuuQJq7TitgvZvhR5TXG623AgOgbFTclmgxw8prVjh2245V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782946114; c=relaxed/simple;
	bh=KNM5hlwKRxvogL8m4Bh554b+WMyne+fTM1ZbT5WZFDc=;
	h=To:Subject:From:Message-Id:Date; b=hQCk/lwQRKK2baBcfPpTYyuKxgF2iZVApSuIgfZuzWfutJgh+l460PPipV66z9es/lmEcL4nXsKw5Zia4u2KkHWV4a5xpZsK0wt5eRdHkrQh2uDYdUd//Kr1WgHj2OQno/zqzDi4vjavBQgcwE1rTyZjU+2g2vAMwRHPK0GQQBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCHpI1NZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCHpI1NZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C053EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782946113;
	bh=KNM5hlwKRxvogL8m4Bh554b+WMyne+fTM1ZbT5WZFDc=;
	h=To:Subject:From:Date:From;
	b=rCHpI1NZCUOFrwZIPjPeBD5OHXN7KOyIWwIvfTlqgucysseW1qalWgrdc9rYhSOkR
	 /yJRzxJQfon1GUsCShtHsveSK0Bb/9Rn+GAFGVlXSON2Vs+X+fjzbF+Qdqk5OoUcpi
	 Dl6RqSj86HS7EVpO8c2bAnsURsjf5zwRZy6hQtvKBgIOv8SifwKSmlybusm2wdolJW
	 N7uYcvNq6CDLJrqAVumK5bB5ZXoryhboLfL7m5vVDxOm04U61oVeq+/T+w41cJGe7y
	 svDdTr1iVutzkoJpq9CC+oEojLA+rzpEI6dSb6WwoBV4qTJf8AvbepE/kkzCNqMhYg
	 oKXHM4RoPgOkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A951DC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294611368.25340.2061650215784310430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c475d2fb6a56cfcec360e224e7f8921ee916b370561474970e4d18d9e42fbc3
Date: Wed, 01 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782946113
