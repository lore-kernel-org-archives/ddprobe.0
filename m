Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C2E23AB
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724383554; cv=none; b=NT/vLWWXzCDeKTcjxcVhAW09Hw2094GGzrNHvJt2L7xjiEy0q5M1jL4XbxO2xfgi63fomxy4KzHhJcuksvFut198hDlEBsKtzDLMVbmkNaU4FSYbUKF6BVm1FxBLowSXxvpnJpOoI+GWBOrBO7LrRicg+Yr1PxUwFKk3eG77GRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724383554; c=relaxed/simple;
	bh=3s8RIZgHJNGrhm1RnAvWATnH7GLEcxSh2vLmDbH+874=;
	h=To:Subject:From:Message-Id:Date; b=fpG+1IVlgGptUS9sTn3zw4VObyUuZhOKP7mj+/LAZcDFm2AGPyoWI33TqTggkd9odp6ellNv54J0nPHJhs2bx8QvT3a5qUxacqSJIh8YRsGbwDYPiW755BwSyAgsjphUSkNrY9D3ulqSXOmfdezsJbnuG4IEbkrAK5drmTS2Zns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyEe4C5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyEe4C5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC552C32782
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724383553;
	bh=3s8RIZgHJNGrhm1RnAvWATnH7GLEcxSh2vLmDbH+874=;
	h=To:Subject:From:Date:From;
	b=RyEe4C5e+QM9+HF5ZHcbb5qZEvxYoVS+bwKFe/2mWn6YL8ON4jEa8JZqkoLADJlVn
	 TVoOd9L+z7h9ujPpeZK+6OqEq0I5MDrYrwVRQJnESMluVBBfNzcMDirMdRzT7CWxEW
	 5/i3qN3FpIf1+exrslQhemmlxXbAF4x2Mcsdjk8nFX8YwXLRku3KipXYGAQC7rWNME
	 mSXCrLC22Q0tiHY/397MO9Don9FkMlA8hVNRDXuEU83YB7qJxSFvgeUevxKYPSZWGG
	 s8t0tS5DsrxeJ0DLL5DlI2Ujw8IW/CDqd8GsuWpHoWZCK4/UKHeJlO8y6bQl/m8iEd
	 uPLjiVcZE2/Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9365BC52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172438355359.5092.9711654161153307161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e9d4564e3c04247ec8c013aab281ac3d9983aa91c6e7ae96f704a04ca629b6
Date: Fri, 23 Aug 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724383553
