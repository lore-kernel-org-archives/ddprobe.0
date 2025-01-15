Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425803595D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736926554; cv=none; b=iSeHAYR+KyJLkzr3aLzuG2M90WzRotq2miYQBzheF/4fguBgHKO0jCvXzebREIPAfyfSh3kR8zXEw0s5yXuKhal6zhiIEgzCVEeLb3x59CBNnNlkDjDil2vcN2HrF41D2ZhY6KwUStDlq2oiOtShYIB+kX09AWUebfiMBxjVxHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736926554; c=relaxed/simple;
	bh=6QG8zIYoSbjYntI6WLRfrJ+jjp74KnYqhuVuDzGdwbY=;
	h=To:Subject:From:Message-Id:Date; b=Ld4yfZx1Cyb6/mVJqSDCpdBiLHBhjYnTEkAZDicKz+7+kwmbpvN47MKWkIYvoeHlVp4g5yma6VQIdQ5grZ+/ah6dpd4bHzvV/0OTHi2bfmz7IxKY4JGhYlkOpCvPmvQSDhT8hBwXbdGrhj+tYYw3sPkiFQw+U9o/JY1EkSitNIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaijkKMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaijkKMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF80C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736926553;
	bh=6QG8zIYoSbjYntI6WLRfrJ+jjp74KnYqhuVuDzGdwbY=;
	h=To:Subject:From:Date:From;
	b=aaijkKMtdSqaqRm5FR3PQc/TesFxgUzANqK6iqGlBA7DdYSL7taeMGrsHFRV9vq1q
	 YjBXGbuQ30fempLcZBNxmqArsyIsrzjn5iQBEctUGe1u9NVlqjWNSWTAczkk5nw0w4
	 ewG9SBhDTzBDiyaAuh/jPsMXueFRVctOFJTZ6+ZGOWXPXsS+Z4JDenbuW4hW7Bss5U
	 VhH+78bYOK6rQzS9cUEJV6Za4PI8IWO5caNrcMldWiNQCnbGBZ8+x2qKuvS8/Q3LN6
	 MIgNHd93MdSNQBNwHcfkemwJBMJiE4q0J9qurlRRfiT0SNhB4244QfdcqVCruIB4P0
	 kSrTuzkF3OixQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982D3C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173692655361.21377.15122045079584983565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4fe844a5ac0ae18481149d0b3ab7e267e2a72869cff40685a8ab2bf0ff0e91
Date: Wed, 15 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736926553
