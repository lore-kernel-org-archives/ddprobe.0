Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E561E5B63
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759297794; cv=none; b=BAU3LkdBvAlgsxzFOU7ElVcShcXMzfDf2WPbqny0Tju6lGTJv5YhNwbzyEq5Rva79nw+9/C6R26+JN1FHHwpCuJeZSfHj0zTySa7N5pJVuXZeZQGSKwggUIef56I2VGaPh9wRzAlLGlJsjpV4j7Fk2kJfUznKr7e+CuV7yqxHPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759297794; c=relaxed/simple;
	bh=XC2UkztFYHtusT2oiA2oOGnJPU/BqjlaRr/yTsB7u0M=;
	h=To:Subject:From:Message-Id:Date; b=lESo8K5BufMDyz/lLFhqT+SvL2Jp/tgDK00tuiBKF+v9qtOgWmlPIo4f0ykYfgNcJ6UJw1Mb6TolXD1VpoI8FpbpQvWybsmzYrmneeQ4qT9Hv4OlkU5Gs6RKXAnxFZ4f8dDJvVuYSZTCK6bsjcdTBMznY81p/RtUXteGL3W2Ulk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnXyf4RM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnXyf4RM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB74C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759297793;
	bh=XC2UkztFYHtusT2oiA2oOGnJPU/BqjlaRr/yTsB7u0M=;
	h=To:Subject:From:Date:From;
	b=dnXyf4RMied4ovXwc12AQb+KRvIa4N9Q725pKMvfbgR4AQe85xzrXiMb9dlK30h3n
	 igV5sxr1muW9t71qrbEGXVAcZaU57EbzNP1PCv1E4aH84YoPGHDZ4HNut0bb3nYKqP
	 iQinemjVHvMB3fkFJwQGiA+j176Adgyg4PXBOInLwg0qVX45X9nCPmmRuVZTM+f+54
	 f1vd9yqHqgnfMriomPb1U3XNUKNvp5ble2sd/7ECPzabdX4XUcRjjT7gzk+dx4T/sk
	 wTQqh6wbZo/+RS/LY6TmkeZul+mjvqxYIkE6izicqpvTyXArusCNz8K9hqrzGen8Ci
	 DgKknzKLvIEHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE89CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929779363.13310.13199073569060621193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e81322ed2638ad132c8e202266e86d80f0af942ecc17ac160c8aea3aec83300c
Date: Wed, 01 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759297793
