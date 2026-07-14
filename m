Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D1B3624C3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784027914; cv=none; b=khnqdRN/K0pTL51+Bgp2DB4Wivq6zlp+qXV05QmBbCW8BUgP6aKJrv/ss/cZBg9G3zEToqfdbo/WS9lUt0pfe0wfebI2Ia5USBIWHU7Y42ezGEjDytiaEcAs8tu6PEVJkpx6Z754x2eKFBToLgbydt+9DOMHgt25RWCn4dDtFDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784027914; c=relaxed/simple;
	bh=c1yuy/gkIOb5pTv7apxn5fPIXQ5lwId6j/JRZ2HrRq4=;
	h=To:Subject:From:Message-Id:Date; b=Z/5CVOn8z5VYKEyYkttplsTZ8XCZkzU0yiP15VCp8ulEV/PrAQffXsG22wEN2NBNOc6hXTHR0g9FOi1ct2YPp/zeb3BzvMdszf2oCN43eiEyVAYL34czWBTO9R6LmrQMuP2BTtjcBXiMI+uBE/enaT3U/cPU+ZAhxMXjgpwiDtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSUpGqxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSUpGqxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA898C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784027913;
	bh=c1yuy/gkIOb5pTv7apxn5fPIXQ5lwId6j/JRZ2HrRq4=;
	h=To:Subject:From:Date:From;
	b=cSUpGqxcmmtYWsk2+6yZdYEdXIkI++F+So26GxvO0p+2g1ghhZV17OAT34cISw+oB
	 WgRvqQcWyw1DgZvQ12wUDy+QVr1KvzlCGN9UK+kISPh1zgXzgf9IOz3hgMoC0/hwhf
	 d1mFjkjy5zcaU3PC04/15AzUIS6j/QHNuTJErx4PDYebe0JOPeoHsPE6wjKWtJUxJP
	 f+fEMogi+YsZ+isozzCoywaqEMbpgYQnXoNRh/riBsa0DgnmthBSiGMqyi0EwjLibg
	 Vbt8s1qcDPwqDSHhtjkyblZkmiiPJjjbgHJJm1l6c/d+NHlNEcfrGCoLDTYU5Q+k51
	 TzKafCY9QihbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A1FC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402791368.13780.7198151545604079505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877ae36aab99fc3529aaedc2ae647e67e122fbfb00f64785082c2c358735f8c9
Date: Tue, 14 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784027913
