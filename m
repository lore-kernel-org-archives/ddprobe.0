Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA922F32
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744564194; cv=none; b=Eo00y3h5zm55chmNpOMyFdGVRzj42jS2wuzxxe18xFnT9iFQsmqzV/0D8NDN2l4YY83s7CMP4j7ZI+SdNWFnK25obICJxT9r92YytZQYC1BQuxpe+x5Mt6RxIYUEdpO6gHYvV7N+a5pCfP5Wjqu0oDmSuPzA6rlI+vzA+hHxWeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744564194; c=relaxed/simple;
	bh=7JJepZITrV7bFtBJc32m3O/JAuXD9CTsTgnRMHo93iU=;
	h=To:Subject:From:Message-Id:Date; b=hOoURI8uI0jTahvuTycE7+oxzI92UVbnAZ9gTeULZq+UOhzBEZwp7ykVxnz6iQ3WOsJmc+dUrr7BKPeaannC6vdNDcDb6U8xwBDSQgE4C0lTZSs2jrSxk2J00k6UHNlacUQeKz/Z+tLgfY+MoBfO7vzIy+L3oI2/K9CIOs6aSKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udLQ9qS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udLQ9qS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF76C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744564193;
	bh=7JJepZITrV7bFtBJc32m3O/JAuXD9CTsTgnRMHo93iU=;
	h=To:Subject:From:Date:From;
	b=udLQ9qS4O+fp9GBDO/ILk38Zy49rzGKnB1tuYoy9T6vyGWd/m4F6OQ6MWzGc85P0g
	 s3Vc30F778aF3CCqnZ1PpiiitRSBBXG++sZeV65aKFNfgm70Se4GH1rBRmJhnxt2Da
	 zfgvnpM2QJW+8KEmbKSbPWaNaXrpT17qpFlQCF6PxkqQhi/18nYRruzuVVuppWQOSb
	 Ual1FQJqsITlaJo22dRf5Is/m0gsP1YdOHkZ7a94IkQWkyjgelJnchpn9ekydIg8L/
	 kdjcMO3RgNt8u7he37dH5lSzaDIHJKG+Js8dqjv8W/imCkT45RwGJynR1w54sIdYyM
	 YHJ9h1KfuNGGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960C9C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456419360.18847.11618643882822782971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02cffa00186774697777156194995dbf5e6c9eef240c7fc8952fbce03e79d98b
Date: Sun, 13 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744564193
