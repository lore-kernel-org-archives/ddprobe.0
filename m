Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC64627466A
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754652594; cv=none; b=BsPi6YTPPjrKFOC2QhuwDUgIJJ2xa39HXIvXCmqEJiq3U1GJD8SCJSuJo+YTH76jsFTLNU9Oi8DLzchGoiWBtIu/ZmIPhctimPqBfCAv1kgs3K4cyYaUdmFXKiR4mt5EyKpN3aM03GuBToRGTmch+Ou+VWgOsbViS70qLOgDqsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754652594; c=relaxed/simple;
	bh=lV0EVPbpIlUswAaOmmQmDqjb3NT0XMK8Ex336MjrT5Y=;
	h=To:Subject:From:Message-Id:Date; b=PQzxGnx61YthHX60KwfT9CWFG5Lemk5qECL00YKuVhwbXFKsSop2GV6J9uf//E+CFioExrXiP3NPUIhltQfUbnliTMW1Ijhc0VyWlhL3QVuH3OXCyg3xbqskRUfp5NfUDCiyjO949+tXm+NWOTjC6TD2CwJX+dkMy4a9V+pNj5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBSIWbUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBSIWbUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E403C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754652593;
	bh=lV0EVPbpIlUswAaOmmQmDqjb3NT0XMK8Ex336MjrT5Y=;
	h=To:Subject:From:Date:From;
	b=bBSIWbUxsMwdOmtlD5DGBrUazWC2ZqNTb7tO6Uvm5AIAR7YujYt1jwTnIkYsTEPVd
	 YmFQOetVVVREZm0ZfPyW0lhzFsJ68VGgyH7a1FkPVNOfYZQuMTMRcNbKJfOgOuTT+9
	 lW0ESHSsIsgdXcb3uhM/MajkR2NMGmrIGyvKO+3FpCccpmYOFl6r7OZR4EHzIbauhw
	 rVaoY2awmf0TZu0K/tytP0JEDgPJitunWnm62jiTLFxnbPCa4byq2C+wUYhCVvq0F3
	 JLOTmdikS65VbtsXyz192Y9Nxxb4yACLNYrUNg100ubmnajA9c2zNXGtKPNCtvJL/5
	 iz1zxZV8uZckA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F138C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465259357.14765.12100155634789581970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29eb58f0724f82347b75b7cf8b086cac6e7c6c181c5f519d2bcab27c25507d3
Date: Fri, 08 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754652593
