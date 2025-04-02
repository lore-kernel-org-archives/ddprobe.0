Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E798524C
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743572994; cv=none; b=jVo1q1nC2v31qn7wAL9uR9DfV547fI6djAu81xZxe4C6tKUi4cfHLy2LoYfVbW8Ad012jW+MPKzwbzw6XQ2zVXv8JS5ankwOVqEea5EZ5OTMeq7N3H8GIyNxtMvX72075xD0gbQLvMaxpsEFdCb+j0+5V1kVPGQQNFTW6hRMxDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743572994; c=relaxed/simple;
	bh=ivbBE7r7k8tp58AE55eP6jX72VvkB0tWYX14ivtotUw=;
	h=To:Subject:From:Message-Id:Date; b=Dj5foySlAOYvybSt8eHj/h/xMmzb2EJfNtmV/OnG+476SVGYoXy0Aa56d5kcNxpNSroP/rgI8Eq9GCw3k/eLzART5H4VH09AblZ+tXkSQNNg0/hXwWCcYOFAJfGDcJN3ny1ahhNv4C5cK+/mRjZrE7zEGa1mj2HmwHbkL8RV8GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROucZtoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROucZtoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74F4C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743572993;
	bh=ivbBE7r7k8tp58AE55eP6jX72VvkB0tWYX14ivtotUw=;
	h=To:Subject:From:Date:From;
	b=ROucZtoFoXbUpYtjWFdYS+s87536Vh/nqsDTBTf9NM6sutGD80pDn/vuC/uPZkGRM
	 MePa3Y3w3Elz+TF9bOwFcPiqmG7zL1i3ApNRnrg36YzWFyGEmBTvUAflyh4y7QzbpB
	 IZP7npJlVPG4a3ZYxTnZt4D76MzjM8vVqkDBtXNU08rS80VTpiHTFHXeetO3OwQH8n
	 Q1msjMRYoL+8kmRSB6sUbcjKBEXtcpPcE8CXAg4NOIod07y2F0xVf7IuBMubjfyRbx
	 BdIM0Tn4ROhfKmnvP3gC3upS2m2v86B2v7E4GERwxmvd5Ek1DfIImp6ec9rx0Oh9oy
	 k6pGBFAQ/m/Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F511C36014
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357299357.430.15183461073975436873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6361e837ddd5aa66959bdcf8b82e16bf3c546e376e598648fd7f3518d0da60d8
Date: Wed, 02 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743572993
