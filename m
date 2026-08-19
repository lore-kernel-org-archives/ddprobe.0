Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DC44078D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787166634; cv=none; b=Oum/zyoysME5CKFm7FM+ArFrpTTCwlERodNUmJqlkDtA3rPuPDV+JYfPRLZRGf0LAqzi5qZQUbi30wbcUorz7c40Wv3DWp0HXkGvN0/dhgJL1DqQFlsba9L93aCD6VRwtzQb9oZXyk+CS/RHeoS5uae/SG+eLVQYVfeuRcOZIG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787166634; c=relaxed/simple;
	bh=DsrUiazJv5Z8SrdqWMkTC8Nt0zhbcfd3en7Edzi56lE=;
	h=To:Subject:From:Message-Id:Date; b=laLnxO41489PpS2oimfqPSGoguxIsDrBnRMg1i8pTq5wh3l4oNp5Vbx/lH9zQPTEhXN5+Qxy95xfEHcxNRA+Yv6zDuQ/72qHDFn/C/4UZRHvtH4dwL4TRsOh/RZ9OaMybp4eAjdsUkC4rBenzs9uBYhyAnqzC5oBLfbOCXBtlAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QztkCX83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QztkCX83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9EBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787166633;
	bh=DsrUiazJv5Z8SrdqWMkTC8Nt0zhbcfd3en7Edzi56lE=;
	h=To:Subject:From:Date:From;
	b=QztkCX83awdyA0oLhwuDo/xgvSCNeiuD8AVbdm7ChdbMnCTk0Kj+9uYHYensDfl7u
	 /nKJqWRNmFyh89C5lVQ4vA6wrNgWFuF9QJlbPuNLb48NVVqpBtOqpCSll1de4FxLGQ
	 3LtwxKIXkta5yIDJv5bX0lJtcKDBwFoym+aW5mQLqRG7S9OKCA+kJMgtQxiKlTGOcC
	 16lOGx+wIpbh9FXEzOZM2mGazNK16rJc8o0cZQBCqrfxbnj66pHsMhShugxXbO7baT
	 5g3FzOjFsCScJFbWAMR/JL6oZ5qnPtkxh4zxdV0nCev8MLiBz/e6JGc7phTVKlkA6Z
	 71WAl3THJwcYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5A5C5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716663370.32646.6677225833727356800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abf9eac0c36a067beca0dc6492a0bbb199e0b8b6dac9d92904d36da43ab879e
Date: Wed, 19 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787166633
