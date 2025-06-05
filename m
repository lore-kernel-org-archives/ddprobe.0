Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D08816F841
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749133794; cv=none; b=hJgbrDVDiFVOTCDFeMxC6SbgjCcjMyeg16mAMPwqq4sLQ3zU3GTmth0Eagkmvsa8Yp03cm4L8fEdMkKWHic5Cj8+h5v6qXh/v4kaIYz+agN0AP0M6s4KKIEk52RgEezM3UH7gRJy8hgsoEoU81rWdfNdBqihf2FwKZEtIbh0aAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749133794; c=relaxed/simple;
	bh=WWWlz4DIA/FggJ54DJWbE2/lVnFeSHtBv5XxHP/KVSY=;
	h=To:Subject:From:Message-Id:Date; b=RmMI8eZjytS4SG7yo3L9rRnbYeRkNGFPXs6hjkKo4AkRmPmQjsMWL4HgwNv0X1wQO+8twO7/en/HOqDjwfLkF5jJpQyMJLYxjkluwJkNZhuFNjYs0phqwFtIHGURi0uiZzRq2IIzDrVgi1+bvnYgQRaPq0i6f5eeHwQAEqtBzBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxSinJ1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxSinJ1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D365C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749133793;
	bh=WWWlz4DIA/FggJ54DJWbE2/lVnFeSHtBv5XxHP/KVSY=;
	h=To:Subject:From:Date:From;
	b=FxSinJ1zq+iXs0HDzFYbsGWyRktrm8Z48za4J3jTt4/VzhIg2WpuQF2oUIh9TihsU
	 js5xSgl5Oxt0dcwAvpY5vUAJXvVzO9gqUB5ze8VGYQXkg/QJ4vNaQyU0hfbXDiKaSr
	 iuVhxaZ4Vqvv3hVizp4vO+eU8VZIApowKC4Eqju7TmgyzjI6x9qFCXbXvB64IZcewR
	 zv10J7zzCo04P0rZr8FlTevV62TzPOwrPU0Dnvc1alF0g3I4K6AnkadcoxV3aqLfdj
	 olqHASLru0k6r0ijv6sWH/CCxotHhmM8k1b3sdrWR1xze4WUu8fP1DbgE0Y+R5zr01
	 GVkUiHV3IKB7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23DC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913379357.11572.12011033717205410917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3911f4b8c97551b9f602ed4addb5140f14d22b80267123a0752fb5df78a448
Date: Thu, 05 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749133793
