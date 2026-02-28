Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0262EA731
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772262894; cv=none; b=FLd1EUj3H30l/n4c4aTMOUsmJ9tUjtSTFe4lUeskiiCcbouWtcGqoET0Se1lHmwf/d7K694A9xDU7ruFjOsltlyWBfcWkU/i6gj1AIMjKyMZRKkhNArZWV7Q6c3ka13TAMa2QeL8t6nMhWlm/jfqSG6V4mGsSGGeOlwBTteTvms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772262894; c=relaxed/simple;
	bh=uXORzmTvuhxKp/IHB24pQTV8rlRuC4S3+lep6oEXQJY=;
	h=To:Subject:From:Message-Id:Date; b=Ux3Wt9rzlXiPAhgGxNF+VuEazm3NeA67tcnAHtc9b6/6LbTlIJYOaoksBK/ag5fi2U7945Vmr92ic5QwH2j32xOaHlEo8GcJbMcXqtwB0nwsawqQrP/NWwNNlif9xQr2nWA+jU0MjhbtivbGJC7lC77oG8TKxUMToSVuuMvbDpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBK305ld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBK305ld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF234C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772262893;
	bh=uXORzmTvuhxKp/IHB24pQTV8rlRuC4S3+lep6oEXQJY=;
	h=To:Subject:From:Date:From;
	b=hBK305ld7IclfI/0QtyjnPAIf5M6Ar4hXzSeEqWybp0VaH3WFr0bjafQbIB2o0w4B
	 uh2SjMVyalELBUjpWvPj0KbPBygMRY19h1gkWpqKTIBiCJDD/UzUFwG9AP7FT7hHcx
	 HgTO5Yu7ZGARU/Q12o8eKiMGJHmYjpi4PBKH+qsxE9VGoHhPkZnFIiTE8lqQNn8wi1
	 BHOBKSC4PD33YnM6p9I5Bmdq0H4lYPxtjJTAwFU9B9Pa0fkU6ZyYTeBII8AVIf+KPn
	 1fPTQvIqIzZ1fW1AShylUG9nC+YqTHvCfRWZ2gt1bVezXo5ZntztU4Sjy3npRagYLV
	 wwzPs/CVeQDuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC551FEE4CB
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226289358.16558.6363180639665095112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a936ff728705902c487255824eec4021334f9d6d9f5c91832bca3f915531885e
Date: Sat, 28 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772262893
