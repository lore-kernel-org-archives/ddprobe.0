Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E80C401A21
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787659834; cv=none; b=Fb1eUia7Y9SG7dkns7IHd6Yja//55qHWVU31cATvAnVKVFTe+zBsRtXBfZHtvxiMDV/fqZDNyOvdBHe9mK0dNxs3xg9ohOZLzPFBVRlHTTFyvNNkdAtdAeJDZTyBt4h8uSYCWHTFK2YZexnvYjI1DleEjewf4c3uXa2zaoOVFpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787659834; c=relaxed/simple;
	bh=GHW9nOJA9vV42prMPb26tbETUgy8WCm4nq+UarJo544=;
	h=To:Subject:From:Message-Id:Date; b=ROCQYXQFwfmxDDtAgaTWhfCxi6fU6OliiSdMS+n2G3HiZ/feYWqNZQiJbugibWZQvr82oi7tz3EuTo7a5S64GyL58eAWQE2ta1RpJN+60xUvgs7TJLN3fRfUkIgI6lXr5g+eLqe6sanA47YEnfhq0uVmJSzSUGaEa2kW0EwDVtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kje+Ryuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kje+Ryuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDDCC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787659833;
	bh=GHW9nOJA9vV42prMPb26tbETUgy8WCm4nq+UarJo544=;
	h=To:Subject:From:Date:From;
	b=kje+RyuqFJ4jIDABwR0myP/LwdqdeSBsENohtRGqWKoMv41SV8Ejg5B51N9c28pB0
	 HeLmdOdNCwsrSdTeNTAuk1LB3nzJLywHqqn7mDKp2SfB5Tsc6X7T53fn8tmjvIvrRk
	 vvmjs/fFffhgWSEVSnQBGX9Lr+tT4fcE+0zIaI+c86vNpc9xbHOunIsepSNyXTDPYl
	 sN68miJuYZ4eaLI+dLRixp6Xl9Xq0ifRHd0ExVlLPmR7hnvw44FF/3hp49ZMizS9Up
	 M+uL1dpL5BI9+VPdR14xq9JGw8aL5UUnxNxaSiidrWs2UTYtwtWuiHwEoU5OEeOBL6
	 PbHlhILOimKww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAECDC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765983369.6414.10004119282949244855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54b6a69b39f711bf1607d9b84fc1e5be95b38fc3829f728413bd02ab1464db5d
Date: Tue, 25 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787659833
