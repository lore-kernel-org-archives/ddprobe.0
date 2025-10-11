Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8C3FBF0
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760213394; cv=none; b=ljbvqdn3ZCu8NJ0SgtW03h3/qaLKM8orGKxyEjFsu5qo/VwCNwaUGhyJJWtfxE1OthvJYz2MfEh2QDKAq/U+iYOKNL/LDlOFl9hJq5y0TU7av35DHLUlex+vaW225qOzs3m6e8BDM0kr8DC4+8U06D9yXWNnQ7Wu2rzDV16YtIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760213394; c=relaxed/simple;
	bh=5h+1PaKmrAAUKBQo06oKEsRHQhHOOT/dniooCFkKe+M=;
	h=To:Subject:From:Message-Id:Date; b=WzZqZtqQy/L0YWbLuILiFvxEeP2h4zJKWou27bvnAbGiqGGxUPmOEbPxRNozxMlFFMnybmFn4OYxYcUK3ig7w9XEAhWwuNfaVQ/vn+zPEDxjBXAnPXL4dKGWEgpOydIKx6J0kYmsFJhz5v7f6Iq3hhabhLowp8QDQOCxd4GozI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0Ay0Zmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0Ay0Zmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F3CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760213393;
	bh=5h+1PaKmrAAUKBQo06oKEsRHQhHOOT/dniooCFkKe+M=;
	h=To:Subject:From:Date:From;
	b=Z0Ay0ZmcHFsIs01SO0jOoj4dGsrFDYrozJXOdR15PKiZDV6EQXMkLDopg84Fo296e
	 wlv0Zi4ijKodO/CWZ1e/d2Z+r9G4itjN17dLJir2VeGH8TA+PFpnFoWy1m75R/nvQT
	 6sOhcI/m32h0sXhATIxFvJfAROmVuYMIgbrQ/U3mV9rcBPqeDld24P2wklycQQh8WO
	 uDlHji8zJcewPkuILT/cP2YBt0rnPy+wQDq8TyZPucHStNAcU/txmVSu8nWPMg+DuU
	 J61rv/mF+lhMiXGEuf5J1bpvlI8iAT2eEuqTqcQFBelRqskJcwfJ9PlASZKWBuNL//
	 beof1Y0HGVtlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9446DCCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021339357.27774.14745475780463664897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c709e5a1b2736331f22bc0b37ed75726ecfb3cdc2fc522de114cf4976f2e483
Date: Sat, 11 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760213393
