Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9C350C29B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788635434; cv=none; b=N0Aq0UaEYfYD1BxitrLJuFGD89yGClMT8J1xHpZ2ctoSB/WABKT4FfAwHeO5vWKo5ZZb3W1gPTdFgTnU6vexHgApW1pZ31tUuD6NaCa2TD6EFcKnHbjvEuX1YLufdIS1gMjGE+g7jYJPj+6vuRGR1AYVJJzxUkJMfP95CmGXRI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788635434; c=relaxed/simple;
	bh=+0njvcmsXT/JA18a03spcQ8AfuGCIYg2abc8f26580U=;
	h=To:Subject:From:Message-Id:Date; b=FccaUgGCHrcvar+Hl/HoX4IQm4JFz0PoDhCvprbYdejx8jOY2d7Zc8eSFy/B5VQNviZsYEkjvdb8mrSNKygjn/HmIeQsj3C3KODUI2cQcHGAjBz2+TBDNyzUubdXw/C5GNkZtPeL/0uY3P0yDG+yudtUiM9I6oBTY8zNSl3typc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMkwKUUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMkwKUUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD281C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788635433;
	bh=+0njvcmsXT/JA18a03spcQ8AfuGCIYg2abc8f26580U=;
	h=To:Subject:From:Date:From;
	b=MMkwKUUTZRAn4f3LzO2OWQlM1RVBCjjbcvXQ/jk8XMcY9R0777UcaTo8Bw6yYWjuj
	 CAUXZiywANo6xeASAiZXVImvDxvfBPnOASUD9IzZVnJQZxCTJ9ffsL7JS2iW+5ThnJ
	 zEx1dZ3r95i6E+3FZ4fW5MJqalGxWYoegkcavTkTSKRoz0lIWY+sT1L30lKEnXuJP5
	 SieO1ujCXHMCsmPcQDguCSERQMrxGSgWP1R93zb5N/kadYEN/pTgZrKEuCL6zCDG24
	 iJpWr5yHT0AIdpQf7q+1tVNlQ4R6MrT4aSDEZbxL6Qx5OWuUH2x+QlACvlA0baRr9/
	 CPAN7IeWJPgaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACD9C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863543369.19022.427070513906144507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7a950bf255273afe0a2ece6a5b24497bd3e04604d07b1e3eccd7d131c5f547
Date: Sat, 05 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788635433
