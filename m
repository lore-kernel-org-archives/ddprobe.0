Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF33883C
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711788497; cv=none; b=KDV6ydrAP9QZ07pXQUK8L9YJzyKsPt0WZySCLXezIg6Ie60CIp0XapRIqe2/mEgcnEGOBYtzw0L9w6wN2SShCh4VX7Ro3nu/oC6DmqJJzec858NcaWedzR5v8fbTfgf2StT0LwQvRyM3L/gbX22MB0hweTEaBYgK0zNdLBO7w7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711788497; c=relaxed/simple;
	bh=iGZ8AXpsd7tr1CbwhIHDRcXwQApgnSF5TltLGRzj4Gg=;
	h=To:Subject:From:Message-Id:Date; b=jK+cj8YfGGfSVqXoTLPXdfNDggaOO4Ca6P8XvUkzd4RYYME+XYy1KOyIwItqjWrR/5Tpgv1ouF/eJvw/vGqxGvB0t9XeO2Fi6AxQQcn0u686z/X0tnJRcgTIVDOmaLbthwrdZVNcFnJ5r/S3feAj/SIyKN4MT0Yj1cGp1+ncIVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HS5kYzmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HS5kYzmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78797C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711788496;
	bh=iGZ8AXpsd7tr1CbwhIHDRcXwQApgnSF5TltLGRzj4Gg=;
	h=To:Subject:From:Date:From;
	b=HS5kYzmq21Gq04KE0lyY97tI+NPJhWN1RdANOnTRpnJhUBA4kMCIXe51x77wKm/7A
	 HSjnJhBHZmYjIqoTGnTKUo37aAyFKSeIgPYInS8pAh0zFHW3qvqlubY8r+y3sdSLqB
	 bP1e3spr5Ert/8rgFx2TM7z28tBLkB9MM4V/cDkBuh00s3hDmwRVff7QaWwM+7fSBS
	 vGCaXnIb43Otna49UR/J5OWYxcp9zVibVRS0aYC1bwLcYVmF81wnGiThEZiCi25EYM
	 kKwxd0iu1DV2fVmUhq5+/e/VN8dspcZM+HgmML4a1x1OSDFDq81tZTv4x5d29wZCt9
	 ugs/RWCn7PxOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68602C47DD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171178849638.7675.8284114289597995935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2beeae14c05f9da4d210b17c6323dd6b7b554fd4429f4ae760341cd4801794
Date: Sat, 30 Mar 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711788496
