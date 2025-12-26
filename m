Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177F12163B2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766762034; cv=none; b=qtxKnlFJhMwsaRStE5x6WNgZIU01XdqpHGKxKlh14s97SxgXVv8V3i9tfAMI2ILy7FTmwXGjrRPwGTahstJdXPNHF+WSWty49bThLJsfG5Hedjg/3848JPd9lPuNDS+lq+kZeIkEUr7FkX8qxA0SgmTbUHYnG13HOKkl8if7EhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766762034; c=relaxed/simple;
	bh=egKDGEqW9xXCO5ItXb3bFdrDfUARMmFe2rjgDvk5dA0=;
	h=To:Subject:From:Message-Id:Date; b=AFLXtTyA7j8GNJxYg5ZZKwFoBfR9/wPxcrL4+0zWJe268tSTFslMLRQtRBknOdcBkTVpCmuY7EErMLsn/1RKjEirW5SSU+PPQUzFdBa9/JA5Uq6wkKemMpaHTG/ZWS8AqFjXS4rv3VhfbleSj7hidePmGnlZbv8JmzFEWF1DJ/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDMRI9ug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDMRI9ug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE04C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766762033;
	bh=egKDGEqW9xXCO5ItXb3bFdrDfUARMmFe2rjgDvk5dA0=;
	h=To:Subject:From:Date:From;
	b=GDMRI9ugfZ97uuAWhPRvjI3xsdszzh2dVyi6pM6H+Bad6pvPmpw/Iw3pEMfCzgHsn
	 OnVmlOebfjAVqcN1WcyKGNn3Sr0QOcO7wtNn4M6YCkCdl/epr3t4swb6jJA+EFaQ2a
	 +xkPsTsoRFfaBOvsl+tpx5TpOsky1I+Fs8IssNydm/PmyYqCPx8sn/1d80vjiVhvRb
	 htdzV5ELq1wvHrVp5W7dXRIQdGSIM+7akaevht9QhrnzH8SVMFeljXmYVbVCwYZdnY
	 aUs9MkhiBdpXkTG5p9MOxJXa4XTqE9q9TTbLS5vkupD/FuK3XRuSExIoGKqBHPNcy9
	 XOX8Spp6CFRrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E85E8FDA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676203359.11625.13586024968050681972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f939fcc421b5e1872966e3a2481ab0f2a0b6588b8f9f759178abb4b2ed353c8
Date: Fri, 26 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766762033
