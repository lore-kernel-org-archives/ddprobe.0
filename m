Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3DA70827
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729874754; cv=none; b=LCivzR4C8Q0OdFg6fJ7YGIyJXzaxn7kLRjfXMxBpM2RT3rmaUkDlewR/w5TEQ7cdTQaWabDbiVdMWM08Ab7JCTPQlxquXvUyo3RX445hX/2R+vg7pB3fMA21bRktaOd1vP6WNPMuVZjm18/a28kP4tyTfgbzHzAxK2gKTuEP+Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729874754; c=relaxed/simple;
	bh=TlkxqFHDyoRDMO5oES3LV2XL/ybbP4zISlc5hW3kdcg=;
	h=To:Subject:From:Message-Id:Date; b=dXMx0wB6a2wBuPFwOYjhbd8rqoaXf9025rXwkMJnFUv2CR/xpZfobgD0zU6yoVyGV/qYR9SwZonffFEY4tx4PiJx83avuQz71YFkzmEH+u4kVv9DFm6u/R80qONY9epbEitat6rXm9Hf9bYFwPuTKZE+VDKWPn5e0hnvoNcVoi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CA5SSr0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CA5SSr0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1FAC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729874753;
	bh=TlkxqFHDyoRDMO5oES3LV2XL/ybbP4zISlc5hW3kdcg=;
	h=To:Subject:From:Date:From;
	b=CA5SSr0euY6kWmll0ZoY6iCgoQjSEEZs7UmTWTm1blPEpz4i+kaq48+erBDPfWKQQ
	 qXFb8AmY5Tvl0puZoigZujgXDKPt6z8orw1atC/u8kipup6zAzDRsr7IR+W4bwSQ/f
	 T8XJdheIpcjDyKatIgr+DwzNdd8i1fJyrVlx7Eqr1bLYyUVbbBVp5SHsBIQ77bRW82
	 m2Zl0XF3uvNNCptdP7KTClt51WPrbkTeAdiAXgm7SB1vFgkyRAn+rFhOhSLhhdQiI+
	 DSdId9qNBoYRVQMMAHlB5bGMXVcX8C+XOkGzykHhwtpGjwcWMa0YAlZhoCP09RjHzW
	 inzn7y+pOOSLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACA0D149C6
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172987475362.25901.3159487222383132753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0926efbecf247e1366c9e5e1590f76c96bf3d6ebe6363c8361ca40217ac883c
Date: Fri, 25 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729874753
