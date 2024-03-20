Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0271D4F8B2
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710977897; cv=none; b=Rie/+WLVRO7yrJ9Wq8EX98JgNxerrJNT2QRgJ9iWw5n2O/ZK6atgO+JWqhtT8+yD1kl3ONI5dKxFDh/sD20BoeELqtL2MGBgwOG/VLF5fwfWfzWSzvoZz2Lj85ELWjaW31DjetPmS/hNsQiO3iElT/W/Shvq1zX9+SNTKcvI7oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710977897; c=relaxed/simple;
	bh=Yu5EWOse4s7fEJSo7Zm4gEOlKsHbdUd1y7WrWeiQv5k=;
	h=To:Subject:From:Message-Id:Date; b=EdEwQDrMZo2DHnXPJew2U43I1wfMoEtIYMqS8p1E0LKvn9Q8qptF9dkNAqT2pOxiE6U8Jiwbmcq4T4XAioiAvp1TUrU3u98+QNLH3Xy2QUJD4faqMqvjKyTS7QyiiKLLv0PGPsgKYNGjbVpdgQRse+3XmP4OA2jPE27i7ir+pkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/GLFWDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/GLFWDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72BF1C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710977896;
	bh=Yu5EWOse4s7fEJSo7Zm4gEOlKsHbdUd1y7WrWeiQv5k=;
	h=To:Subject:From:Date:From;
	b=d/GLFWDD9zpx00fWJ2o9/U8YvIT660/unKGaasU/dOHxPwEuEvzl7GFEYbJofTTMe
	 QG5zM7MGvvmWbrfUsgm6LhvCdsKWk0qt2tseiTgwyztt4uUK7mfk/92k6NsqfJsOUT
	 vduVtpSWGp0n2UIfNPq8Q/3UK7Tv3rks3ONde6Eze8wPtV7mydCoDYPW3YozBXTrRI
	 L+yT+H+CficZuTkuRaT/gdDiedg+9/WaskIS+9pb0NjiXDdBp6i13cIMsPwPm+R3xQ
	 G11Vic4A9D95RMJC2T9r/RjmC63XCKGxWxm4OsFgRISBmgdmanFXaZ7ldJo8CTJO36
	 /TzsuOu/kpAfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA59C54E67
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171097789638.17240.12221160696126054955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2181eb7c0a8a6d75678a098bfab49b25e30735c56a17174d986cd7c89a4654
Date: Wed, 20 Mar 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710977896
