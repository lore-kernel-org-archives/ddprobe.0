Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45543367B90
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780436674; cv=none; b=NPvReQtgxAXGCMtBOFKbslDhU1PLyb+Kq0Y19cDRPQwnTfhmWnAuBVPlyml9ddm1lsYUvttzJOOkFZit9a9kg4hCUNUDdOzJwDa/1oiMrLzR6hmgqdmzjJ4nqM6Szvu8ysgc6ieD+jzEN9/kWBNx6vGy3oGE4t5YWa293tiPBUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780436674; c=relaxed/simple;
	bh=S+9pTu2m8deJpkeowSHROWqkKcgok6rhf1n+KtfxyUo=;
	h=To:Subject:From:Message-Id:Date; b=uBlc5o02poFhi4WWyH5wljSt947xRpN+tKmDOJoVJ/s/EeeX2Pu5m29Z7CShAXyIF2pTHmyqg5vjM7fiI+1ZTIMkLS3XIn3itrTw0VXv5ji8XoObnvdTKE2CcseRWOB/jhCcCAHGjP1vIaS6IfptCbDwDXbWc4iZfa34XlcWJJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmCwvaop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmCwvaop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02CBC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780436673;
	bh=S+9pTu2m8deJpkeowSHROWqkKcgok6rhf1n+KtfxyUo=;
	h=To:Subject:From:Date:From;
	b=KmCwvaopisBiobcfep7W192h4FhH/eq1AKgz9/FhHRNVHSr1GX1KP7vWjF2RnuNmK
	 hMNQlpfMT5Sa6CwFu49bq5aSNW4oIZNCyVBdvTWAUVW4+QcVNRtsB17KGWO8cVgPZM
	 2TDSeCSTp+hyjonuPWpqVykE02g7kJag/onFg4TFfJAkDrmQVJoqDxZNNKfX5d52/p
	 vejkEluZxB8KeW6kQJ/+EnV1uED6Bq8VGXbvVczjVO8Cvk2nFLzfl82ivg44JwBxmH
	 nwuW0u6wMbMq7rC4lMekArRVyzgvpmyb+So0lPOHCGL9pA6j46ymRb92x/Jgjbx49X
	 0OPuoBlgkQfhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0AACD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043667368.2925.12461042624591832571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61eabce5520485b20d3bf4f819b4474975f3deaac2cb75988047b513683b9ea8
Date: Tue, 02 Jun 2026 21:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780436673
