Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43766F9FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744603794; cv=none; b=FbpNIbHajIczHEOpA9hzOIT2234TJek6ykVrw4U/A1hoxrJNoN6kG/QBIQs6Qrm+w/0eVRp3RP/VCRRwX/vEUlrq2D2yVyPLbEJutS5bZ9ffhf7ZYf3OhViIIlBU3hOFZYfoiMOIx8Ntn6dyyIx+epw2nq5py7lF+1ZdsmDzHXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744603794; c=relaxed/simple;
	bh=G4s4I1XV7ghvRWq/6nZEyI14qGhdPejDB8qLbPd2kcU=;
	h=To:Subject:From:Message-Id:Date; b=H/i3oZkZJ43WD7+7haxD4stAjpI7pWmehOULqj5ZtKCbnWvhaeJBT5vGflOWEWypBE/OSXhhyCKBZguk6buxdxdu4KmrEhvOhPzotimJhUww3ACL8eSlfA7OBgwPOcLFQTfB06LO9E4AKrJ+eTlajm7ZKvqpbtV06CUi0dARoeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsriSDJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsriSDJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCD3C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744603793;
	bh=G4s4I1XV7ghvRWq/6nZEyI14qGhdPejDB8qLbPd2kcU=;
	h=To:Subject:From:Date:From;
	b=XsriSDJnBtwofg6vcOnxs5O9Iy1UItXg9rbn0RiivdxPPOyZM4E2dKNn1RAsHEM5p
	 TNUxthiw+1wiNBalU6VEBhVvwW41/6mlUEFYh3I0fctyVFC1CqTZHU2AmB4N7RRoIF
	 VOZAAGN9x1rqRCjxLg3+j3NMyES2fDTdq4DKKmwKk/XPSTFpztr+9TNGJB8Qy0CHU3
	 1j1J+eAsPDk5doFFVe+liV1FKT5dGREqLof3wsOULF/PbTiU3tNACB7Og09o5QtQPE
	 5ztCfvml8UqKyAyTZHOIBizazZRdV299NjKI5UZ2pxl2KOBIdOjpLtGEzPPpNjs1ZX
	 yQ4fpoBb/UzSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C3EC369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460379361.13021.1167619337977940643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dfbdb7236b0f13dd6b2491d83d1c1f5e1c4fb5504e488aa956e5cbd2dfe7182
Date: Mon, 14 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744603793
