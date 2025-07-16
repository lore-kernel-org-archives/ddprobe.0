Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE8C17BD6
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752638994; cv=none; b=Cq+PIOy1YXSmrbuo1jOYAxf2w1sFbkdCr1bEWnIjrrfIHBwuCCuYzNA/VkgXUUP9q2x4BjC0booW5Yh7gquwmvcdKGXUB3Czmd8jw+yLLFrNtlvx0IW5ZrxdhbVWKzk7HmAMdTUvRwxxsrEjr5rXqIpJh4bI5yzsOOhYG0e1VYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752638994; c=relaxed/simple;
	bh=UaeYCB+HzKRgh3J1LlZ6hg6FKOl1bF56MI4UFdeVNsU=;
	h=To:Subject:From:Message-Id:Date; b=r6ELbo0pg47Be+SSzEShehr9AY5sbHOwiJ5N0OrHf6kkqdEBGjqKeVerm9kye4bI4azf1lfBWCkPrrRLNwW8vLt6mDGaKa9PJWTktYq6xeqqZHbquGOBYwKYEPDnJtURfHhjJYlKIpGWt2w399bKDkC1VBZZytziVSF9aeVC2no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QX8N2iZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QX8N2iZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0763C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752638993;
	bh=UaeYCB+HzKRgh3J1LlZ6hg6FKOl1bF56MI4UFdeVNsU=;
	h=To:Subject:From:Date:From;
	b=QX8N2iZhcf3TXjWv//5J/SYGFdOwYNQ1UuUhBAwkDIyJgnqe4A0cf9TJGjjTXR0gp
	 ASHz7HrQs6N89mHu7omnghV5Prxp0Ba5z6gsINL8zVDhzgQFc7kc12j70GaFgp8ixw
	 7RAiATwq/faHIv5bES1M3Kfx8lacTZaf89AQcv1DhoBCMOaNvoxxqRiWF0dMHId9Fv
	 lF/qEKNOhnTET+lNNWwVJopbocsbtMDUnUuF/qQiCeTOmH5SkvB6A8D2d2ZAaVwoRx
	 fIsZ0LeAAVfTEppdgF1ENZb7NRHZB+xmYZWUA8DK7kuo1dcGssn5UEbr7a8uECm503
	 S1p2Rt/Ib833w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F434C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263899357.26070.7033506592795127384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de71b4312f8dce8bf37c9e281afba33b7d0b772c391a937fbf5da80ab23f4559
Date: Wed, 16 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752638993
