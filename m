Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420F8C132
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714443143; cv=none; b=tmSULgSUigjUryTtUwpZaZyzm1+Zcseeo/EbKLgIRw8e+GAEIWncJnWDrvuOiuTMkb57+Qvw6M7n7eXV+2vPF+JOsvuKOT6TrYWfeKH5H5BWopSc2ALyqAmyosRFht0CbXYp1mi3cSQT1q8uSwHYtZVznjE/nqrAm65H3vi4Auc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714443143; c=relaxed/simple;
	bh=EX/PUV1zG34To7VSC4x2xG2KcaKY5/gAiMPOXSEeQVc=;
	h=To:Subject:From:Message-Id:Date; b=JaBjWdEA2bQYBFJ0/0zGp/wZ0oHh1prw3tYMqLl3D3R12Bi/jB12VGNeZJ4V0cjgjzhD0PV7LstR3bkr/CrRMKd1TPOz94/l0TSL1DtNb3BL1F3U1KtWdp24srnrwmir15TzbJcJAiYFvxoOW9tReyIQUNEBiqJPxvh1fhCUWI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvJKv7rd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvJKv7rd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C76C116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714443142;
	bh=EX/PUV1zG34To7VSC4x2xG2KcaKY5/gAiMPOXSEeQVc=;
	h=To:Subject:From:Date:From;
	b=nvJKv7rdMdeZIh60OcRXtsoSf6W1tALXTtHdqqdNXmulCFOTlANgk7mE7ox76DaSb
	 nxQDm1+V7nSDW+fP0PkWjyNlV9RWxRw3qIEMUqBXeuIlZlv4XADdlocaK9u6MnzUhP
	 Y2dNaH1345K52Nk9KUZzWKDcDrnMbGdgin8fbxjXJaSaxh+ua7qXp84clj/2dGGt6V
	 Co5xDKtjCafD+cVU9fk/YNr3o2jq2RcJ+3xk995ycriTfipuYO7orPMZ5pAY9+AdgW
	 PVuQVEATCBB+VcRKwQruZa515yrdqmt0MEFYnoBX2qvqw1JIEq1CTj0pbY6EMBpLCA
	 9FcytXl2RxO9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22F8C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171444314276.5413.8665677272800118941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de2e8f08e6a9620f2e7e69831a6d57505c720073ca8e2df4a682a2ac9ec7f90
Date: Tue, 30 Apr 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714443142
