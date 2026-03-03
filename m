Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9ABB397680
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772566493; cv=none; b=QwY+p9Hs8gv/LmBAAjVajZtIhqf7w0tmKTJYCs6ZdtKKWkb+RaZCNMN734LVFA4TZwJTPVcvwkUpdxC58XTY2jC0tS+yfkxqsjJx9FgR1wbalFQyeYeRBm9HN1bQxWYiFgqcBaRXHfpsQdfgPR11XGxWDnGysGWL9oRfEFu3l3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772566493; c=relaxed/simple;
	bh=PUQWW3UUElQCMWwpcvV0Jf9bT0LuuyQhWf16CUfyFEU=;
	h=To:Subject:From:Message-Id:Date; b=F70C65Ri5prT571v8AUnsprPkQ3KlZ3jfOUsIfz+hbm4XGYpQTPZyA+NjCGoiEN63aQG4kNMDAj6KiSJQaTeUr54KYmxcRkSehyQqMTUm6lDnc4uaqetGCudr7XMF5kA6/59TAi1yhP6rDvR1o5iWK6yQIs64WSFeLQOsuyCgwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBggaIe8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBggaIe8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA55AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772566493;
	bh=PUQWW3UUElQCMWwpcvV0Jf9bT0LuuyQhWf16CUfyFEU=;
	h=To:Subject:From:Date:From;
	b=aBggaIe8XOJYs2Y01Qaikcy6sKUUBPDMYCT3FxACZI3lZ5ma+eUwrNAHswo9JF8WD
	 STYyTP2B/JY+WmLJmx9+ICbNiIxODEyYkfhgLQNSRn/R0IGQODvKIUor3xvo6OEeM5
	 gIQZPmJ2oWwQDyLjxJW5cRP961mZ5lRzSmCgOfK/kY1jZ731KUzTxE7LSCPEFmIy6B
	 2yDlCY84F4sVswmt2Ms+sjFc/Sr5uK02mR/iHhhaWHPrFmF8ZlBnsY7tQHFPJaOLxM
	 +xzHmdBH2flx37vm4MTchQrUw99GZJ/xi1YDv9ehK8zwCj+duTi6azjqHa69v+9Ia9
	 O99UkfuoWbfPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C42EDEBE9
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256649360.13421.11501609510484613713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056ded798725aad518a9cf51c279aee6deb62533ea0d2abd73b99e2e36d0e61c
Date: Tue, 03 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772566493
