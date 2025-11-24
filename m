Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D53D2F60B2
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763978514; cv=none; b=ZtAKDEpeNgV/nsEG7rnJmX4+cLQbOk1S303asqim5OYsoYivFejvbQLlb7ysypoOVzCmmvOhSywAFDVYA4hqcIDWXyrtqzudOZE9YTMjx9/MEYNPR1Lusb4xl1hhwvwc8yuxi+nMEgvc2kLGW0G2JGPUnzbmKsIj/fIlNRRlUO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763978514; c=relaxed/simple;
	bh=7L1xBxMNzRmCIHc3iHqhKYW5kKP1YTBLFVpN7VR8q5k=;
	h=To:Subject:From:Message-Id:Date; b=WrG3uFOtdLppqW8MLpd4AwiTCQwuSTn4cmwmR27UM3o6m4skCyY2ANdMGgMwUSQGvlmN/8yowbEwyao9Qo/T1PqmmsPkE8uGlI13ite4a3Z9bUi2fLLQC044yr999SVSSvkycptNsBZTGELUy7/EPtH0kjTjyZPGLZuMHa1SPlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9AQQ+4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9AQQ+4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EF4C116D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763978513;
	bh=7L1xBxMNzRmCIHc3iHqhKYW5kKP1YTBLFVpN7VR8q5k=;
	h=To:Subject:From:Date:From;
	b=X9AQQ+4bKKDxtAknwh1/ytIxEsf8Fy2W8TtExp/5H44nwndI7wwSQ5+CZ0Gi34d3q
	 t7+P/n2R0O7Y/snXX4GBRM2GWihR83bMDwQFr6XA26vbknH5z843Sh2UK4T8pwKhda
	 qJJFYapMpkGMVxCNxYeOX5EQJTvpYcnQ8AkgL9deESppmkf63C9nPEnb4M+kQl34Sc
	 AcHDC4n61h/UkXU3tz/DmwPhvEbesle/xypnB1F1/GhPcjuU5OvEKiARwmtqjCZQVc
	 vrKE5QJq7+PFvUQDrRrm/krzpQP5YLqrXyVUEuDprnMbUv45QvHqskAHZm0FIja2Ic
	 tAY+kJHQrno3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921A8CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397851358.3014.5417793439814236890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673f7f5a7595ca0be94b94cba4e3a4743a8b502162380901bbfc1a2e146d6872
Date: Mon, 24 Nov 2025 10:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763978513
