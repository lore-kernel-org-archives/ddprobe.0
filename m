Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113531DF736
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768023234; cv=none; b=c9eS33W4ZgJreKvXxBKHFYKwklZK/uJMvQfgAMVm/elkdBWQXnD2EccCIWt/cTGUy4A47c8Rzz1pWltqUCTZ+Sui5xjmhwIUJN+UmO5QVC+OudswDXWFN/DtPcnhZyQePxzJnpBywrMpMCdSNLZXWTu1r7ZYBrL/6DG+ZJKGiV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768023234; c=relaxed/simple;
	bh=nWDwY1l7nBL+EOnRevBhOLpwS5qK3b+7B9Z3xhE6rCo=;
	h=To:Subject:From:Message-Id:Date; b=LRKeBNWIMo51fUrVnxu3csNmsrTFqQKe/TgbR4QfWJXN7fomM0pX/BokEnMYTf1KCD2+Ox3ZeWbLMguXM3ZTEv/lCZFiFKzyqMej8Pf06IhpqahrVhGP6zU9vXN3Kh7C7gm2Ovp3P0GP94TQz9wJu8BC9LNkHRWnjSXY6vnhfUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/QaSwv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/QaSwv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768023233;
	bh=nWDwY1l7nBL+EOnRevBhOLpwS5qK3b+7B9Z3xhE6rCo=;
	h=To:Subject:From:Date:From;
	b=A/QaSwv9SgSiPuMaqvpStfOeKmpLxQKT3u1Wj3A/XwfVcHZne1U6JtwR795y9mZBb
	 flmEcMpHH7WNSvuieo+dpFxBxXLpFOWcnaMzSUMgKZe3+qAfsba5hYtT760ZtQ5PN/
	 SqnYQ8Idf72Wg9w4AXQDZOxcg6uRZ2BqmTmwOkngpsoLLVV/XgAXU2bxqBoJEXY+5c
	 v9mNDw1ys4XcsHhK9x+Qtf+ZS8I/VWv/hmpIkdc6Q2211CftgU1aTA0I0vFJpXynmu
	 Zah0V1e3o4jzs7V5gs5tow96p57j4Mnk9ctBkPrU4OiwdqF+SPcK+s/yArfuzh00uk
	 KONxtIccz9tzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969A1D277D0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802323358.18424.16087529313173431877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a8e262454afb60bf90f00f85192a85b84a8e93ef30091ac49589a13595670e5
Date: Sat, 10 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768023233
