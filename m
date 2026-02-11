Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272D034D3A5
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770831294; cv=none; b=sZXaQ1YCtboy/qR/CPZ7KKblerrahF+F9ZDsJcdUcPAfaC1kHpzOWYrNngoIg1KFMFC+1lr1s0dxeMVKisJA3i+uWshhPSDd6/XrgsqxdWp2TdMVuynEoTxXX3tXb/VP9fGIHIRnpsxVoWBKUTdjJyfvtNh+0K1PfrqcZ/mQ+pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770831294; c=relaxed/simple;
	bh=7zVveV7aS2/B8xYbEhewWxaNkw2m/NqhVBs5Xk8gA5c=;
	h=To:Subject:From:Message-Id:Date; b=OuqUFgyDwCAotc6+CXI0/PTkPdFzaT6HYZCUX3KoKUfa+ePdFwd055iEodyyp5tN9ERMxhMcYCQnrnnxDw2ZaAYxq5io9J3A/K2ys/SMeLhv+75ZqoUj98ChVGCC4bRyESJlA7JRr5ajtqEW5yPeHX/b9PEr2eTikx+JPhH46TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVq+X2Wq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVq+X2Wq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F55C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770831293;
	bh=7zVveV7aS2/B8xYbEhewWxaNkw2m/NqhVBs5Xk8gA5c=;
	h=To:Subject:From:Date:From;
	b=iVq+X2Wq2AgefUhzACfrAlJdcAGEzwOdXXOwH8XrqlL1iWuqaw57lAQFIvb2k4LKI
	 EDYJC2ORhPwM1FMHrEkHlZhTfqiVp1hi71u1mZHevyz7CyFIhavhHfyKq5CPOy9Oe2
	 cjgS6A3XuH/UTDF/AykbDqV4uUb/4V1jvJEFid3+p0GJc0OPqghidJuUyNQ17EaskG
	 u1slNmvxC1gUazsa8eU6hC+qq7T7qF17Sl2zyj6Z6/SZbIx08EcM+26c9LecWzmxmc
	 8Zu3YCtCByFlfcqHwSOjNeJc01/kiHRdgWpjcXjoPJpfx3a7BETLcb8ilq+rtV5S9O
	 4QE5hLyBNr+1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96940ECD6CB
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083129360.12329.17962170239991514053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69aae51214e173926f255a7addf40e97517cbe5070e6aaca69eab34c668c9be9
Date: Wed, 11 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770831293
