Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A38E36126
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709977097; cv=none; b=juMA721ndK4lWf30i6SZ3bNd5K543F38vOYMH9zAIFrgMmMNDoZFoYjhnSyWvK/3FpvwmxC869ZNtHjET6uVkO5aQyMrkmJ4TKVkIZ0y2rutkyo9n/424+hFdmS2afzzOJD8/CiHnPxQw2WZpiz6shqhdnmnUW/9bUqPE72qMkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709977097; c=relaxed/simple;
	bh=x6nCZBqNXWNzhZOK53URF8pQ+93S5KhY+BlkSwPQw0k=;
	h=To:Subject:From:Message-Id:Date; b=Lcjlzg1lmeBz09gOevirRIkePYfZDY28UrvYlyM1I0kSEGMQ4BGmDxmCXxEz2lYsfXyTHirDD3jupzUXvGRSyC0DKORdbkRrc/DTAxQ+EoPbbUeTlLoiYQpSNPguJWsM/53DsDANibORUkfWvQiN/x0itPiklReqvLTjgBWsBvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePUSS69K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePUSS69K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B19C433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709977096;
	bh=x6nCZBqNXWNzhZOK53URF8pQ+93S5KhY+BlkSwPQw0k=;
	h=To:Subject:From:Date:From;
	b=ePUSS69KaIi1Pn+z0x1HEiBz1TupSbeSy6gdAzHi3xPTZjfeZtClyW0fO+Y1caqnI
	 EaqNl9E3gsXA3qz4nqz2o01rOCRx3CTTJ8MYE6lFrVYeP+K13t1f/SytoJTMWUXods
	 BNlonrHZmiPQ4z227slgkkRvj05n+ZqSFQYL6Z4u1U1/xB48M46AqgkRnyftwCL/yZ
	 YZdUgxZMucyRqqyhdddXHw+su8Xa3jridEUSs+2YqAAwZ9m9fk/bG4DTwh1tq3hupG
	 dDHuDQ+qU1tG/OdkFjP45Br8XZqGv0cOxh1BSdcnlpgSWqKtLhNOKmVd81KR4wQMoD
	 jJiWrvN1LR43Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F22C54798
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170997709639.27819.17978748136973914663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23af14a92ff5819f2ef8bd1ff031a4ede60971ab0feea60a8c09055f3be7cf00
Date: Sat, 09 Mar 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709977096
