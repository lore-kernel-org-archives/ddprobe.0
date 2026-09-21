Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950923BFE2A
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789986034; cv=none; b=VYArVS7xfm0ClLtrXOK9KWb+S/Iw8NgKUeTZelt+6VuaEvHoT90mJn/94CsaRkZCqTwDpYCxPJPrwxkzVIa+V4jI+Zsjp4CuYPTQatvjWKQtkS2oIhIVunc8H9wWthtUiq8FhssmRjzytngwnN5IfNczIR/DUjKz+tHFN2mVxAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789986034; c=relaxed/simple;
	bh=YvAAHpCiFaSctJsL5nax2zLDoF7mxYXZaCBJtJStcEs=;
	h=To:Subject:From:Message-Id:Date; b=AOhWN6Im5c0fCWFJO+IBB0uCkzWZJhfI9C544Xikl1xstcQP7h5s570Xyw6kkCrZ0ZE13OBGZq3trXDAlZd2r83HWbodyTNbtuGW2lhDDCwJmHNei95X0K8WtBrGNKMZbm10c8IQLQi6kuVLpzqWiP5QkmBI2/kQB7iBtGsBvwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibR2DquP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibR2DquP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C87C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789986033;
	bh=YvAAHpCiFaSctJsL5nax2zLDoF7mxYXZaCBJtJStcEs=;
	h=To:Subject:From:Date:From;
	b=ibR2DquPJhair+VGzQAwZexIgli/sV5a0i+vEbbEs2b0s8fwn3sgIbmdrFPWqat2Y
	 Yfn5IlVKxboiu2cGOGCltO3RsddIm4uGulsGu4tkNqhGdfx36Ps0HvY/dKo/D0rQvY
	 KEEnWNOiSsY037lsF5D7eJR/URu1NpwEEIFbQmnw3cRV0HE82DSR+z7X169VaMUiHX
	 qxMZ7EU7llFNXX/oCJf4U3JgNpg3TzwapxVrB8RKUTI5FB9qCHyczH2KEK/ZUbv3M3
	 FTQUKd2/lhFt9AAj+I9m2b3ihuzmkM1Nu1wyktFQw9g0/U3q4bQrHBoE+2QtaBlKCV
	 E6Th/WhZ6T9rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA34C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998603370.11210.12312552459838898355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ebfce1946a72993db6ef0eb013cdb7a7b183d8d9d706265ddccafb7f5d954c
Date: Mon, 21 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789986033
