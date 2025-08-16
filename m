Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9DF29B792
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755342594; cv=none; b=q30JrUD1qETbwUco6zTl6hn/y4BRet2lEu8MVqr9MYPlJF9P494Fu/sZULEGR2RiGJMhUY6upXhlr1mYuAUbe4Io9nxXmt9iRXZMtqz/k1Sg19ln88Zl4ZleYykUfbTgohnbgLKNwNa94S2E3I45FW9H3XU1JlN/hatty8vFbZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755342594; c=relaxed/simple;
	bh=9UJmDJQKweLCdjluMr91tZjj7oK5TKdwUBrxG6ozVPQ=;
	h=To:Subject:From:Message-Id:Date; b=hWBGn6j7H7J6ubefbFtco5xAJlWE+BOr8G6DzluGt5k0/fphKJmTHhxqe6TUvqZ7OMTWPtsqxgSQ9mD9Pn9PDkbjPD1ETS6pMR3qj+6FRisARsELcBPcVUtXS42dAp9TyA1SvAUDZUoh3jO35uaqUzacKZ+SlCjKXLMhV8OZRys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9fMxzx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9fMxzx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F474C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755342593;
	bh=9UJmDJQKweLCdjluMr91tZjj7oK5TKdwUBrxG6ozVPQ=;
	h=To:Subject:From:Date:From;
	b=O9fMxzx9J0QU4ZTMQCEaQaBHNn/rE2GvQMuEMiXhLfkBFae46Ny5OFARjvNthmf7v
	 FEn+vTigyIsg2t1JfICfghSgTyV7JClnnq+96ub1nlJEEkSdaSrcB2zu56tKzfudER
	 iXYPA51mDqyyeVVoh0CBKBs5oAzzu0s3rFCxbzS8kLBExttx7BgT6lP0picx3OsRGG
	 xZ+JsnKrCtZHG1PocAJe9eLwUO/EjySZpuinNi99bDckfg20KrbZdSnZK91C8M0GfS
	 CKyR2CnWB785vGL+tmRxTIoC5VqmZ0tXIUrz5NK2iFmOoZcgLte5QSEg5LydVovf9J
	 qrYmumh0AKvMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F598CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534259357.27941.14840996556210517065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab21a5469ae1f583560b781dfdc25590eb63cf1cbaf99a4fac92f4256cd48f55
Date: Sat, 16 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755342593
