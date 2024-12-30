Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A0219DFAB
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735581354; cv=none; b=bzoBERG6LNW71d90hO1Obf6Ur+MokK/xq7f6LitJFTVPtfbWgxKoQU99MsuJiEu/1Zt+CP4rmSmH8auIFmcR8lqO96Ofir1V3H+Ynfh7ZdwkSXAiHHSVgND0ziVbRjCbh57g3McYqCjA+EmDhaGp8Ak/nxyLKuTInlQorD8T4nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735581354; c=relaxed/simple;
	bh=W3rLuq8xgZwnIJv2wkay0do/aQ6Vwp/RPnvSAFNpNao=;
	h=To:Subject:From:Message-Id:Date; b=djk+PqBtSsABA/kFg5pt5ECh2x1UwdM4ea7JpcFs8nXv4xZeQrpvbQn8qQ9PHaWFlgZpdcWBDvUUWvwThqMvNTSZd4Vd/+/TpNaZ/Ha+LzieK/u1zFjIYo4gRl64T0velvtXnO+AUGGRIJcikbThZX7gkpBkv01BItupoD6MTzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lsm7KTxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lsm7KTxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6651C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735581353;
	bh=W3rLuq8xgZwnIJv2wkay0do/aQ6Vwp/RPnvSAFNpNao=;
	h=To:Subject:From:Date:From;
	b=Lsm7KTxO8Y94UynFAo5cdRhycn4jDGuKvijXwGKCSpyVs+h6T+6PQ7FL5pJAWQv4Y
	 gV15U/GJKLgkEcqePUJWP/qAl5Ry8/ub7M7442aD6pmDJ5abfKDOcd2LJU9fwS1YA1
	 AKG6EAVBH/hGdhSTExoGBXzEcxtGAdTeBiNy+Im3sTuHjBfzHXXty3uuc4Jz81B/vD
	 GAuC23SrpKJ2MB7FQlPOuA/eeWKVRKFF54Sbxs4rkgvS4i+KYhISDxU6DK9DVx2Xgu
	 WiXw2z+zErmJ/MEtwxilLTSu1Hw03w+EEL8q4PPTqF+/6e9tMpfDH5a0rF8r06eCWW
	 dMnb49d0eQrag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969DCE77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173558135360.4699.15459045074544835338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f78b3537235d8c440ffdd9137b6a391c574d93b4fa7880c9886df8aee88d160
Date: Mon, 30 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735581353
