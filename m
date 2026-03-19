Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0747719E97B
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773879894; cv=none; b=Qa1fsft4ixbGdPLoNEDeZxCXDoHRaAkw5O1qz0HHKAhTki6+WH0oBzlwxm9wAECXjpLJ+yBMvNZASyNuznDratioIX9FaDDF+oDZK8l2L6JpEj9GA/h4ZeFv3ysQKfMcj1StN77a3WtKiCtP/2EwXMXjgdG79BYXGkbo5JASyXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773879894; c=relaxed/simple;
	bh=fY3trKfJDurbB08rGvV732HXok/J+7LlaCY5/8vV0ic=;
	h=To:Subject:From:Message-Id:Date; b=XHT9vlO95YXwHR8RXcdqAN0TxjDm/TOnemSpVR89Yk1W4k//qbL/0lK+8MzGY8c6tmv/uqNp9EpcZ+q71CwW4y/k6GdZkkaRhSdDlxKKtndiaxIMOHQEHf01weIVB0k/wHVOEoOed+HQ3pxVKbxUKEmJkpmAjlcR8kL0YQ3RfpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQsBy8FM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQsBy8FM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06B1C19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773879893;
	bh=fY3trKfJDurbB08rGvV732HXok/J+7LlaCY5/8vV0ic=;
	h=To:Subject:From:Date:From;
	b=MQsBy8FMAj72Dt3VM2WwAn99u3moP63IINBzgR3UlIQcBBMDjmFm0ZE/EnUcmzRGT
	 5gy2HARTlVU4xHKdd5NM2b2PN8JeEe1c1lp8yguUlWYtIvf6hvKIqRCRgJGXLTdtG3
	 kkUgVatt1hKQz2LMdMFWKsKbAeS52G1pgQtjGW+RLa0H+flofDSw2mb0mq4hQ81LFk
	 r9KMHGobLmkRgLenL5VWbDSbJK5GADn+v5WlPuolIHlfiIjQhtiF6NuOLQ8hAeuNbi
	 uOjaTy/XVOUnSQAId+vVdEQUfe3mLVbcSNR5nbUUs8C/5vH91fzEOYpZK93tZsxqrH
	 q+Qx+384bm60Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFB1088E5D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387989358.19300.1061832337218324284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2c1cf5c1b7d81a7f9911a04a4f6fc284fd4170e119a558ec2967d07b5b8f81
Date: Thu, 19 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773879893
