Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE4B2E8B95
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762807194; cv=none; b=UAEro9IoIY7egYWWQdI0zWIaE/npIGY56LyxCA6vDo3NTp8NAlt/Go5I4bljCBL/VcyYwDtpofZUvJZBPzNAwxquO6SKNt5BuRGAp8B5WluG5MVuuiIVc5PeivQ8PdvR2t0Yoc0+HsxqNypPnReLnQE8bWLaE5OAjtiAdoqwE/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762807194; c=relaxed/simple;
	bh=1OvlpqqCZ1CZeERXayXGOPGlHSTdVnx/ADaWq9C3flA=;
	h=To:Subject:From:Message-Id:Date; b=g9JlP4vvjQR9x9EN482vZEXXFZL6Vgq8xlu0zTo1iyCZz10pIhvFeCSkzgjHefBsOHKpdbJk5C9p/fqPNwohGyC7vrEyeq2hpqjCv+CKjV6ePJOlv4sUsrBc8P3hn0UXi2VcyfnUAFlhk2XTHlNbZ+dHpZN7dWjYmF95JcyHCiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doqRc9ku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doqRc9ku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7764C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762807193;
	bh=1OvlpqqCZ1CZeERXayXGOPGlHSTdVnx/ADaWq9C3flA=;
	h=To:Subject:From:Date:From;
	b=doqRc9kuWmo5WwIElIJebMCg0SNyctg8VyBFBoSgR5j9zhj27QIyBuR0ZqPU9VcJg
	 eYXj8uFyaaNFzfpZXMAo9Wq54fsL8nh5UHOhh30V19P6dQBIExyoryGLx2JCzPK7o2
	 QwcN2rmTNLQBc56si4wbEPJmPLYwnDs3XdwOISt9aUUxA7dEn4QwBHDEGBgO1xDSqW
	 1smtDmSsZaauy3nIxj8tQjapImPgm/c34ZLHR8oipPD1xkp8U3mv5q7QpzX7yi+rLU
	 3NaWOB7yGvo4X9adXMPexwCvvx8BoLxU/33ajXjlue2UBXOB5ksnPdbs3GQJrLYsVV
	 DSLhL47rwb/rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05ECCCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280719364.11515.8816594283260890038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72bd927ec4cbcf1131e96b756a42d0f22749cb90aaae0655fb7720bbb1537e60
Date: Mon, 10 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762807193
