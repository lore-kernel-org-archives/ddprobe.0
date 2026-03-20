Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABDB372EDC
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774005894; cv=none; b=Z8UiN2UPjzKFK3S1TcfNcZb7D8gNWx95TR4w+J+g5J+dhZYzQtvpeRtxLaKdtt+TyNWs+AKGnSNUvxxtOaKcnstFVZHhVcI+YtmuINEXEmzoMpqsTPHsvV9jVytftDOGmo+bS5l7RQBIZv+z1dt3n8S8iL1P6bI/2r3ykV+eG78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774005894; c=relaxed/simple;
	bh=1XkIXDcAwFr6rTzv8OR10UOOob57I+bq1YIKBINwBco=;
	h=To:Subject:From:Message-Id:Date; b=FM+7aMKDnlYMF+YI0X7fR3ul9WLO5TPljaG3pLiWIF8S/ixkGMLhxyUgnLoguTBe3fmnDVKTrX+tAQOTVCdHHQp1JDrUlozbaeYU5Bv+/ubouxbrPdx9/p/RPoh+dAgTvM6AHFH0ynkKIjqV0eYIMa3iB2mDlDDkcwjbhOicS8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBDKiJEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBDKiJEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D711C2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774005893;
	bh=1XkIXDcAwFr6rTzv8OR10UOOob57I+bq1YIKBINwBco=;
	h=To:Subject:From:Date:From;
	b=PBDKiJEwPmTXr/3Ed7tRwM7dpLgZTcMfYZEinEyk7GRJDtL/gD2TlZZeTaWt6DtG8
	 i9hBtkYw/CtMTmK5H/99y/ZNZA6kz5ToSIjFPKuy0LikjBu0MKSxpueDcwIl9ayi4H
	 ZYgDSd4NK3KV4ZOfqBNpLh2QDLB+DxlvDtZepDbTJ34oZkYNWZD9PwJhC162m56A8i
	 FwOXMtV0x9kE1xsD+4Tqss2qcgCSiIw2xXbbxhctJCiYcKfcLjpLInzmQHP/JjX+bo
	 GjwU/+flWpCcrDkfEHL1IadkmOjkWSpQFI2ybp4yatL05nuR/zOvKU9DbnOlqWmHtZ
	 R3r1m0QfXtj7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD1108B901
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400589357.14845.2777852458598121835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134346ab56720cd613631468b2f0e59d9b9bae1a297fa177aeea727fbfbc81d0
Date: Fri, 20 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774005893
