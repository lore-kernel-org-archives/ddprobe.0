Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018F836C0D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768305234; cv=none; b=ndjBD6TnKOUPCRAy2yprpQuRC4gxQ8pyEPpSzaRgtLc8aX0pt8EBPjm3YzzzoYLMqE+wSNpinD9xq3MGFNTR0pyVpfkfq+QNRGMTnesJJS1nUcgxV+N27bh+fFuhVViaNIy6m5Yn50SH2ot/9+INNsc4UC9nEbUTWBo9HKvXZ7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768305234; c=relaxed/simple;
	bh=26Ruh4fvJax0SvTEsCqoWu618gXYgpEWTqWf33/TFE8=;
	h=To:Subject:From:Message-Id:Date; b=pVJhKLj3NDk0OyOhRqGSdsnPHnCuJQ/Hxh5CPcxo6/Sw6ulzzhOQh7bsPwx86d6xTNspAWpc7pKjKRVl2fWi0eto/9ZInC0FP+UYvO/8I2U8/uqP3PPHK5o1Oxr9FAgVh4iW8uUjScH5W8vZaRzQDE2Wsbsa8u1fgtjd62V7wTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bqrauw4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bqrauw4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96DA0C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768305233;
	bh=26Ruh4fvJax0SvTEsCqoWu618gXYgpEWTqWf33/TFE8=;
	h=To:Subject:From:Date:From;
	b=Bqrauw4ZXHQu1/E5G/iJRSVXFLbgWXGjed8E0/gSQf0NQOqjIZJO6iYBbaH5HPvU3
	 Z96h55dB9O2i5HtYpQuGM2JB8Dp53/o4hcUw81bLQL1lhk2uoQ5+t1ZE7MhJjMFB4/
	 7Ps9GVn4bdDd24zGdiM2J8X99eMYa4WY4KtjaAg1d6W/gTObktETl+bKNeZnEjo2N4
	 tuFltvmFFAvyjvrKCxvL7y8v4xur2z/XND1Jh2ZMIk/yRPJ75ykZ5l3jYspZxP212y
	 WKV/1WA35a6dH+lZJKy3o0ysR08fitnls2qmp3s3Ggo9vyZ2k3CVV2NNKYktmlxXRA
	 gMGhDTMVgE3AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8ACD2D0E0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830523357.17508.1575270780734775520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41387739444ed505769229a386a18749f365c980bf85fa60801bc2d28b85e04
Date: Tue, 13 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768305233
