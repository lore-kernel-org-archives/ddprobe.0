Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A713331A53
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791876034; cv=none; b=DDQiLKK5fLWuMVG9+CMO5CjVypl96Ho10j9etPn6d4IPkbcM/1lFsstW+5UGL/7uB/KMs3NnRSrRbBN9EynIlPtnihDeb2aXXdfadySS2cErDqCa3Wid7/JutvzN15pykaJXO4dmsAJ5RaeMDf2cfSu+NFaZsXNB8HsQbSOmyko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791876034; c=relaxed/simple;
	bh=3QH7Rq0Y26XD1FNkgC7lqkJnjMJM5YGZJp1H5o+I30o=;
	h=To:Subject:From:Message-Id:Date; b=rJbroNmqJ49mzNO47GiH2f/vx1K42iDEagCC3Xw/oUJi+jgEWilj1YfcPfi0sIooMeQDgazHTagASLh8T08q8tI9ZIvrYbjba9iqhjt6TjMEIniciPYJX0NYQj6Y+/+qENmYIrDbPIwyGdCYtaa0yLpNAgEC2mRVYHClINelw7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2fouMnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2fouMnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1961C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791876033;
	bh=3QH7Rq0Y26XD1FNkgC7lqkJnjMJM5YGZJp1H5o+I30o=;
	h=To:Subject:From:Date:From;
	b=V2fouMnhIPf+6+ejSU6X5kVPsHyU29KjXBxkWQnlmiTik7Gbn8IWKmXpff/+9eqEu
	 DyR5v7E7vpQItGNegCVTZ6MOfIUDxBMOW7rZeb7fTPsXnWvzeLmhjaU+Fi97l3+1nm
	 9MlCeVDZOERTVO/vE7QVYE3otboZKi5GO66Vrenk2FbYCWmtKy6pw031NT2CQUQTLZ
	 vZKOYwoyalG9eh3KMmIIW9mar1Mt2+FrK0LWYuL+AVKs9k36PUFxLUOdTBXKFNa1YQ
	 xqLKgfLEYrxEcCU8sYwQENBz8DMnswqVFnShjB/FRJJo70t+72+9UWTuciqQJ5oyjn
	 Rw/dMFCUWMreQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD407CC6B10
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187603368.17226.17960137114013252143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a06d3e6e1dd5c45732b8ce9e40e03ed2f4022891a0be6a2fd60877b999dc4f6
Date: Tue, 13 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791876033
