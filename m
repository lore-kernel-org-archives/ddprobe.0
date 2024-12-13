Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0B9188CC9
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734075354; cv=none; b=kgcwrJ/REv98QIJTI5nPUn9rOYHOq9ubhyC7hm/1oR52T6tpVOJAvBVve1eOcZ6zokNmOb9OK2pn6OU29C0x/6o6QVlmr6YmmKC6HcilkA4pFFUmczGBOI+5dueus1ZUaRBNPzD8Q/TAmRmXsDqcmyYKtzcdf94esASARkHu6p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734075354; c=relaxed/simple;
	bh=dSkHW8wcLcvOeL7KXzaWZehkd1+R+96Xj45V4fDNMB0=;
	h=To:Subject:From:Message-Id:Date; b=IqNYdKfalgf9jNT/0QDChmbM1Hd9r4on7hD9PZ2r/DDLZWaj2H4bCtE5fYCqjlfInG4PfInFr4653LNFGFD6KfdF0zWLMgG3QACO+sYZA7QT6wSvlZkPEqUbSZvblKIbfG0ocCEo4kXAq6MeMCM+tkR+quc89+5Y0wjRKChIAPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQ7UxhAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQ7UxhAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A811CC4CED7
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734075353;
	bh=dSkHW8wcLcvOeL7KXzaWZehkd1+R+96Xj45V4fDNMB0=;
	h=To:Subject:From:Date:From;
	b=kQ7UxhADQNQv/GqiqlBZ4zUt/hhMR9BX20x+lyeDgt8uepjN2T/wJ+2TQcl7Vg/LU
	 W9mnKZkiJ0c6CNWIntkPff85etsFpst5mOiqCxvf/ASsbm9rNLD1sL8d6V47SLs4fn
	 6XHr3p6NFp1s4XELog1BxQ7XH9AhaQOTsz7pOjw8OYXnlFhFXEZhNb7Zxbg1KSVyrz
	 /69JbwlAueCehD/BWOi9WR/a10WeInhgOdS4Kl3US4SMj49behG8DLtwxH5qRQFiKw
	 2Subjm+dSecFluxWHLe4srk7MH0ZtOm+WELhyBoNrD7yE/CpgSPFgnq1B9NSK14Jxv
	 JYCwGa4R6i4Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92088E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173407535358.17299.10636037962847526192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e737f1ac0a5f23cb2235cd4f3390a770329158a71a958a1b48b24873027f6d
Date: Fri, 13 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734075353
