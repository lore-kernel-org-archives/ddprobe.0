Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CE7482F2
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757142594; cv=none; b=THvc/YrtOgn0NBLgdfDsycvYpQzBlqKOtCDhFP5gF+jVFo3eVDqPjEPS6z8vyUpwCiSzvRj4qkKEpQaEX1tvNNc0/v33vFOZPp+IrIkLrzH9dW+33FOAs3nMbatXXnRcndTrQYAvdM5OrJzmnr4r5Bh6saXhQLLif2Y2+W5vSZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757142594; c=relaxed/simple;
	bh=j1qvOzd+e6V9pwLpcrMkIBYPtzAaTN2eyyleTCid1vw=;
	h=To:Subject:From:Message-Id:Date; b=nZAdI4VhXNzV9ttW+lMv5JZodVB72T4By2BO1uqf3TX9feFIl17yKift5EUB7UuFCAI5pyZhx1HNldVkCWgXUAtjGqrl5oJSjyh8LT7Do/v54wq7LaSdzeb7AYpZSb7snsvLSckb5R/NFmR+9EO/rp69D81D8zO6nK6ghjDQ06c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHO4RZJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHO4RZJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11AAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757142593;
	bh=j1qvOzd+e6V9pwLpcrMkIBYPtzAaTN2eyyleTCid1vw=;
	h=To:Subject:From:Date:From;
	b=pHO4RZJWUCgpHErISuWAs2Q8V4o4nvSxGfRILuTNqXaeTlbDAbcUq9x4GvM+wibao
	 bckBV8VAgwm8ulDLk3sagRtB0efuNRpdGmGpgsY4KwKSWzyKG4+dD3MO/h7KGQLEdc
	 Uuh2gy/2G34xqkokvzJjsXV7zVGPZToEgw8WhdE8jtbbYBKy7k8nDLyFWsqzku0lMY
	 4QSRi0yQb3hdNIEn6+8DIiSly7seIetJyRNzaEyIpIHdf23UKNIY8rfJPcnahYSzB+
	 Y8+ufZPx7Yze/a1d17eFWJjCGsMvO6JmHsGq9FvQlpLkmqv3TsJo52/InGQnUNQU53
	 CijiSHq31c4wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EECA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714259357.9508.4163094472983035354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58531ef99ae4db8f1f67d49339e261778083a48502c8a46b9a03fef4c5022548
Date: Sat, 06 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757142593
