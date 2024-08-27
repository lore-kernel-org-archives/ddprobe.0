Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAF01946B8
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724749554; cv=none; b=kSFw4deqICVKJzNBFmTWH9PmpDw0mHtkn/j+JtiwYeoxwVx3Rf3bjL47OgneN3QIBFJ2XUuHn4eOaAgXg8kyCxH4hMHP2u0asWkbcxSpq9ABHGT8k6ilRDwZTieasiHEZuNUCBSi5KkfWhh6uA+wR/ZQ0rKgZNzF6/os7K1e0m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724749554; c=relaxed/simple;
	bh=6tnPGmPDyiPTvn7XQPI2e53bEc/x8PJpT10mnHM94AE=;
	h=To:Subject:From:Message-Id:Date; b=RNfJyd+rlQHWxQKLHTwGfORFMx3hqiNnWgvxL9Oi6sVP2ikcd+GwxkOVZBse7fQc/pI4wWDttBQ4kB1s+NgJ2fcEpMkndRIAzpQcTJMSD3oGoEtp7fO8j0GgmytimYWbRL60Gtu7MSWHTlAcjRm+ds+GuUGjlD3kMIxg2andfjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pwk1izP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pwk1izP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1B1C8B7CE
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724749553;
	bh=6tnPGmPDyiPTvn7XQPI2e53bEc/x8PJpT10mnHM94AE=;
	h=To:Subject:From:Date:From;
	b=Pwk1izP1RmJJ95K29d80j/a18JoJ/vIemv8VoHXtFeIMDyUKgUJFJrh++eMEfXBmF
	 XCeynxV9Crzb9IYdJ1o+GOqKsCtHagqDF8PGlE3N5RBXAyJJnaA/Ko0bQvjE77SeeJ
	 NDptdzqWFqYwhX99+5zXe0z2MUTkaU91pUKAb99zQNOfp2wXgEVhbWOJwldqGGfR9V
	 Fz7QHg6bQsM6FzlVMkjmO2+k+hRu3hFm/IDPi4JtYkYNa72pxvxdQ1TrrZJwYyWlAV
	 JcFe4vy8VRhIaUYuMBSjPNN87prLQ67zO1qiYIdy7aXd2fCm3nztgOq/+e+nOwWT6H
	 HuDvDhyq2TN9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8F2C5320E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172474955362.10493.18390040983313931013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df94de18ca8c19171487769d4d4956da0fc81923c1d312bc75ac31b6ed87aea
Date: Tue, 27 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724749553
