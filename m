Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2D022CBF9
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750982393; cv=none; b=E8vI7N31cil++vCvmpSr8q1kNF7RZ0j/bomw4Oi/5ft9fDINqvPxjr5r9F1cqinC5pQUPMkm5uRgvt0kXc4gikAMCH/k9KyC/or0loSkbowCinw0w7xe1/UHYXst9Atqzg+J/hCRPR5eEynD0QcDALkOKcMhiLNL9+TKwRkwpoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750982393; c=relaxed/simple;
	bh=gYPIpYbGB27Ox1ZL9sS3GQ9QniGMn8UWVD6kOwOL9Vs=;
	h=To:Subject:From:Message-Id:Date; b=VZtFOt88hYmP6VjjHHMAW97svDccLJ9OxioPdrX9lS98B/hicq1uhStlUcITQIKlrOGXc8aAhCgDOYYNqvBxca50NO5jouL7keg+YsDR9/52gCWv8JC7spJYK+b3Bvm94AYptt/qhW++TdmVACBXjzR+nKEbtbg7rq327QaPLlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phluPJVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phluPJVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41D8C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750982393;
	bh=gYPIpYbGB27Ox1ZL9sS3GQ9QniGMn8UWVD6kOwOL9Vs=;
	h=To:Subject:From:Date:From;
	b=phluPJVOhXVDdRh61eKXOiiQdiFNtzEYwOHcWxSjEmM8yqw/pwHW3SrGd9AZIBZ6u
	 qVQMFwQk3NvAx4JtW/a9MOp6+PpHNsGvOkXp3kt3xg2qAedVff5BdM7bWOILYyuIaI
	 Si+M9g0I/IAvmxQtmkpCqkFxmQFMr7qR+0FqYo1GJno/7w5SDtmrqip07xqE81W83h
	 RooqBr4zYYZkPSas5XyUXrmA5ksRuDNj4Aj0o5eV6gTfNNw0JnEm1NpLxLZtzOLgx8
	 qVcAXWu0y0GJ/0cskuKFMjfjPswag/joBcVaCWTgKM6UF0p4PwxhTrIGYGFaW/O7Xl
	 bErjjU1h809bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B38C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098239358.8123.10031363620297459386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4791e30ffff72719ff977d5ad2608472bd799d3da5fd437678ca643d7b361824
Date: Thu, 26 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750982393
