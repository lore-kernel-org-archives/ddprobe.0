Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121D82376F2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751270394; cv=none; b=Jbrul639O0FsVb4ygfDGWwbYyk2uUNH3fxxyur9ssMjkeCoFDH1n6BhbwTjA0vzeG65dmp+5Y9f0N2hvCTQPfT0epyxVSIZBkr5gfCchs7Twme6eW5af/+8azJihVkn/gPvUbW2kJnfzdqSb3Idg/uxMAqFTm2akX10fliGhffE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751270394; c=relaxed/simple;
	bh=OqauCUgLmUdfzRWQZV7QLft6JIbg3tGnDdLFfLJBK3U=;
	h=To:Subject:From:Message-Id:Date; b=CMJghxH+vAQixXzjADDspWL+LrZ9ZtjHkfXn11A+kNhYW5Ny9fNRO+hkB56aRo9ndxxQUmqqvaB8ChnAqKl46LFHhwR1O5Za3sE7x7gBMBI7xi3/hEqJOltZfMGnsr0OjLoWR60YfosNdtTyYbqG1kbh0WlomV782ksEUl+v4XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NclHnfHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NclHnfHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF30C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751270393;
	bh=OqauCUgLmUdfzRWQZV7QLft6JIbg3tGnDdLFfLJBK3U=;
	h=To:Subject:From:Date:From;
	b=NclHnfHSaxCTpa7111ijw9R9iTFUdkJCdTBroxAfRgL/WW2p1WmUXguL49gVroRIQ
	 mEImQKd2cINpk/gkIlyVxZ3fMnznqacjD0I18IW8w2T0fWYOzHzS7HkRncc4+EiEc2
	 JAzlPePYp+NLDLX4s7q00OluhQJ9FnJ4EAiMyRUdhOnoEq4BpWU5oF6TQC2krGW4U5
	 bchBJV9TlcIe7YwBs+ljNGkevyBTjce2HeP4cia/BgAFd3ro0UMddKAHlWoHb9Tu9T
	 WystDvNQSaSZivOlTZnNwjzdsg/1EV0+ZzDcPdv/CWlfJk9gNH38jhLjTQpGYkZqO9
	 ImFwnGywJljcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8FC7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127039357.20582.6209475651263689458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799eff2b8dbf4cf04fecc87d541bf20a93fb36062a755bc3de2719c68d99fc20
Date: Mon, 30 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751270393
