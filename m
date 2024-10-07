Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB8D6FC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728263154; cv=none; b=hLFJ35C7+tW1dUHpwrlBhf0+ub7gZDgDqai12Q8vFRvLhTFDX7cXUHbQchsHsoCIn7wzLmxJiNpu+HjHrp7a4iCfrnyrCSzAOENf39D93nMc4HZr5NPSyTPnUKwatWD2VxiG05BUS9lahtmrWONdbM0LfxVfsyaGVuVcf+CL71Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728263154; c=relaxed/simple;
	bh=kDxlMW4/cpUWdgMAaW3B7VD6nToXowW0/kUHfpE97YE=;
	h=To:Subject:From:Message-Id:Date; b=kLOYn/h2LLe2txH3xgY86zCtccxHETwrsD9ZYUextpSlB6BdOb/Tl0E3z0nVStBzN75ADCKfoaSqPT86B1K9ocGzPu10ZcqTsmDF0kVReszffejf7B8/tpWqwtEcZLZTEX0nSmMtkpHLf7BKOcdrYkRs+Zh3625puvMUjqbCuNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjeXuBw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjeXuBw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B222DC4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728263153;
	bh=kDxlMW4/cpUWdgMAaW3B7VD6nToXowW0/kUHfpE97YE=;
	h=To:Subject:From:Date:From;
	b=DjeXuBw6Uhd0c62E42rh5Y57Zw4AhFEssivbOhr6jcitZye+fLlMl06pF7LzDXRAI
	 4Y4Uw3Syyr+xcdrYNxKKoJLHuoJeyAwb7LL2QZDJv2VxRHhDjUBqho7Z162NwmWwFh
	 UPg/Mxb2hXMiDsBBFm+yr33ZtHuwMbKTw8aAqNmjsfdbwidf5onX6KKBmjV3SiW80l
	 1AKyMFgkENc/o/IhR9YSw/d/ec/3DD4bXNSsU1zGtqIqK3p8pJTKIOxu+UKRVN8O/M
	 83pmniom2K9k3zaXcWe0uuBFL2s8K85M7KnVrakHKl/7ej+lTYkZ5bozZ8qNSRVKH+
	 i0RyCPkNEGVqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990E4CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172826315360.19110.17569284668150475443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2cca90c2102fc64681013263756b65104f36e6af1cf1cb04285a9c7ef9e7a2
Date: Mon, 07 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728263153
