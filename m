Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A42F13AD26
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777207654; cv=none; b=eAmh65BnxO+4drN7WdiT9oyZxzJd6ugIiDtvLj2F25Y0hvhNm176MAPSOg2eUJiuGOh2acOIDBBKBLQT4Xr6lprrVklZZD9Tb+rDo7YncLeD03Lu7nu0RR7EBpRo6jCWjOcDhohANiT1emch+Uv/3p4fWDixPuQvPr02uLpLNk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777207654; c=relaxed/simple;
	bh=dC2cheCLJsqyoG7UNUjNiyzkbbYbhXWjudU6DMozWSo=;
	h=To:Subject:From:Message-Id:Date; b=DOgpGbA9WDFGFAT0HWf0C9Of6la/Fr3/zW4O4ug9GOev8vhQQMGA1NvgFz36O9pGkrTR453vYvTUVOz1JVOzwQN1GS6zOT85fpwUG0Ouio5uho7QC7G62ypm1vGjUyIHWFkzv8qAbbUh7Fy6XQo31yVNtYtr9IfvrREUSsikIRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iieaD3o9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iieaD3o9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD03AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777207653;
	bh=dC2cheCLJsqyoG7UNUjNiyzkbbYbhXWjudU6DMozWSo=;
	h=To:Subject:From:Date:From;
	b=iieaD3o94t+CC/42e1foRcUfcnV4pWLAO64/c+v3JzuvwQ9cAfCfHeQ4iB1032seL
	 XyIVXTUbWV0HLRJK4y4mCn7zNP5SZnDPNi5i5js/msDykw7qQSPuv1ODctc4Bz/y3g
	 ihptdpIhxOsgCo7Y/nh0SvusDXBaw9A6jtMoI4eNs03RzHsl2W9UWWMLPaAwjpVsqn
	 MUJYNXxZoCO8Z+J37N00pcvp8RNoOEk93B/2T4EdM88H9mqKiU1H0iffdgSsW6htSA
	 zmaGr+sILpgNgDlafgxNbaLR/mfGzqbQLaE7I0XWK2O7ybY3bWcF7rIqzGbORz4fMn
	 8VrWguSgEkkog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0BDFF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720765368.28222.13124770146036173967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abab193ae334839fd9e5021d5d17776127ffe0e309c6b1c818be73a20df4964d
Date: Sun, 26 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777207653
