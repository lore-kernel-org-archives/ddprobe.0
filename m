Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CE45372DA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790190034; cv=none; b=NuTcH//sZsLZAd+79algQrlaQCTcNprUAqYZUCn4mzNyVkY+XOZohVjSe7WqBqfeZGXz7c3ZA/UQriaHPvUGrUSkIF98e7gjJKfKSQNtamMKTxronHqJVQGGPQxOSKjBsGewL8cT1EH882r3f+5QPmqUhlnGbwR/b2WU7mjc3J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790190034; c=relaxed/simple;
	bh=Z8wiPDofk3fVFmuAFW/K+N/tIXS+dL4x7gcjgwDasmw=;
	h=To:Subject:From:Message-Id:Date; b=iA/cuXKAVSyRlu0dSOJyrNqw6UR1y+Q+CeLRpQ1oB8f+n4ur9q9Q0lLGWswD26sS/mzGB0LdHFwBj7mgGg8VabxxemiunjhMbgv+6yz9dLO6EYeLcLlVEkkaOYJG8b8iVar5CWPsHjOPjQSbnTEX9kedIrvuL8TxjtVUl2aAIEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYRTenau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYRTenau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BA76C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790190034;
	bh=Z8wiPDofk3fVFmuAFW/K+N/tIXS+dL4x7gcjgwDasmw=;
	h=To:Subject:From:Date:From;
	b=AYRTenauvw1ioMwaagFoqQWGoctsk6DXQp+WzQB2GgYoAfvPCIEX7r6CH9MrFhujF
	 iaifCsZGJaPGfc5wmH9znggExAOx24SeaPAJaDhbDg3Y3DkFOD0Ht3GUlJdf0xr1W2
	 FlsdFMpjux3wgsaDj/KinKhCos8EA0rGTpdNxQ+OnETxdqJllmISF+X2jiOdC/XVpt
	 WOvvv1N7feguf4+oa/t2vLAEGuFaKmK5TyZ3e06NKWm4Lfz1xRtAwX3v6WLXr/qAXe
	 6s1fft8jy3WNjrCDJnm/2S2apjT81TjuiL05yHGGsiREUp8r+KXFywknr7X5FBbrbL
	 7qDykXVzWBMiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD053C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019003375.28548.10987304835583517324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8732fa8ba0fe146eb56b0861969fa9d158b8c7573036ebe9cabc37de654471b5
Date: Wed, 23 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790190033
