Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4A41CFEDC
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724786754; cv=none; b=km3iuMt0i6ANeyNsc4ufP4CA6ju9Dm96Sc20syethhkAYnji0l1iV3jf4DF+Oe8A1cT6od6APmq/IPy5JTiORnEovItlUvu3NDZhz6dd0XdVYX9XdAKUL9qWTi/4biysgJ25aIrLtZiaQTfUXAKKNoi/3J5TqVACMkRiEunnFXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724786754; c=relaxed/simple;
	bh=MzFWeB9gdZBY6eK14PIGXo3LraUptuvm6w4tmXvp1EU=;
	h=To:Subject:From:Message-Id:Date; b=WJJRZ8PjFDLJx+WWvvhDii+Ms9exK3mq/FbsyUXkKHKkovQ4N7wOltuKqI/jyIjk+bkdTyA619k62po3UFdshq4pFtkBa6TRa5d7wV3xDnDpR/URa9KQiaoBbsS95bTgu5WBYBjh2u2K4XFPYe/NW6fLYm5if3ZaZpvI4GIB9lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTHJz/31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTHJz/31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD96C4AF17
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724786753;
	bh=MzFWeB9gdZBY6eK14PIGXo3LraUptuvm6w4tmXvp1EU=;
	h=To:Subject:From:Date:From;
	b=XTHJz/3116SmQcd+sA+cgaOPxf/7pjwEgdKGdd6q8k0m61WNVoaWD3DV5Jdhkx+hd
	 fUCJffyLmUCciOfGeXsSDTV0dLJayGk4XIiiY62SCEMlUlsdKP+3nuXfJKLRgs8HUb
	 1SBiElpCL+fQt+kNBM0iQcOlINPwgmrFicQyfwBTLe/fyK/iNgmsT0Q+K3M9Wg1k/g
	 IGupUHAuEF4JqJyQu2KcvMFWPcbqi3qOji4Anb2gfmEEs2V3vCti/hpeel81nhWYVh
	 hluVL8R2K7t/eIUtyyF+wHfsb7cbqF+abLhhWLvD7TzH+nRtCEv0S5PubxJdWm91mw
	 0lmE2biD97TJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A98AC54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478675362.385.9593915397199941749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d509524bb520f2bceb6c3654296eadf07f18c62d10e82a32126df9d18cd668e
Date: Tue, 27 Aug 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724786753
