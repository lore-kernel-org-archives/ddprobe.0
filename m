Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71A8302165
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775789853; cv=none; b=UKQ3ag/9uqxzX7nAXCnN0m5MVcI7VNxEr/okPvwgvs7xqEhmb58lpw6cg0cZk4k9vD18ceIkGsPT8cjFxBIxx+FUU3suenoEDXrLopKR5cWhY8WfWaE2VM5c8jpCZqzUv9Im6O+Zg4ErR5dEuyZLx3NNU8zlk4J3DYCfIiO5xdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775789853; c=relaxed/simple;
	bh=zNWTqoVOO7VQ5Klem44een6wLDnHPZ9cOn8pnaOYGRs=;
	h=To:Subject:From:Message-Id:Date; b=Qvhu5NP+rfwHq0gYtxcIz4AW9Bi93EUOe54ZNrT8Zwdlf0Mbbwa8rEq5AUXyW76i1cJge+u775w8KSusSstjI6ISF/0hgEULqZt6ruh3ilAB5FwEvEtIfUDu7AFVibko8ROO9hTtlCm0BDSwH6sM//4TIanvd3xJrLbDorZfo5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODG3yawn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODG3yawn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC385C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775789853;
	bh=zNWTqoVOO7VQ5Klem44een6wLDnHPZ9cOn8pnaOYGRs=;
	h=To:Subject:From:Date:From;
	b=ODG3yawniMBCqAQp7GyY97NY/ffR9S/YiieNAtQclkwYatPlyaE15qqXWkoSmyRNI
	 TbS/tFj/o2t4Sj5ObQ2ECPRHK3wOvZ4cH3LZHA1//jIcID6ZhjaSYtvP+jqZQ7ikT0
	 Tqsytap/tCfsteQsVmtFR/KQEoLDLsE/k8280adfynuVpipJdxg2V4XJhoYnen6Sjk
	 UUV0XEqM7roXSTFtwsHbtWRnQ+BVDQEz3GQ+13sdvFQZ9B+4NsW3Fa4ufmLqZ8WCPY
	 1xXG5EuNU49jkq/Uj/2RDm0uDMhe471mvQCRJ1xlJcg515VyzAN5BkClGrUcf13HqC
	 2JVJTiaBLet3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDDAF36BA0
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578985369.22798.3503965077272301314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28cc476350352271beeb37242625fa680638ae8104fee66f7337d131ce3d964b
Date: Fri, 10 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775789853
