Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78FA37B
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726566953; cv=none; b=E2BxdkUlyGh7G9Y8DU6Zl+/uWQzXBCucLg26KOiFrfgv3rQQ80FVj69kmZiuRnP+2FHnDc7QTIfiCxYFetIBpn/rIYZ8VshMdmhku3SgoSCP9z3FqThLgov8+trIJnLm51Bh+b9NXlkmV6ViWptaYec1VPTg/ZpSip8lwNUqHtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726566953; c=relaxed/simple;
	bh=FYSzVeCC5lRoUzJVJOcItA7x5ARPQ3TFNIpMtYPzEdg=;
	h=To:Subject:From:Message-Id:Date; b=rEftUPeLnwgL9D2/L8JgFOOjpCMp794nIrH8QnqqZXwkEicgh4MtO0dd+yhDRkexxi6DiFVfQir9gCxkDVlrMr1bAB2KZFY+yzxddMR5MhkZEPkwnpI1HHiEIOgPtl9fAEPGMuJl/CnXd8S5u6P7SohH4mLx7XDbBWmIqtpwmBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPmzWPnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPmzWPnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4583C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726566953;
	bh=FYSzVeCC5lRoUzJVJOcItA7x5ARPQ3TFNIpMtYPzEdg=;
	h=To:Subject:From:Date:From;
	b=jPmzWPnNHUR4F+0YgjpsqbQFWqiFhrBqXxg5j4iUNUeZQ9Ea7QjSAMKpTm/iv0XBk
	 a+pRIRO6HMr85cQFT4uoy1SmWlpSK0Vb0ZdzIiwohFbt6zk0ZPOVbKGPYyb6esFUVE
	 4CXCLKF1ui51S3JF1rVULiiYv3OAfrN2rIme2wH3pvZY45U5MPWt6wWr6pptCK0Bld
	 xYuucPcfN4GD+cC3UYw8rfttj6tETI5h8e7kOJuqEm0CAXbTlxHBYuPlSi2rU2fVme
	 irnaeqTUOcaAGu92iWUqwSeM3ZwLz5JIe4zix1pAmsDlhCEB7Q7yIwfMZ2NM6uCaOh
	 u3c4kWjp6gGHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFAC36002
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172656695358.30966.12275010695488319314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c670d2e5294b6404acb6d3e93f075c799f2ac9cbbd45fcb407ef29a7aebe7646
Date: Tue, 17 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726566953
