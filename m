Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2B5101F2
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722674754; cv=none; b=lL0ms7NIV+DArYiH0/Wklt4+pB2w2jfPqdfXTmIK23jfRJJ09Nqs/fKE1JP6OFvBqA0wkwOQsI2kRlCeJ85LE1pPQH2o6R3StrOW9XbN0b9N9y1A/7jTFWv/D1RQ0850a9RJjsNXFts3JSon0+f0W2g2NhWbCUKjetKkiOHxVsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722674754; c=relaxed/simple;
	bh=kUwCBrprey8Rjhz5/7SmzitCdBly+qRb2uud2vz7dYI=;
	h=To:Subject:From:Message-Id:Date; b=oCQQ+X7kbJa4r4rWT9qZkvL0ZXKOYYTt2ELPbreFmS3+TluEbYaKzy/79L8vNCgkmX5oATPn3aiCuhGNTHo/o2glTAv3+BYs+Pt0WjeltHCXl6/mFp6CTg5VEuSl5dt5OJmVny/UXQBdFR7+M5mKdL8MYXYjAFK1sqQwhhFiV58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpbXn1ww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpbXn1ww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0E6C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722674753;
	bh=kUwCBrprey8Rjhz5/7SmzitCdBly+qRb2uud2vz7dYI=;
	h=To:Subject:From:Date:From;
	b=mpbXn1wwp9Qq8uUNezlNqMADoU/E4wloVI8zPc61DxTgPSerAlfXYsxhPwfAFDm0t
	 /paARUGz0g1qgEVtSYFHSk3lzYHTbZeJH1U8eyMXk9ZK/zhGlfFbo6WHJDrwvQtzuE
	 UWXiGRumk15WXYdUwi9F7Olf9ZxW/Z5HdlcnueD1prGtdp4MxBc4dd/0yWuxTWPdkG
	 O3Ki0TlmPeiQxBNj3+EuiOhwG+WCxT5oTMaXZtai7YGp5l9/nVfaRUbNfqqYaAQXa6
	 OVjX00iSGcTeng4+/LiEaVZyK5zX0mFsFdCIyfglmZ7vBvWg6+bCQEM1l+qYI8VeNS
	 FTgGnnUTyb/mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9910AC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172267475358.11730.315573253058656763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9081065164d595d3c0007b2a1505324f4daa37f33cd98e2966c8553d8d05aa
Date: Sat, 03 Aug 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722674753
