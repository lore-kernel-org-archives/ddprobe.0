Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4623A6B66
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779438154; cv=none; b=qnNL/NUkG5xsiWWstZLsDIehl6Cp4pXSEB78QUToSLhxqpUdnKW3blh4lsJnqbjXrJVamT9xPwy7wtX5OvRj0lm5EwxKy10CMBtnnAHIshzEMjlfVnc4HYKl8L+E4pdhPnKZz+vTONurtZptZnLmmlTxpWPKKPtClxbaAPlDsS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779438154; c=relaxed/simple;
	bh=KN6Y5T3jvMVxl8iS6cZwrKFaipFqo9b3c9Dt8eXGLck=;
	h=To:Subject:From:Message-Id:Date; b=katGX4l8qjeP061fACkCKDNr6kXU9vwK+16c8y5Yk+GCmSPuBYgClKMuUbBvi8Fxr8z18aUWuUtYXHx4mP6QzkmGzDQ9tUx9grYc9SfeykebJZ65AnvUY6IVMCoOMd/RgObSMwljk4Lvvje9xIzqmez6Z0l6jOq+j8lsU0Z7TW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rm8Cpqai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rm8Cpqai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CC3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779438153;
	bh=KN6Y5T3jvMVxl8iS6cZwrKFaipFqo9b3c9Dt8eXGLck=;
	h=To:Subject:From:Date:From;
	b=Rm8CpqaicycyLNCS3sTmyowyEWAeZNo0tZzhsIojqL9zcAzOUS0Lv13HhZM6OfoIc
	 arjPgzjFQtcj8UOWovDL2eAnz4AKvFCb6VdQHZq1NDjUjGluOrMCUFnLc3XNA588Dz
	 S3MGh+v3ZlZ157LADMH+fSbCj93j2mD96ps0WCxbpqqYoqXgG/BqPG7XS+iHKmnzh3
	 3H+OsiLquN1ksZ0Asb0fmCLxS69eVO/GHjMK2lL9JenoNdfEAIa7kNA/Meqyi9bmgc
	 VHCQCpqI+5lx+XWSI/AWLl2l8L9qO9dHuMuUeG4aCCmCuG2ummFzci/sIsRt4V8qiK
	 Wh7yxmzXajP9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D3FCD4F3D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943815368.19856.15879175077061131222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4654d4a4a634f340facf1de550156ebf190ed0ed4463509e26faf7df6f713a3c
Date: Fri, 22 May 2026 08:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779438153
