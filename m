Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77CDE1C8FA3
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717016663; cv=none; b=t91fFduBFSpWvVm+3Tzju8u+IvzJ5p8Kg5mFZXPfdG+z55qHe5DxflDlWnbEelE1JVl4hCxmrFYIet3yPtjmQWhYi97qvGbLWSBkWm/sVf9pO6QHaQr92bm+2vXNyByScYLbvAagBsI1X+4vcMjyIuFZzBHMbZAs/S0sjcOruBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717016663; c=relaxed/simple;
	bh=r86hPTg6MSa37HHFPw53+w90OKX1jOVEbC4mqsg0yFs=;
	h=To:Subject:From:Message-Id:Date; b=aCfnn6whFR+94GpPWiqiXY7dPlNgpVDnVOrsxl0vzVncF4NDM8l93MUCU5+CA+aL3QkPFNkCzLKDNrJFBKoJKAEBlKQW45T+rT1z9MOb4B+e6+1kJNssKu5Y6/lffobuWbKhXp9qYr7oTgt5+s30A82QmG6iwM1PEalHnRUR2pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVOinLJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVOinLJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2BBAC32782
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717016663;
	bh=r86hPTg6MSa37HHFPw53+w90OKX1jOVEbC4mqsg0yFs=;
	h=To:Subject:From:Date:From;
	b=BVOinLJFZ0C/stdgYwVZAuwH6fYcPPyEcAZr+tgxnSEktw6xRXeVLCUnM8RYvnind
	 kwIfByZYNXOaa5A0nTl/iGGr0SGUcQBJuOnprocaYpYygNRRrzVjp2rRy2WkwuAqVN
	 CAs/qEech8dT1pAQncioslddMOhK8YxCaPlj+0FNkLfcR7tL5wSWQ5Xvk0kW72RK77
	 xYyTsrmPLSOlHMvLq5SeaXB7QwPrNQyZ89yk3/wTRTRm+5PygDPWjVZPfLmcOrJLre
	 thv3RoVHyauITz/ww6ea+JiQdxHiS3LyJSI4KFd6UuUPLc7bacF3382E0Hhdrvd3Yv
	 vNlb3/oCYzPkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7EEDC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701666287.4583.3304086453443787257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253729ad4e299bd61e932511c1e6d24462ad5276b66721ada964c4017c9e3df1
Date: Wed, 29 May 2024 21:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717016662
