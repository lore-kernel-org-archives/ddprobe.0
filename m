Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460BA2B9CD
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744197594; cv=none; b=TB65guey3UQ3at0av1BBmhcXmCXsSpQ/8DkSg5kuE1FjurTceLaYGp2REsE0DyJd1UWvPVswT+5h7KaG7K2QitG2xYx/rfNa6ubGQ+jxEIE1qyr6oQ81f1C7ZqNkiEhStiewQoPWOhEUHVoUp/V6IAEZ+I9hDiYbKSR7p6KJEnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744197594; c=relaxed/simple;
	bh=POzrqo0Ucr5sWM94/YAkvtDk+z3pJCMg/FDzQDlPNMs=;
	h=To:Subject:From:Message-Id:Date; b=kCwbkdzNHeK3sOKmbCmkZby3Eq8KyVX3EfnGfyFnN4KVemojAF33+3KUrg04ADyXJajgmPrk2CVPbhK3W35uY77aqbGNAdYEsgxv1UNX8XZy41l/PR0C9kfeEbP0rrl880jOjEr1xLjVA1mtLjiBVAYmfI8IZ6M1tpMd9L1iTFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TszIC/mu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TszIC/mu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C15C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744197593;
	bh=POzrqo0Ucr5sWM94/YAkvtDk+z3pJCMg/FDzQDlPNMs=;
	h=To:Subject:From:Date:From;
	b=TszIC/mu9ikEJoNgwm/NvvDj0K1viORlPYkOHJ6QqQ58cd9QvH0r2RCnMVa7OctbR
	 DSdMVJ6mG47DiVdwsznpidzI6eCcb2MSzAXnJc2JgZBmk+b/93YyQuiTnb3Puwiyc4
	 b/TZwwdKBBnFfuAbTYD5nuqutuQI55tikl9MnDyjYVAJBtfbPRYA4/5Ei4R9jKEF0/
	 7Tv9MJ/xwj3QMwe1G7Dt/16QSXorwD6QQFBPJ8k0eiTlJa3KnqPqN9t68fY0Rz2CxN
	 04DAKW1iFkHGz7gf/rYNaXeDgaBOIuJLVKZnYAr4NxX/ZKkgtq2wzNNBKrgeCqV/74
	 6aEyEC+hF/9jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D3EC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419759363.5157.3488169993309186593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2492468f28898bbe9a2043dcd7ed228217e9154c70f81fad41ff51847d47763
Date: Wed, 09 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744197593
