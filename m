Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16678110C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705724297; cv=none; b=tnOxxqAC6yjPwE2e6HJ+SMDznw/FvwzYP6q7615P1yAgCAw3TBj77bhEfqNV9O5z6vGitCpwZzpnYqmDl35x8XVM3idPlVRQQvB8i/zvVgIV9wsnZ32AD4Q1zcs5NkxIyZi1XsXP/t27vLs9u4GbdnXLemWMaa1kZ0kvX6t0+dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705724297; c=relaxed/simple;
	bh=NKgb+pd9zupAN1NZSivdix53N8rcuJCbHhiG+dLoZ6Y=;
	h=To:Subject:From:Message-Id:Date; b=rirOLPvOLLN3wgMc87fEf9EtOe2qDO0MOvAuWmf8Cs7zrJwC/lE8SN2r/lTu2buLEMxHLU0/pbUgerDTn9BqRmiS6RlbHhZjNzOdWzO1U8rTMjL4ihN/5Iue1tlFbrCzRSdGJTttAmL6OIJIrW3bqvVMaCVeQpDfajEtIhq/WXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+QfD/go; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+QfD/go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80BF9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705724296;
	bh=NKgb+pd9zupAN1NZSivdix53N8rcuJCbHhiG+dLoZ6Y=;
	h=To:Subject:From:Date:From;
	b=q+QfD/goEZCxnuAwGvuIUYMTVgr4ZWcGjDexDwtLcDbOhNMBwvWTc4Xd1+IciiXWf
	 Ox6mucFOttWeEqKHXpqlJsAKjehxxFe3bsr5KTyAjqujMrNLiV/TCmYUAHeqFxGUkA
	 vpN1SEJaL5ZycnwauQfsrzfnjlfRLQTOEHb98WsrpnDtdkeV+fDXMRyqIsHH28f3IX
	 raadh+25fLWUNmAQ1/e4OeSu1A7O2t56KiYxS21jmcCaYvmmHLMUHOsyGL1JXD0Ylh
	 46d0uTKbqmuiG3E98hIYRgBaa16QOPfvCYqLY+ynh5z3p5SQvIUycQxoSoNs7uGdmo
	 NcA/3sgToOK+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6246CC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170572429637.6396.14790338014719060685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ba32041a04e3834b96dff6899a5636fa9144b4cba8286cfd638ed47e3af9da
Date: Sat, 20 Jan 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705724296
