Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235EC2367D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750347594; cv=none; b=cLL9+qknXUEPXxGK32wgDmGfZjq7tiaYfJAhmz3EaDHcL7j+XdBtD5EQ1pFS24k153MaM0c82EymSJ6CN1ZB9oHGO+zHrAWPAs0bvJUyp0UuOxZMt/rhxsxdK+6Flaj+Z132omy9FeJvs+V2leJsYJrLUdvUXrh8SbRW9Oe2lDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750347594; c=relaxed/simple;
	bh=RG2fMiFKH0637KdqiKmAr8FqC5EdmO0hUgkXhTbMSyw=;
	h=To:Subject:From:Message-Id:Date; b=cHD7EC6cC27fnBH7dMm+1FWuoB1PDxYv6N//vT3JBEzYeNUdxcly/ASgqQYVjUrMbgkWMVIr8pUKBe881QnNYffnLgFyldVGigjuexHS89nEW196AJFHgNdVJ49OzsY67IsV1Ys3qgm3VQrAwHzdUOo1wvkORv1knYatwqAHWRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lc3/vH/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lc3/vH/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B1DC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750347593;
	bh=RG2fMiFKH0637KdqiKmAr8FqC5EdmO0hUgkXhTbMSyw=;
	h=To:Subject:From:Date:From;
	b=Lc3/vH/IPU0S4EGuQZpu+SMiwSByPvZz9MkhRmsVRTBFAQjzopmPBNK2Og+AGthXt
	 lPfQo9vtg7rYJe6kfkeeZT+ihsEiGT/v7gIN/8VDCXp+y7bJlZKKsMMy7PGBburp7h
	 21tKK2dtmt9HzoH3pGAjVw0zHUmBUA1uNlejUhq5BMNzCnnpF4m+1EWHYivD7f/ZWP
	 9ISFk4354hVWy5mlO71gnhTjzBtY5RYb3XAn0tOua0SBbBVWk8smQDVGxdWnoq2E4N
	 LF+m91s6hjkY49N4GSMoSSNGatDRS0NDtWMH7P+7s0rl8xVRPEAxRj16LULGMlnb13
	 o7feCVJScSk4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF2C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034759357.12458.4372032179680800210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f7f6d5470df4ae30f4ce586338cf195c5d2710ebee7628b611bc375230d5684
Date: Thu, 19 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750347593
