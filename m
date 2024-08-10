Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BB1182D8
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723293354; cv=none; b=iQw/2eW5XCKe8H+f4l7LG+Y+la80tei40yf7142lUW0DD67s/M36IvQ26cv7Wy4tYLwbLCRpdNYR1ZP6hzNLVlZFUj7xxa8F8uM6hbDo5UBnYPabKvD3NTnoAA+bSFuOf1hFggMefTbnDvGIU+Hs+zPZ8ONw5PHEOh2agWYdoOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723293354; c=relaxed/simple;
	bh=yq0LJlye6UKFVY15+4/6RXgpYNKxTT+YTqf0PYXHVD8=;
	h=To:Subject:From:Message-Id:Date; b=kL3jtvpDut1//sV8BUNVxnbbD0p4uX/hgLso09FiQuX6A5vk1/uhZHyBHXhS/0i7RaP8KHXv7gYupZtb9312n6DZ9SAgai8MI2GC5LDKy/Yztfn23gJJk98agGAbYNnlV9fw0MJVDyUqzIyQ7SGO/FPAlG6LBAHVxGwitleqp38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rC7ELaGA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rC7ELaGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA97C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723293353;
	bh=yq0LJlye6UKFVY15+4/6RXgpYNKxTT+YTqf0PYXHVD8=;
	h=To:Subject:From:Date:From;
	b=rC7ELaGAzHOFndJmK01w6/KfmVmOjhBvrixXI1LbtK0BGCn/mNr7TynAyg9T+N4yq
	 UJGQEmzzdlfGTzpADsU4GIYrRjAXWnCUmkZQnsXRgp7VBCBx2heLRp1J6Q39w0PJfB
	 l0lqqMf97dU/K4g4bdvw65oZ6gF1MVQBZ9LTRZ+2tZVIE4UFuQwgjq9WzPVbJrfv93
	 yzCwCdEgDqcIJkzajhGEUXW4zCnGLKN3eEMSOnVG8+oDCU9io9LhquNvjWkgE6xejK
	 60OjrHwsducd/Y9G7mWL/WaGgoy2oxzyASu33caIDthlbxExoOf6/bSUSAVhdxYhGs
	 lYMEaXRypq1oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B8C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172329335358.22331.11199807896768367989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e27924980d16afd271adad2c76fe3348d9d2d4254057a84b2b37b34bfc4dd8d
Date: Sat, 10 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723293353
