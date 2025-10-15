Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148FB324B3C
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760530194; cv=none; b=pjBfhYohxeOYCtrpSzbnf7iIGeUMIfbr+h5zPvd70pIUKRJEzQBg1usn6BBT76J+Vhix00A5W2tiP/CozrWyI5JcxPVkTgoLN+G6Iv6JWhXXci/1/LYVm3ozcVoxR4yoVmSO0ARN+JDcAM7RJNH7vMFpTKkrxcQuZJ392FqHPBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760530194; c=relaxed/simple;
	bh=CU6jNdtfDTXxOdA4kmmg0syUIl2kF4jG4CEbtuph+mI=;
	h=To:Subject:From:Message-Id:Date; b=IVXm/QH8mS6iZkRMTZ87M6cBRO/UZ7y6yaP6Ywqdc8+Pd9VCxYCSo2huKEtS1vVVHnewX7gOHq3Dcmg0/yPm9BnKAOoMOkZ3uZLMc7pItKXfs51KerbhepOZdLUUBhUO6yjad0S0mBICWxFfJqEakahLhppVoo+a8mbbC8Pjod0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rjq65RVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rjq65RVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BF4C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760530193;
	bh=CU6jNdtfDTXxOdA4kmmg0syUIl2kF4jG4CEbtuph+mI=;
	h=To:Subject:From:Date:From;
	b=Rjq65RVWYnvNUEY9Q+hkjL+P0pi7LvydbczkW+Xt4+rmyF/UM92bskWRF6LHaEsq6
	 5WCnVR0MgIQHnNMVNiJPv3UAyoJu/bqfG8akziufgL5PN1E1/uTPYshJFqbgYCtBKv
	 B/jQqaxBPzWx1Pd5K4yXRePmDSSZSmM2EZx/lu2KoPfWd88SJs6OKj1yJcjNLAHmYB
	 Jikm4UpX65q83OvlYt4pTptuKK300PXUOOWv2JiUvZedP6lVSIDITnPJlGoB1yTQLO
	 /liml5EcbH9TD+0nT5TKX523R2x0JRJqoVQb8S2x04hw4lpgrIUxjkK0CKBSoiVp8w
	 QzzJO41yZn/UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C0CCCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053019359.20256.6094836754436783940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4634b5c83fa20fa143dc6f155a1707dec25bca23f5f921e6ff70140f98abd1e5
Date: Wed, 15 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760530193
