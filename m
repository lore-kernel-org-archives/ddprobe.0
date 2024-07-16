Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AF4AD32
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 01:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721093123; cv=none; b=SAXjocMut+NQQdfYd2/LItKFuOnaWhd1b5KrzszyuciUsKVYNYdOaZYV4+firLRa8DvrFApDqASwdUGMrBqp/4qiAiBdTtNNI/taebrQngg32HaiyfhhVnlABQnxWdJUXyDS/2zSjcdCVZfOF1CcR33mHbjvoCiQaiovsD6EKG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721093123; c=relaxed/simple;
	bh=TLlXKgUbHidRdCxDGXOKOiyEjatfzfHYGR8Oo02bUik=;
	h=To:Subject:From:Message-Id:Date; b=HTc8W+C80ozxidyMTE0iXNUHvlH2jhRgIy82GxmYfOLRZWu4BDSb5IJmN9nXocohSfmjU2iBCMOtcEMHqzV1KBbiaQ7y4chuz4Mz+i6lDroCyJoCfv6h3ymgGqxOWv3V67vNNEwZ5G482Q16ePlayjlzg6tqTmV5gPjA56fMNn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5saPyDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5saPyDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D94C32782
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 01:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721093122;
	bh=TLlXKgUbHidRdCxDGXOKOiyEjatfzfHYGR8Oo02bUik=;
	h=To:Subject:From:Date:From;
	b=Z5saPyDdp3BvLMUq9WVL2Agk6BA4R9LqvHuFz6uqkxui3p6kWUi/oS2uxWtGIoeCC
	 eUUFYo+9yTRuxCeDcmkZtYcd4W0IVGe1+qHq45MpgI0ixD0i2eC9MlEjwrzmgEwf0H
	 qyQ3otWO45YioqsvjOmvoSnTIuAkXgZiBIHyz2+gb0qbSNTJhwuEgirXJEOTCleLNc
	 bVb9FowBhQnHJf4u5F2esv7qnYdXpxwT5YUQYvJL31QRv0VrTg0N9yRMDSHdv8Dw2w
	 WkiHDo5zu0HuXybIx2hTZfWtxxCkP7SoDWLfZKc3SDX9aH1mLRdkWukGUmFxAXe3JA
	 xvQqTDUR+tVOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C486BC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 01:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172109312279.10727.16984084526453173236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4cb16c60653a9ba4a29203bbbb4669801aabaa07617ffe90166198588555139
Date: Tue, 16 Jul 2024 01:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721093122
