Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1531B1E5B6F
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756906794; cv=none; b=AElSVn144RmWy/YjWeqY3eS0b8JNyceHtZ5yoMORUdb2Q9F2KIHL6n0xBDt4Su3qOZXvJm/WD9/OmSvMlprqHJByXmeUkrNi5XrldEyKHfL/UZn+yVGJstxoBUbTcWahkhMklFgUaSOLfgqxfmwVMAloj7K4FPrw937e5sN9ZBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756906794; c=relaxed/simple;
	bh=mTqMSMT+VcKgA44xHlPqVKN9Wfe+1KESk3GHhYR9wJA=;
	h=To:Subject:From:Message-Id:Date; b=eqJolV/xxu6X0EKHCdTnucHKEs28sqUZjjo3u2HB6KtAOCARXhbdPvbUZPXRGOl6mM6ir/PZ4FdYXCQd7GACXfDcBKNcX2Oi929YiIIYnbPpidImrR2wNNxTzP3vuKc/Tckf4yzw+mcTTvcaC5VmkxVKRwfcnZ0ZTBXkQ5iEUSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBzmjniy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBzmjniy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7B9C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756906793;
	bh=mTqMSMT+VcKgA44xHlPqVKN9Wfe+1KESk3GHhYR9wJA=;
	h=To:Subject:From:Date:From;
	b=IBzmjniysZSzlWG0HSLVfMsBn9VtJnAMbHiHXCO/t7xcJmWwnuvdX7SzxM7SZkZXJ
	 07sYNchi+FQN1IC0YFLlaasgQo2OYl2xGMsSEFm8Kba2TmZu+WPIt0H+zxXpfh0Ywo
	 p2PmYjaq/OXmOXxxiLk6P+MJnXav9H7z0IB9B6k0S35UmPU0DmQzD1pnvva+d3WOBp
	 ROXA2KoFJol1eFIwBiesLrju/KF7FXY+3jRaud8G4YmEv/eWwY+lm0PIMspC2fsUDl
	 frRRr0Bj4rzoadDhss9YDKMYEKcz2dEhyUXHzk31+oyKZVEuLXv+Xzam6cnQhry9ys
	 fYoOHe5eRNEuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DCCA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690679357.1679.4170068014160532423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc71b44f0fab664540fd2dbf6e3dc393952c6f850db5ea5e31f55ca1a8ff386
Date: Wed, 03 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756906793
