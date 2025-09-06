Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148CC7260A
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757117994; cv=none; b=fRTtGHR8+1ZwF7t8gDiYNWbKS2oh394XRGyfiCn6rVUdFbNVTlH2utCgbXrY6TCdtV29tKl/IjQmYxlnA7qzC8UvGrOAZGK/uLrKIAtG5hYewP0TMkLOkIxJDE8vTIi6JrWhParm2uIbKY0dqvPx9n0gdCa/ly4DZ+NzQMgzYdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757117994; c=relaxed/simple;
	bh=JsOi78AJ2uxYCLQGkfiRiVFv2k4rV/8/sc7s7tUAZJM=;
	h=To:Subject:From:Message-Id:Date; b=iMCvsK458hWdxUYrY3ydLWdLalsDUuml3BmPP6JQzFXq19iRJ1XOClSnvCRm791XgkSRyWTXtZCoZAcMd54Xbz5TWgpc3dv2sNMUw233RlWo2MCbWUXoGt4CNGU8d+Jw8vvikuw5KwRDvJnMVe/HDogNRBYccl+/HwfSA+YbKOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLI007Ft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLI007Ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A08C4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757117993;
	bh=JsOi78AJ2uxYCLQGkfiRiVFv2k4rV/8/sc7s7tUAZJM=;
	h=To:Subject:From:Date:From;
	b=jLI007Fti25JUnkbD14p84asasUd1AS95EomCV+HE8EEJhbZ/7OEiqf2vtzfrY4y8
	 VMePgOhY6JGIcLvoZIywErlOQt9svdekbchf0gz6F5RjqJ67juZgfE8s2aew3J0ZNd
	 +sfikj812bZUhNiWHtHOZhY7XL2MXyi3bn8IxRsc4XHXeEcAlhRXURKo54ZKGI3VQn
	 duqfBr0ihYDJt8AndcG4ZjxUMGWynVaqqS8yD3bnCXBax//AK0h2ZIKir6eit1jMgn
	 15yZXl8jEHM5mkb4pE4XlmTGIvsSEv1DyTOKV+eeUCdfaxCU452Du/Q9Kfl79a/FdB
	 j1y3AM6yFiL0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDBECA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711799357.10311.10503434669482691443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8b80b3569a9416c726fb6ca23fd3602b77460f3b44f6db4f489bd801e01e47
Date: Sat, 06 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757117993
