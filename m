Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BAE3B8D54
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765419774; cv=none; b=SjFmGu5jZxE7svrPQOVDoVRXefO8w5uA4/UDjQwBInUdDREHPdyzzZfiiXCUI4zNtA8uGR6G1wXB07tXu25hgqcf96o6Ioc5Mo7XAHopnRBSJ9z/Ejd8IYt6wx8oD8/xZPIbwsfNqr9exAusLyhZvNSvu3M/9fm7AbzoK1fPGGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765419774; c=relaxed/simple;
	bh=rZZ6LEEZ72knIi5gIcSWJWJmpW5NTiAiYOY4y/S+wZY=;
	h=To:Subject:From:Message-Id:Date; b=OJUYm3/BnMaesJOq8vfJhbCcYr03GPm92NnZKl77e85cXOoATab1rEvo3KvDUqXd/qg5YdLU/GohBZuCT//BPmTyut7o4LT2oIEgQxYJ2W8bOjlW6H9UntHLDP93mfNFPaT+a054crREPHVDXDxH4OOujJYFcWPqnKwq5/QPym8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0CTM9BK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0CTM9BK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FC7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765419773;
	bh=rZZ6LEEZ72knIi5gIcSWJWJmpW5NTiAiYOY4y/S+wZY=;
	h=To:Subject:From:Date:From;
	b=W0CTM9BK0SxAP34d0HQgUKx0AU2aEJ1lhQDpQIywzDqv5Ag8N7P9LZdVRMMagpZqO
	 W/xXIXWSrmmKRTDxtRTlERCUbkhmyEMgfCKuL6lvj38yBJP9RvKH7XEpJYKHa8/Jaq
	 GBGWF3w5cY7ejkvaEeVrA0bc0mcU/7AzAA8hxECNW4wp6FasJwwCMOIf+VgAIUOJZf
	 RmrYlMMeBbjJKP0gcN7klWwX7bLX6e+fWpBWO8NfaeBFKT/KpIh9uLgvV9e25vpgEi
	 ESA25dBw44h6rigevpL+ylw4MPtXUT1DYm7rtx5w6STbfiTjL2IAkAixV/yc1+xEdj
	 bLyn2BqRne9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0A1D3E783
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541977359.10709.804512623127539559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82d9ef0c52ef5545677e4db1bce5000e0bfe413a39fab0a5600fce572b930fd
Date: Thu, 11 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765419773
