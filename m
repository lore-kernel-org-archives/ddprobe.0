Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE73624
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732496154; cv=none; b=t4ACdH+Xrg8SV5Ms7juOAiLIFwQRjhVPYuchld4PPJy2bqaJWOb+wmwayy5ijp+0HPwedgjfmjZg8qtr6xJhZj4A0Wmp1QBpTQGf7rVDLO14V9aeOTiXDkdEpi+xvZPbwf/FjWa2rcr6laYKP1LGS4tFU8KOEckZxp/Voutz19w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732496154; c=relaxed/simple;
	bh=8tivCaX0LQo2WfE66zDFbpaABk0PbMNX1q6WNw8WHUE=;
	h=To:Subject:From:Message-Id:Date; b=UPBIOXkKBCKZXNCnvStIBfx07x15uU/to6PL2t0yX/xsIYK4qjxsq2CKDUK1AXtvv5/ZX/hlHGhXhQqPZe0CCfsupOdBRP0+wycEPxlX8u4eY3JgFqG6rEMUioLADID97xi9zv2Fy2if2KYofbi5CwsZzdaLH/WUOtKG8uEHEso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJPrxtql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJPrxtql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD53BC4CECC
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732496153;
	bh=8tivCaX0LQo2WfE66zDFbpaABk0PbMNX1q6WNw8WHUE=;
	h=To:Subject:From:Date:From;
	b=QJPrxtqlDnK8vCxPxxdSms8ZfxWWbWBy4nUQBVFEuTi+IY0g7jaQOva3BISxRC0m/
	 5FHMBurr6t6bGn3Ro0n5PzaT458LPaBuBHfL9nHrXgvA7BD81XfHIdUhLtoQYZ6rwf
	 4x/Ca9dauecOkl9iq36jJQH3zh47Abz5yER1/+d48FtW3jEj/fOAdgaeEnag+v+L48
	 w+NmrhoL8wXBgLQdipncHd0u+CRmo3+24ZqVy2DAG37Fn+1vDmkr92WwWgUTA/a3Kn
	 CL8tcBF+/svsP5bar6tW8lmtSxyiq9SHYTEH9fkXKERdJPd95Gh/9XmLe5FEIi6vg8
	 mXzaLr5ZovVlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994E2D3B7CB
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173249615359.21670.12914248954864859782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2132221c07d356ef77c91857fa57844f01d1abed2801ba826c0f430383004b1d
Date: Mon, 25 Nov 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732496153
