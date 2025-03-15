Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7175317555
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 02:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742004535; cv=none; b=u+gV0RzWXFj3I0F6yERSrFPIcaZ3xeYlyE7l21KT1w0koopMirnAZKLkEd8Qg5TNwknB6aLjwHIHp4UrSskZ/w0GYzM7OUdUC8yCvfydhLsttpYKSzqw0++PyMnkwfB4H3E8UaGMM+10YW3al4Eu+lp/4Hg3b976Tt/hgz9rfbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742004535; c=relaxed/simple;
	bh=z9FB2af7YxP9jo/AM9y4zXaQP24mrKdpfhNf0p2K8mo=;
	h=To:Subject:From:Message-Id:Date; b=cnqoGehD3A3UpL+6LKNMHTp+u8g/Of7Q9H157ZFTvRfELb5CwR6TTnkQwyWIS6SkrLtrCMpANdSmiOApmN915I/vIeXZvH/N7ZVsWvO+y0UkuNATpHqswmxC/Endipe2c6z43yxpnPIYRFJXs4j8Vkbw1xKCJoftrA0wi6viFFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guq9D8is; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guq9D8is"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89E7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742004533;
	bh=z9FB2af7YxP9jo/AM9y4zXaQP24mrKdpfhNf0p2K8mo=;
	h=To:Subject:From:Date:From;
	b=guq9D8issrmDBh5tf64iekQ9sCX8q2KSEyNG2Y1ACIyrqQwB/9t+VXDiWy7Ox5y71
	 IX8HhLwnBy7OMIehDZdOly0KOooshYbykbWFjr9TeNq3TQwi1ejJgW4jFVs/f7bFip
	 rH6yLzJrUSjH4pVxoo1jbxBXxmaSA8X6ZIeIJdbtmuEQmDjfyzp8g/NiY9k/xnx2Ck
	 WJyNkq01sAoMoTtUhxBZumGMcodz/Jvpm187+SKT+2klpCbwkIEQEqTD7W7KLC6IDD
	 J9os3D8DxhrMOgimHN/yZC9QbzdqlrhBNLeio1VWhKtLoyan6xrYJFXMnzSHt7JIUq
	 b7UR9GV9PC0zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C398BC282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174200453375.7116.2438687787778462105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a4eb7a3e709c09acd0ec22ab25adf7dc34c8f4e911c15ce17ac7272fba08fb
Date: Sat, 15 Mar 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742004533
