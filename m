Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0563AC0EF
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788600634; cv=none; b=S/oczOvS2v04EYaDArMvdjmKWrahXI/LlDqGLejYrTW07JDSNXDTJPxWFHglY1WvH/3TSQxYi3hlE18wJ/tYMQv5q7Uy1lmZce+ULxpANFqbaoDRynU8fN5NPtEhgfXb+ayuN/hRIMpfAhhA+GcUXX1f9OKEhBkg0NXBEAqtnR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788600634; c=relaxed/simple;
	bh=84K9O3ZjBKfaNtT3gBmL+5q/kv/a/nWsvWJHOpkt7+g=;
	h=To:Subject:From:Message-Id:Date; b=rRQ8lupXrF1/+5kHTjn8cKdMUH9ONHLkZooR0L4Uh3y/BeBI2M1nOoeKrpJ8EEvROnZPwGDp2vPOdS/zBFtjxbN8USJ5IZ6qRYi1NLmSi0B21pcw7XvQ9QtfpSwo1WtBN/hXG7EI2DnREYrPs+QbU8j2XermjOOsYd348KjbZXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAxonR97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAxonR97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C71C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788600633;
	bh=84K9O3ZjBKfaNtT3gBmL+5q/kv/a/nWsvWJHOpkt7+g=;
	h=To:Subject:From:Date:From;
	b=hAxonR97KZmQgm/dL0NMbCbQUXy9kwfsc07OBs7vIRGCdhPsPrgawIqk5zFx8R3av
	 v89x6K4Rsb0mLrSORxZuCYNq2zIGmSu6R0GUCgK2osy1S9gdDuGkcWTZVxd8aMBy3X
	 S5xP7rkMe2f0KFpNAsjnbb8s8pIb4I//1SdoGaM3AQTJgiunNpauEikaCxDuBL6YGM
	 VicaW+Npz0RZ/KFu94pmeufOMsGe0OzSGSZdZ3/OUkxWFBIkk0JoSbkbbCyPfhfu42
	 YFCrnqh/OzpDDTkC/Q+580Ay+bnv6PN854osF0KEQOl38Rl74i0GHkn/WBPx97re54
	 M5/s7emDH7AtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF62DC624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860063370.29773.10026858646724406356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4076ff457be64efdcc100650df7760341a27b71791fef91fc1435ce6f58130
Date: Sat, 05 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788600633
