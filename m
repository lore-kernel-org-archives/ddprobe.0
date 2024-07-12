Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD972D627
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720816763; cv=none; b=MjJlel29QhZFGH4v5QZchL/icQReQVmVSOkkACZKwhM28u9YRRhY8/IPk125grK4GfCBGdVJZvauG8c0FeKo1yH2A3fHwkPN5HACC39vRAg1fJGzikJ9lwzN79MpWN3GCirwqW8KRH0AqSgey2utldRvCBr/C/HNUVISF7RH35A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720816763; c=relaxed/simple;
	bh=d2AJU/9/9ugX7XeQDRHeLUR3ldxAMxO35Uy/Nd1y2u0=;
	h=To:Subject:From:Message-Id:Date; b=Y8UdkEUArz/EYICHnQdzNBwlsjSKQEaRngE/HkS7s4CKb9MpHkFVqIJP6vWgd11cW4gYKHhcCtQo7GHWqEnU+m0+7xCtnU7WIjKQDcKBfxGu4BpBMHWmR62M+kIuAlah3vqM0xacF6139zCKpTxkCNG2VC8cBAZMU4tWOlCfoTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXWMjeFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXWMjeFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0A6C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720816762;
	bh=d2AJU/9/9ugX7XeQDRHeLUR3ldxAMxO35Uy/Nd1y2u0=;
	h=To:Subject:From:Date:From;
	b=gXWMjeFs+P/dYE53u2gA9GL5XzNMNNaH3uwkDkkAEj4W9OvIACkjpFrv103LsE+aM
	 cv/VUGqX6yRnhWeAN11RlFNySaMm+f9a4lSuUIv7Ki7TaUB372AnFjGJ6R73tXdwBs
	 NtiU35/faG5ICItHcrHS3igLZAnWluDPauEKE3L9q7Voi/igFf5XqbV80nIwle4BPg
	 LDDAhdAkMSDSJBZRiHVLaN6wxhsPQoI3aYK3zAxyeIEld+YY7VP0ew0mVbcZa8NR43
	 ml+tw1u+1PuAH6hpBF83XBl+d4DCLZCHtxLfo1cM4NBwxaWMkafYAHLW5hPpb48cTU
	 W8Bvr4qM1+QpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6852C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081676280.28218.13821019608055923941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce3a40ed5ce143b8f172e5ea2b15483d1c88878102f1137d966c9fd004adf59
Date: Fri, 12 Jul 2024 20:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720816762
