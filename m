Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5075119754D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719506063; cv=none; b=ESICUUhofvyXNBF/LrZipJ7ViwwU2HdkUSpApjugacMGyQPjJLoUp107wxy9rbnDUx2GP0ZK5abqs6S5PWanV5SGGwpSsG4pgGPNRMudES4wdnKJ7wuIk0+kypulTMvS++tpiGbyePpy4eZ290d7lq908E1TmEhVxD7fB5TRvg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719506063; c=relaxed/simple;
	bh=Ro7HLyfDZ9SSxPG6QgjHrfwikEg2H5ZPagtLLQ/IQFc=;
	h=To:Subject:From:Message-Id:Date; b=RTto80c54XLZVaXM4HOLWwENOOXoFyMN13FP8WBrhRP6Dmbey+nfl3U7mRnsM3gcB/FZT7GfFTdthHX/ApGC3GGk8uDSwdoyn6CjisA0YaVm0rAzDwSgFXlCppn+bLqYi3VV+p7NtjfR0LdOEhmgU8ZLKznTMsDF1KLl5GU7BUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7jcj3IK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7jcj3IK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC42FC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719506062;
	bh=Ro7HLyfDZ9SSxPG6QgjHrfwikEg2H5ZPagtLLQ/IQFc=;
	h=To:Subject:From:Date:From;
	b=m7jcj3IKx730CxUWJnsApRWNNSZfttwPl86wkilpyydanZdoVLZHMP5Xp/jdl/qxu
	 bfDza+fl8vjDM+Nr9eyQ9YCof4eAEzWdJofBcyxuY1mBoccHh5YjQeormFDsUK8YDg
	 uy5AVjE+0dWOLjCOhrKEJ/TblWBVLzKlm9ubS2Wibn95huXUV9iR4ZCZ15UD2pdxs/
	 WkFc2HJmojojTRPu1Y4mjmT+t0XxXzLEr1sSKIZh3i9hAYxLGS/LtVulmBXVyKSQkh
	 oX3rYxHfkvtYp3iKVnaZOrsfUcPVBWG6f3tcJfOnh4ipg9IjRyfJHDyAQtGgMKHsi9
	 ZiStw8+GG4fiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05B5C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950606277.23816.16678763409470327640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c2cee06f24e850bb2f36e9baaa9c689a598d22ff1b214b80b7afd67eae108b
Date: Thu, 27 Jun 2024 16:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719506062
