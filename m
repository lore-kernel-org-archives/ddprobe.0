Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2792DECCC
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783157914; cv=none; b=D97P/aaMyYriTdT7CcAo82/9853wZYOvVgdJKeULa8cf9hBNYSaAZH0PjejBCLsbEFnTSau4mcUW1h/XbdDorVFze4Itbtp0/BX0GF3o+ZAeds4AUFW3Cq4Uz9UBNFYcHgPjlEwsn8cy07bT3GNffX/oQY3tx/h5J3YM6dXyO8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783157914; c=relaxed/simple;
	bh=TTnGL6eC48ifOBQkYyU/v8cbWH2ncXv1AYrhc2u0/+U=;
	h=To:Subject:From:Message-Id:Date; b=qRcO5R70NylO+2lbn4l/i3eCnYdxd0cT4fDgYG1hdhnJ6RvOaZ6ZWiIw8J/P4pcXMXIZQh61vKfIIXbk2Xu3npRj0WtQPBlgyWFqJ3mv2wpTbGeRMwCR0z05Zk3MyKyG2BaHBlu369Xt55qlYm2PNeygfhOxeIzVNBovC0CQgC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwDlS88g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwDlS88g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF17FC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783157913;
	bh=TTnGL6eC48ifOBQkYyU/v8cbWH2ncXv1AYrhc2u0/+U=;
	h=To:Subject:From:Date:From;
	b=mwDlS88gR4vXE8vHbMfRkDphw/X60Wie60M/tS7n5hFcBpaytJ1XU9qdhu+9Z68rC
	 nRz6U8n+VbSMRiqWX8Spn5gFD8Skw+LU40iiZUs90/SwVQPHlbXGfZMlznqD7QGFa/
	 aWCSKM112CattiCHwCxaEjAU/sEuomMODJx5o/QZuRqMemJKsinpM/dVIkCD+ctKrP
	 OimHwUi2kezlyQTeeFbfowroo58vSLJj1UnkF5cLbNSXE8PxFUhyD1WsKIPveUb8PU
	 6gK0C7gvp3EnItQ35uwUEeTeTDq5gHHFN0wCrc3imUk9+qHHOi6+uNjf/oRkH0TU5Y
	 F9jw6/D1m+Qxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2C1C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315791368.1504.2958350771649323429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f5a86f4e305b5565eb20f5d9b1756cbd72ea3708538ddd4db174f6cd8b755d
Date: Sat, 04 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783157913
