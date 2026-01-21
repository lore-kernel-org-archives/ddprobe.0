Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2FA361DA2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769018034; cv=none; b=T7DmXSx5l29UWzziopICnoFY1OjCle1PvoA1NEibVYakTiPWnD2hm0RYcP96m497j9dQBNxXQFqoHO0M0TGN+2AzJ5gV7HmwTq+MiGAPZfKxhMkETEuQj1lg4/7dSzdLDZPEywKgaXx2OjK6XPiDW11L8vcqWftve5lOI29aLV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769018034; c=relaxed/simple;
	bh=FtJeH1XiPFI63cmCepSDVmSctAb7BGN4I4xwpbMSZb4=;
	h=To:Subject:From:Message-Id:Date; b=tNP7btJbzfNltG/Aeb9jtUWgP8EgrVMGjJ+JIOrpbwxDFvk9EuKV2rOX0OuB6QcCgEHLMP/kno3JDq4CI81q4wvokvFJ5YtiYfyFYt4xYR4kAHcrJbqxCtoAGTgi3xW6Xu1CxuCbsXTQ5aUEkUM2MxqY7YeBs60BA+ebSCifijc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZg1gaMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZg1gaMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E31EC19422
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769018033;
	bh=FtJeH1XiPFI63cmCepSDVmSctAb7BGN4I4xwpbMSZb4=;
	h=To:Subject:From:Date:From;
	b=HZg1gaMv257AsGY0NyRnFy6ily+mKt31xyFts2DrqJ13yJcVCIYLAQTW9GvuF9fIk
	 G0CUZC/AwtGEKhDuCM8+5OzL7+s2cmZOfobl6QHfB5NLI2/WC4Fxqq6gL9EWFdM3tw
	 hZjqVUn8Nr3U62TVeMwar00ZogEhR2CZx6Qs4liskhQVeLG8ljA+qKjhNMDhc1cxZa
	 WO6AJrxYO3iUMnMwSvLonr2IR/GfsXAib/eVQpWuPzfFzs7uzeFWKmRznd4pp/v8bV
	 p1LmOaEbo4YvkCnfliglazTySbeXQq1bk9jcG0R/Sb3I8Z/JvTDzvowkeMjueIxsOz
	 +QvYUXMiJZrsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90177C44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901803358.9448.13569541751048787353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c35a54e59bc24b206a788a7a43459486c29f4ef12123a2bd5abdbd9d4e5573
Date: Wed, 21 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769018033
