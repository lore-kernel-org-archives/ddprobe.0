Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EE223909F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784355514; cv=none; b=kfpaRlLdMaPfk3Fxclgu+M8ZPA9vFTc7ljVOcK2UYA95LzC5xQz3UeS+xH1oUooodyPBVeM1/53VmpQOa2Rf2geqWVmbVFoHaKpZFEV46SWOI9Ine1rzY+GlKPbKF/qno6V7/PYJjbHAlOLF+hxTj0jLO3q6sIld/ujSP7eqOT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784355514; c=relaxed/simple;
	bh=ffdWlNatTCzcS3vVVRUW12xoFG11ipvoJHdhcQpxX0I=;
	h=To:Subject:From:Message-Id:Date; b=O3YE9Mp1JQ3v2/rq8LzmB8n6H9dToGvlrbXAYg9aghKQkjiHkYxNpq/zNMeeNciIwl4Wy9qBRDipPx1e6Vdr1luHZi/o2NGyUKB/4OFIY+Nuta3UJ/9cLWn+MNk0qacsv/6F/GIX86+ftqR+h8/97pM8qTMFPL9v50/BtS4uzo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8Sx2XrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8Sx2XrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF22EC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784355513;
	bh=ffdWlNatTCzcS3vVVRUW12xoFG11ipvoJHdhcQpxX0I=;
	h=To:Subject:From:Date:From;
	b=C8Sx2XrQFmIF7EDi7Pb/IKjpsBJFlhPDYDZGsEL6ki2nir+WsariW5PMHD1p00din
	 rQqQKQjuHR2pePM4pU5D7/Y0tzGlSEa4XDereyh3V8nGMitrH811OLIDAiI0M+BePR
	 jgnYCgnrwW7YSGQk4jagN+IrjO0fT/gepRYh50w19Mew0fmxkYU5qCHZV/eXKNTGga
	 ADqoDblT2Ryb8sosoMLE73cggaB1cPY7CgzsjIkCbUSinTFRVOvhe/DerpFrI7FLLo
	 ayCAi/eUebjZ2rKk42HQ4jgmTI00hb9D/esx3WTFAZ2YsaZNMMYnLdTVOksbeW6xtk
	 sc2sEJcTzyXVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEA8C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435551367.12399.9518824070773373337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 562792369c14e19bda4c45efc2dce605e6be481fd54ed66136981e2851a03502
Date: Sat, 18 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784355513
