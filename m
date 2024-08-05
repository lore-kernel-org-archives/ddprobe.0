Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC50EDC
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722818754; cv=none; b=aAZJ8Gxx5Exi7ugaSK7catUTwkSQhQv2N3dSIdD7qIoiQfQNHt+RLnbj0dWK43ipuzLqiJTb49aSZiY7b1m+RWUSYnJkY9pWIKWRayKjWC+gR/UWxDxuYzO3Ozc/5w+GPQhWwUKa5Pc6tLtzW5garBMaP1fxtBytOUC4dSoV81Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722818754; c=relaxed/simple;
	bh=PbKT16Yw3trWYgT6kKm9QFzwQmEmCPYgF0+cgvuk1W4=;
	h=To:Subject:From:Message-Id:Date; b=k8WhuyI0+gb6kxRENqbAbwyr3O00gVecfguzVJPfKyX9Znaj3A1n4Z6I3xfU5gGxq56WjDNZY36OXTfwLAuZ8eA4FWzhSZcc4d0szfLeiCo05PtIivtWN7TSw926Gi5IaZM5rBnXMTEBWBDraverSjX8pUTCrbHCryoZxxn9an8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQZ9JkX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQZ9JkX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B328EC32786
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722818753;
	bh=PbKT16Yw3trWYgT6kKm9QFzwQmEmCPYgF0+cgvuk1W4=;
	h=To:Subject:From:Date:From;
	b=tQZ9JkX2caqNR70elzZjjOnJT66dPoFF2MvqBFC07uNza7YWagwRn/coIf82oGeeO
	 ogP4r0Nyw3rw0FUl3+M5+CR9j9lgktTfQZqoo2094foqB8EfJ+HHb26Ei6vL4bD/vL
	 GINF7+vXqH1ByzfxA5RtE/jKDzzNgfQCFfxptEFP0Vm1FJfH5C+5xsH/vMaK8zSBIi
	 qL3EndGS3MKyk8zOIK8vrroFchGjOV/8/CH2uPjwP6u8XDBtXJ6wuZRlPdmXIJwFAE
	 0P4eMtpX+gR5plywhONiii1CTg/prkYVaScl/xooCZMLBExUGmaC7wkV4FaqA8GPvd
	 5n3bVkMUD8/8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F04C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172281875360.3555.5894187456476713658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613ef967321be3101c29aa7304ec53791c8c8ac25646911e757b0aa71a7810b8
Date: Mon, 05 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722818753
