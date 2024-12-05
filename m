Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368B42066C5
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733392554; cv=none; b=GxTJPu7tA5eoHCWENyQfMInT/Hi8QYd35Oi1jY0xw4n+90KkY+SJrmCFWHRBLEvPAgMO7SCIdbMZ++8vZmBT0FPC25s2cADNmqn51HS4qW5FLRo7NZE1so39Wv3ikZNwn1wURFucpD0B7fOFmE0aKhscRXI92XuGmOdC8Ikj5i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733392554; c=relaxed/simple;
	bh=DPvYWsEzdM7SWoPiNkUzU6sP+YCQOYkutEqIJ186738=;
	h=To:Subject:From:Message-Id:Date; b=NEAwTjzIGJSXXDhBLawqkX1FHoJCxoJNHeWWjHdtN7SbyEAnhLcRxe+qUkQfM+7yMg/M6uVDmdCSG/Dmk5hE5dwn0LrvXD5bg2ybyVyfKR9SwZrJKXuWOZLHra/lKbWVOEeuD7Ih2GgC6qYu8Fs4tzNyS7Yie4MpUnnrLi7TR8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuQfXOsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuQfXOsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE5CC4CEDE
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733392553;
	bh=DPvYWsEzdM7SWoPiNkUzU6sP+YCQOYkutEqIJ186738=;
	h=To:Subject:From:Date:From;
	b=FuQfXOslPOykAY02nUqW/BCpU1jKED5Wj/VBT8u/G9ubrNJRLqQ39owLWoe1vRzg6
	 mZ8u+oGYPCmNR4TxZEzWw56HiiO99/uygWV0hcMNpEkcTW0T9VNsePcJl50EETX8x3
	 4Qbw6AxeeTzNDcea9UngpVPxFAmc3YZmHF+yv+JsGtdGMieZ9zwIa4AruT0vJY4/MZ
	 EYRXJyRxrmPVAhigPWcvdsujSCz65Yxv226pzuAGS9TiBOw5qf7fp9e+C+C/vze4j+
	 KkXrOKCpJRLxgYWFJ/Rl/YYbjGwfJu/GxSxL/MFQ8LEwzt7SUe1kNgiOWILxAdeZvK
	 jnlqlOD5g/vww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91FBE7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173339255368.16270.6917738761421666790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63fbf665c15b5af5448f810cae5a14b4abac3a0c9143f8a008340e817bd81a8
Date: Thu, 05 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733392553
