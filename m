Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B51C17A311
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742305194; cv=none; b=ZWCmNyDM/L01657tbO5YtnFbOhKfUjbdMNwqDHdzx0iPwq8vc4ZzYRRMSe5yHs0JQoGiEnl0sHPc7mqnVRF4LJE5anm3cPru3eoUshPCWI1VYu0hYnt8ZaK6ypx7dlCR6kjoQZEf94B+/HLn0ElNtYAgPwhhN1mhqU55epbCAKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742305194; c=relaxed/simple;
	bh=IXUsd58vcYlgpGrVljzdklbUY2fdkonR4i05Y0eDIp8=;
	h=To:Subject:From:Message-Id:Date; b=A8yg9zyfd18ggA9MOn+VoDXE5x4s7ccOGpfT4ec9YJixZXz7rkfwaR31hCS9768Mre3s/KByfv53p184bNBwwdxpXq1fGaEP6uQXfVmRWtbw6G3L3DdTyXPCxaWQ2oYIZrxtnBmLq8urJRfvIgJeU/AeuQkkV2TxBdTtUkCzqRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+bBiCot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+bBiCot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB53C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742305193;
	bh=IXUsd58vcYlgpGrVljzdklbUY2fdkonR4i05Y0eDIp8=;
	h=To:Subject:From:Date:From;
	b=X+bBiCotMDJLlkn6cEc2tVHO3lCaq6HxF8g8sDQswuyYzm2QsU9fYBZTQx921qJra
	 M8ekp4+hAO68IhKFn/xB56iFZZ+7sHiw4yfhcHsA16ov7frv0bGDsSbOj5kW4MdejR
	 GlzWYB5FNmTOHGy6Ep8RolAFxG5oFNxup48YKNDXVg/F39lft6+bUBJTYBvfGWyT8L
	 qRqequhoAq+qmzw6zDXkqyZaFj883kBsJbNSAnLQIqrIiIgwelMKABfYPdmpVeqwrU
	 qCwJhpLYz5OWeaqEja3nk6zy995MU/hxqVWAmGOXktCvHAAVfkVYYXggFK6ZJnXrfh
	 VIjMe9ot8ymeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DBDC28B28
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174230519361.6435.13699912054363363400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ce7fd383f02278140e9483aedb459d199557b41c93ab5c82f670a66ff01b90
Date: Tue, 18 Mar 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742305193
