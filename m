Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B6440DFDD
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774688694; cv=none; b=jj0hsl2oCsD10R9pMCwo1y277KElUYyijboEtY+AmOt+lNOKzs+66zU7o3VU7yMRiJMKnbSuyos1jPnOch87OdDciC/CTIr6S1rrYm6eP9ZYgSUqeH78jYRCUz+eT6mXSwb7XWoaySipSqCg2fHYgW6RQYFZicpnf+mMe1j62Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774688694; c=relaxed/simple;
	bh=hxC0sINWnDxZN/uQANPVc1hH3pUTrE13+6GkF8z++LA=;
	h=To:Subject:From:Message-Id:Date; b=s1Ocq1HoHCJ9CVq/djmUsep44Wh3y8y2M//xqdv2h3rxQB1aUJ2fPlXJYX6CliXcuUXsNsOgstnkbwW0+Rsiv+6mTFhP4VjUEKDS72dJ6gNzLvSPPpMQPXhfcM14k4oylW7OOkG2IBmhdxUelZeapQKul3k7rRjAj+QPYIypeQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azqe+aj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azqe+aj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC26EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774688693;
	bh=hxC0sINWnDxZN/uQANPVc1hH3pUTrE13+6GkF8z++LA=;
	h=To:Subject:From:Date:From;
	b=azqe+aj+PXeGOvZSVKojJ/hQRj36MWIszX/HxSYfTPEr6WK5lVgV337EHyjWzhMVT
	 T379VeK2eF1jsO/xOmzKkwOeLdWMDLtZ/0pSyOsVqoae1KkoFrEho0fg6ZxbrTT0wx
	 eGH16btp6tTHrt43CizlLvrGyJSMHJrICkLerDgIjPgJReU05TVmWWoun6k3hwO5Pp
	 xe6+V4sXreocPzho2Ow9tEHbHA9HYo0zKzgxM0warB/Tk54wj9qvgB7P9doUr3TnQu
	 sshOX0ksOTVXVZNmf0UGqShT7rpbv3iOWY7BkYARCd/ERYST4/rb3GYyhjou5nQmiI
	 rNp9azfIHKHfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DC10ED67F
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468869358.19441.18265246327838418218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c82f3868cc87fd69713ec464bda300daae351631ba72f8ae2c3df1ae90f0e34
Date: Sat, 28 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774688693
