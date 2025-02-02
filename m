Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0761A8F94
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738511754; cv=none; b=lvZgOLHZZu3UXHAFgiGWq49HcAm0bj5g897FEvfc4i1VF225CJOtsdDilpCz0M6xrXKb41Bz9VaaL60YAHs2tvmuuVeh6lmmy6mEmRyRGOPEuCyFTaJEVojOzuYUllbVXyGN2qAnJGeR3xJ/KZPPH9u1WqhRQFGXYxNQCUyXLr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738511754; c=relaxed/simple;
	bh=FCFLHTt4E6gBzPmWQn+ixvSxi6tHsusTVpo/XNhmDNo=;
	h=To:Subject:From:Message-Id:Date; b=lK6m9KBCMH0UqO/Hpu77cvLiQur4lcU+uZJxjH/BAlIJkOOgCZ6THFbG7Hs6onYUgjHWQ9k5HXCSLSGj86fv6zyc7tOI+lMqh+8TIE+dHx9opfYOotKZVbh+EgaNxuUFxoKRIxF/eM07CFojExBuW5K5xHHhjYbvHwW99u7rtx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udjGd3XB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udjGd3XB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D86C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738511753;
	bh=FCFLHTt4E6gBzPmWQn+ixvSxi6tHsusTVpo/XNhmDNo=;
	h=To:Subject:From:Date:From;
	b=udjGd3XBCQ4dA3Vux+kTi/pFLfIyX5Qci63oT5JYzk5nKMWJE3b3xTMoaBw2ogKpp
	 4/m7M3/iEbHDjmB9MLNOyauo0tsrS0SqcOhOIIgNoh1bZo3hjJffUP/zEWi5c9N+XT
	 N19nNsD9sDgm32BWpaOlTheikhRl0o8TK9yJBYX7PL1616y4koP6EvFg8He2wubHHF
	 EBXVjR7F3UZkVvBwGmVarlnjtSwgEWNBECW4NdFi3mhy3WNvZqq+rht+9rbN0m0VzR
	 kmq/zixMpiJI3dQg4V8pkThaC7XtiJbzuUI6/3x0cHBZkUXUwmayl+DrJb9Pe5Kefn
	 j11BC1mjVohSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71D7C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173851175364.17846.16382962446524989573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002a4b02829b180475012f1ccc94f27d15548bb04e36b77f05c86ab8232bb41d
Date: Sun, 02 Feb 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738511753
