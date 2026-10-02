Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC6B3C276D
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790983234; cv=none; b=sRquduQmeBJRTC/YA38yqEEl5aPVf4mjbxfGDo0sXEMWN58j9Ja36AH6pEmZP3mtQgRopC23v6ng+4Y9DR5GaQXq21jpDy3LgeafbyFMfwb6T1BCv4SsjLctAwadq0p8WRTeqyEQ/bnhPwU0SGgFFL8VOCnLKAgQAP9hSruSQS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790983234; c=relaxed/simple;
	bh=6tZdnz9KynK0DZ1gdLswrm+TsZ5cTHFCKULMmNG0Jrg=;
	h=To:Subject:From:Message-Id:Date; b=QeAdGKy0a3FoOIFgqq8b6PrTsO+VATWFbwz+96fDxu6HBBiTRniyLkqxye94s5ZrX+aWl02+LuaENjyLSVcxlRJrx3HupXxemMOM9Le2Q9Vx0guDhnWX0m0NL6zpQBF19MtrNyy8T5vuzcHgP8+1LC5+LaUh5u5xk243jje3OVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5oyZ8dh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5oyZ8dh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAB7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790983233;
	bh=6tZdnz9KynK0DZ1gdLswrm+TsZ5cTHFCKULMmNG0Jrg=;
	h=To:Subject:From:Date:From;
	b=X5oyZ8dhw0pxYmlKNEnMZMy4fvSBpsyvHEdWE6TKzJ8dAUzg9khVDp3MepnmcgOPz
	 LDob3UjJMfJw/Xi8a+PaK/RRZ28CrgQI0EtAFF6OfNthAHXrGotuVp+yIyJP6xwpml
	 EK6oCtD8tqJ/5jzW90roDQXciX2wCbehUaxLkCqevjKBb7uiLIxGn8Rbi1NXFfXQzU
	 BPA/XTBlFaRoZsguKGr6gQXKYt0vmkTtH6g3OJRQ7NhHny++QOxTVhT88qUkIq9qXc
	 afyFcxED7n9i5re0PRUC3lRRQLuSkIcQm6MTe5PWFp1JiEmA/wOUWrKTltsWpAaPKF
	 cocotGxL8uRWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9997CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098323368.3564.2077990359524194930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc04d6275fbd61c9a0fcc7beed045376a90f50f1d1b047cbf2e5bd74dd29c80c
Date: Fri, 02 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790983233
