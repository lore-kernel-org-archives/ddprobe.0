Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446F356B85
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 16:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715444543; cv=none; b=r3o/JZqlW6HP+yuNCzNceaudkE3KPpEHscyGlwIC778/Ey5iJZ/oO7yigi8hUL8LbfEz2nIvwCCKiENsrmAkHC87xgB5C6c02cYJSJHyOzcGwqAibx0dtnaUdc4PRcajo24hogXhtekSIjOXmhDTsO5+sFVLQ4sNoJqj3MNwwgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715444543; c=relaxed/simple;
	bh=CbL2ELxYxzeahZfMGHEh1VAgGbBwaDqkcJqqeUjVsOY=;
	h=To:Subject:From:Message-Id:Date; b=BEiKqS8VhhFDp4OWI4jMiE2kHz80giROaMpU0KoKjiSULphkv74bfRMjzhaZpqW/Kz0soWm2f+MZ1IKb4Jj3ENP1ZLlemt+v7aU4hl3UNI5dbIjkUxyqbOyxCQ6loAyHtOamwMGBHJXiAOBnNmr79h9tSHI3a+bJRpa0HPqgNF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhu0+a/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhu0+a/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2B5C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715444542;
	bh=CbL2ELxYxzeahZfMGHEh1VAgGbBwaDqkcJqqeUjVsOY=;
	h=To:Subject:From:Date:From;
	b=uhu0+a/tiScq+A7QOs34tI1B1NoSA5oymF3Vgt48nLQz/cRCHkDF2DJHkx0o+gGcw
	 5XlW6rVhTb70GxQ/mF+Hv3d/KEmct04sYptQFm0lt2ruwUCeNH4SULShCnzOxwNmD1
	 Q3JitC07dkQjB644JZy1/1NkkRBB95SsEL2aSHxKKdfWrOXXs1lKbl/NAxSISEKT1i
	 jc6aoSeFA+k7Xk7omUzVFDD/NniUj/T9WgQCEzQUPG17xd01vE5OZQZSJiY/5ushfb
	 GxQhKt1oPYe3nTQzYc6Ms7lNGqpdTZmnb3FPsvIrW3erZhmLc+P7XR7O8/tQHvcZs+
	 SNHsszgRjs08g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83B4C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171544454277.29488.7195076815607906447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8160c32e994fb2d932840980f9b00ee4882f20381283b80b70d94fc494a4a8d3
Date: Sat, 11 May 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715444542
