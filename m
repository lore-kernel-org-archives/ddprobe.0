Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3415C16C684
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742971794; cv=none; b=l+Sqdem1GaDMG77fXkc0kp6DfDUngBO8RV0JO09HzSJ589PDfx+gz3Jg9UAP1Nbhq/tD7Q6EmUl0Tnq1aMi5fAK4oacDbWdS1GtGHydkVD8m8URcKWupsoRuVhABZU8dq+36hl0DHMmzXTMYUHH5SBn4EdkytKdtpINY3zyv6go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742971794; c=relaxed/simple;
	bh=+YxC85ay2SSG+5+rSxYdkOe7yE2GOuKBlytGEfaYS7Y=;
	h=To:Subject:From:Message-Id:Date; b=fanwb+vbUsSZyOjDxnTQlBhUprzhXiDmF+I+ai8TH4APQ2EQDkPmN57tim9ZDYEOZIqfIJQrI4RdMI8l1ZjiJO7+cZiARdIDAUd1Fl9eYfvdgVb6ieNZceHqBiCpgtCcUih1shWgDeaQ985bMDNMpptUvUVvjbax/r49kbkCnGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kc9GkpCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kc9GkpCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8BFC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742971793;
	bh=+YxC85ay2SSG+5+rSxYdkOe7yE2GOuKBlytGEfaYS7Y=;
	h=To:Subject:From:Date:From;
	b=kc9GkpChfBbzSVSP7/Rliwir2ahYmJUXxsX0iVyslmoFS2ZeMYuO3Fm4eFY2oXXQO
	 gTR1NfAysaSE5NemsZWZWR/vGBMpt4W1zYa2RZNCdUUtjWil0zZfoBVYIFGVtblFto
	 gGzj4VHw9QUNwCrh+vO4bby2UKOtjvsVwBR4eUAFVmHm0WfeqAGM5mTz1KWHckO9zX
	 Z1H1DMhw6oOnlprpgmtjTN+Y+6paGQxNz3JUYm6eketWOsQP1ZhnAi5FGdOlFKzYvG
	 xzX5kgR6uy+ThzQsPtCsQKP5eNpJTJLZv05tybgLd/vy1+CfLYSCV+4GX1f10CV+Df
	 i+UDWHRzcJ9/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE5AC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297179362.25623.537547458842916074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f75764741f92d3b5f808959ebb4ef25da3c0f3c45baf46e515c1fdb34138429
Date: Wed, 26 Mar 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742971793
