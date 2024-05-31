Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C2A55E4C
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717176263; cv=none; b=ZEdRdqEspWortkGyvmS+ditoiCAHfgNPAIFw9uB+ov04yErYx/gPNbbTjf43AtmdBbmVLOg0D3NGE260LlgfltUSTY/UM1bQOhKvOui4T2Wlq2QslCyiPpxm05gWwjePQsdbrmjbgCBqB6srHZzG2K/w/NylceCS7WxbBrj5m+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717176263; c=relaxed/simple;
	bh=K9kmiV1YoGgkPe6yq/eJnEl2qnNuMo4N9pZv1sO9q+Q=;
	h=To:Subject:From:Message-Id:Date; b=D653Mhp1MXDU920NLOrofL7johBNeGdUE3XbC3C1V4dMkEKuXBu1uH+LdYxmtbSuHgmScTBOUZ2jNq5nyJWIRPHjG38Kb17bnoXjs7FkcYaaVK5OLFZjhW8MZ2FpwNYG9/pO8+muh9Rpz91CueIE+2sa8UiQGcCKNW8A+/7NpyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExfCKEGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExfCKEGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF0FC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717176262;
	bh=K9kmiV1YoGgkPe6yq/eJnEl2qnNuMo4N9pZv1sO9q+Q=;
	h=To:Subject:From:Date:From;
	b=ExfCKEGMbUz5/qx16UlGZKaHHBXnQJVFv0PX0qQhpIPVVsWZqaMaNher3E0CiA4cd
	 I2JIzmK/97cSJl1DxwDvYcofG64aqVFyg87pArAQkrZgr9FT1G7lVlmi/OS/gH2Jfk
	 T9ZQ1BCe/CxhL3U6OkTNacVWc0YjnUzj/LUNtIE/heH6ijQ9mukuZeFJktzD7Xa03T
	 vGmwPJjY6U9tW3qBQ74icLfr9KC2+TLmZSEgkNYORq5VAEpOy5ciMFFoo+3USh1dvR
	 CSLT2U7abKFn0kYTyXE7rL4xUw0g3JMpqbcLAjs1KvnCIAMGqIhUmoU8Fe+9ARzf2z
	 vV37YB5Z6VLFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD655C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171717626276.32023.3421766571373271512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1ca8fc3fe092e2f30e88e4724d053ae574ce6508b5172edc178dff84e5b7a9
Date: Fri, 31 May 2024 17:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717176262
