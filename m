Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0FDBA37
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719903323; cv=none; b=sNLMpejpGjLpCw9v+1+6VkxKkepKcfUop91VN/ycgO568FhdjpZHwFVwMAXI5jEgHd+8KGE0oFs6lixV7r/Jhd0cQMcUrEel+vjbTHjFGNzUpWdByt4h5I7GNuxcES18TwqIPjRw58wnZrP4wGMMuTAak+IRAsCfyZoRGZT5o7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719903323; c=relaxed/simple;
	bh=Jpu/ivgTo7eu1/HCre0AuCEDihmoXJxPFnseSuw8rl0=;
	h=To:Subject:From:Message-Id:Date; b=bcrsxuEJU5kMIY8GF90izbwUTMOjaN1pgGKj5P8s6aYz/2xs4xXVMgQE8Rbw39SPu3XRUMIDItWVBmvI5D1OwTD6EsHMjWIM+H4rg/i6twV8q4H4juAX2dyuHWwf3Knbjo8fIA7oPpsG09neVXEGQaP7yajp7nev73ljkXEAytw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grSZTcoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grSZTcoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE46BC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719903322;
	bh=Jpu/ivgTo7eu1/HCre0AuCEDihmoXJxPFnseSuw8rl0=;
	h=To:Subject:From:Date:From;
	b=grSZTcoLJunm0klLlDGH7O9z03DArcZEAdHM5eDgw5L37WVfxqaxA23RZXgLzgEtI
	 tTdke+WGXCWXN9NWdNP+x2gzwR8yb2y9ThpmhvvZBe5q1P69JnDvUWLTCIru5g5oOg
	 2usmU6NWynaMLApzgHHL/tQbRiE5QMXC2rr6UpyQSLYZWVZpPgMD0LJCeuU3ksvA9X
	 xlYNwBOVcdBwTS4gpyNW5faE3bnVJh27bxD9yiAun+ISiaDh0J0RGgbpUuA77VLeTj
	 60YY2Ye+2xxNvWWCV3nbxVJO16ZSW9utw8Z2EWvWMoalKHoaQhCMWXy+Xy3JmopxPi
	 Ul4fsm3Qzx6Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CBCC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990332278.14370.10835375267534603990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fcb9eb44b4950b116807edea8f340ec406aebdd197c54e6663c5195378f72df
Date: Tue, 02 Jul 2024 06:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719903322
