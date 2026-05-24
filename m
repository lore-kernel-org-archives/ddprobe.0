Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D21309DCF
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779648154; cv=none; b=mJyZk0NUV+z7OOUZJyFq5H72Z7kt2tU5BLgU4QVaRwnEvQT78O0KDz9ENNsRp24wn9pRsEbd7mh8YdmRtZXcR0sbyKWazLNJiGPTwxMS6/QSmKhOfGlexK1HlC6cKIx4rbFyCO6tPLm0NQ2dsNhxEtOFE6n1DexXD/rpHknxIkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779648154; c=relaxed/simple;
	bh=zA094XUXUZCPpNleg9QMSygFGhbNdnpKXKJ8v85w4Og=;
	h=To:Subject:From:Message-Id:Date; b=EmP4bdMWL+QlX+ttboZ0lIXc/JyoLE+3obxrOXz8++EH2VfQzcocFBoGX/RrGmHKCI+MRkFx5OD73u8fsvRfFDzYCVfpCbecIgy/3ZQwsi6ar1meZRVUqQRSgvWUJTBVpCFVnB0OwTlBHmjp/EPja1TaaAYlovTOuZZxQALM7fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7GjuOcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7GjuOcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE441C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779648153;
	bh=zA094XUXUZCPpNleg9QMSygFGhbNdnpKXKJ8v85w4Og=;
	h=To:Subject:From:Date:From;
	b=Z7GjuOcg8r+zeEQhj7d49rUBWhJlmc7TaiufxphP/G9IypklFIX/yMsRlVrGnW23b
	 MyyoHtQv7lkaFaxuEnwFDblN7akQbmRp+vpTrHoXh3ee3df49miqTr4uUYhwc36KEx
	 x9gvu1gZs0wxp3edb/Gqw0nJv9sLjkj8E4CMl45fotFEzCcR1GAyi4OuWHqN2sICG1
	 jan+ZMPRKr7sxk7s/9k8pmnGAwGRjByKrmRXvoZaxcevIhI7sUSGO64oGxgJH2Bb8G
	 RlMr531bc/lgK4ZpQ06LpsJIM8fKLakmw3stiYDqMDF0IQ5cHJzp9DhSn51kxIGA7T
	 7oVSs5oZhWvQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E39CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964815368.7380.3621255304656652797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d94b680cdb425c941c5a6cb92949dd761eb6eaf2932b73cff75e042788d17f3
Date: Sun, 24 May 2026 18:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779648153
