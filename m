Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAEC2DA74A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783947514; cv=none; b=ukHkdT3cUwMQkvoNGZ6Ge1mxhe8W9cG3IHIKDKNueJH7FSaqbFSguiktehG/jdWx5/VJlVIEzhErQhvIgglQZ8Hrf7JSGO0wJ3uG9ouyrGj2tx057Al0UbCurl1v2TZ0p8rGJoiixIj83W1kmGUngP9BAUOTNFu4c+wDRmmSiPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783947514; c=relaxed/simple;
	bh=uWa8ZcLiLKNX41fGVSuA1bJJR1gOea7VwqA3Wo0LVsU=;
	h=To:Subject:From:Message-Id:Date; b=KYlUT/jNSZzROtdB6ZJpp8AoJRlAvG31m/VM/Y00/MtRpL4YzDNhpiR59ABCsTKE7gFNViizbD57bXzfTqxlwxYh9J19P45iNDqvxOemdSBkjIT42/P/ZmaUrHcQCJy0ulvJIvXLk5GcSao9/CLEmfKfbrgaI/m4l7dzAUP18Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ouryi9Wf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ouryi9Wf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9FBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783947513;
	bh=uWa8ZcLiLKNX41fGVSuA1bJJR1gOea7VwqA3Wo0LVsU=;
	h=To:Subject:From:Date:From;
	b=Ouryi9WfgC0Z+xLbbN0zNG/peJLm/p1v2X8QF3bOkp386OUJwT9jA5tDvsgV+978f
	 hatWLOZHm+q88RZxUz9bVRF74Q3UomRXqbcet+hmeMeMar9AzSFr4sTEt0j4IUUVDn
	 jJI4wP5p/OyxGqRiM8AL3y/hpoEnO9engvMRT0vK5m1HEIFWCN+M9reAzk72jPyt7N
	 VydJFZYWG32mwCg3fh4wl3bnRKRO2Ezd6+OQsKjNqeTYMIlVDvJ+aUoW6WUM5+suiA
	 Zk6QYjhfFcMw/CIFWdCERrGQYzfFvtm0NH4JuFDTOVibDwEOghFA7nkyE5kLIU9Rry
	 9Pgkye65kThKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A960AC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394751368.15618.14014003894216621946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0d7bc904e00afe598ab7a9d8cc1c65a3a90a5059eb96f9e8a98eb99c7ff6fd
Date: Mon, 13 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783947513
