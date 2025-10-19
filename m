Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6A41C6FE1
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760888394; cv=none; b=mBgPx5obbL9xo9Iu5V1QSIJbE0SC44Y7qz3lIJnm1aT035Mx8hn7+teCJU3ndpAigqKm3NECyxk+SHIhoP+0ASdweNRjBFy4ek4hMKGTbMo7DxrPkF/1SBsIzkJTuXtpjhTTftye+/546Y9lsz7fF2BsXfBK8kA++WgX0PhWqjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760888394; c=relaxed/simple;
	bh=pLXEtFHk8dKMrjPZcnJJ4vyZmczAb0mhwhL1ydmh6h0=;
	h=To:Subject:From:Message-Id:Date; b=AIkaXPLis7ToBuxImA2H2u1hm9f14TjUw2UipTAeFhBCOYenRAzIlOrzCjTLFHivTFWGobeAPehIIq4A2/IuSiFaKLNNFptbdOMr85H8bAP1uVH/F1tLx2Glo2sVOySl5kEE1GH5/N5FbQ+pQHzuAQSekaF8bbazDspsvRwhkDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQwz4jF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQwz4jF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8945C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760888393;
	bh=pLXEtFHk8dKMrjPZcnJJ4vyZmczAb0mhwhL1ydmh6h0=;
	h=To:Subject:From:Date:From;
	b=SQwz4jF6CTFbycGJdp0LMONtMD3EEdS8K97v7SvFZGNYZmpDvl43YuKt8KXc4ECRN
	 LQFfJUNIwuD67u6YmxZhIomUKi01yCCyylptOS9iGsyPXSi+qp61EPSEAMD9bjGaJl
	 SSPzUMeoPzkM3/0RxHYld34Vvrrs2RAkmJ0oVP2Jidzx2RVYvulcctr3Ra3QA9H+Od
	 I6Z3cgWqq/NxwcS3wBhXhHuejbhZJi0g8j38WsupSApHfZibHU0Oj90ZIfUr+kmumQ
	 sPxFCGaMuxs4zWZyvsq018byK1+g8NPQaWu2HyU1JAbSDy06qSmkDCEKkmouNRuTvb
	 H+hrlxjQV4BHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BFECCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088839358.14085.17135740223184525434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8c537db58d085e88b5d67d0c0816388fd121d9617aca0e757e9c8b43b79f4a
Date: Sun, 19 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760888393
