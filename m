Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644E416F834
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715099543; cv=none; b=iL91Oboqg0d2HXHM+N0B/VOb2Da4PYYZ81gyfv24rS4PDsJfjXmS1yfd0BAB4CRU0roBlhAIkLnbkx1OU+5GYTKn5u1Xy6ucIxeeN/mkZSVLUP95jQjpLh4dpfw2by94FFQnDcZybUEXmh4Qt3A4iuakuabhdR/hhz9LsofRwBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715099543; c=relaxed/simple;
	bh=MBIH/IPIhCjYRFsaLdvQ+UxtXoO34zEF8D4w+XPSAjc=;
	h=To:Subject:From:Message-Id:Date; b=bPcVVOyFIbjMgnRwi8CRYIMDSfNkFp/lf2ZE6L3s1WFfSeE7tDfU9wWbNfvHQ2/TzE5z5XJ5O5vH3LhSVFI1MO9lsRerQQpeQi7nrvBHAhlvAll4jcIcjJAijXFJtNLqQqVRtBSbjTrp7Bfg/3XevO7dhPGXPdnqJFvQQ6mfP3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+ObOP15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+ObOP15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E82EFC4AF63
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715099542;
	bh=MBIH/IPIhCjYRFsaLdvQ+UxtXoO34zEF8D4w+XPSAjc=;
	h=To:Subject:From:Date:From;
	b=P+ObOP15YSkuRWcUVztwnjGaPp9bw56kKwIhzPd4GCZVGjuQbH2GUKQljoxltAMiQ
	 rdJjiOnrF5ZKPMVpr0xWTRanMctMmttbNhzX57aRWzJ9C3SFFbz4UKNVPwSC+tr/9O
	 0kkKRKlXC+crn2xDzORSRSJRjSUfFrOkUr24ltnzExn0RJCXID81Tb9G3rfpGwp2ou
	 fxIeOXYuDFXmFclUyPV4T2ScMfm/OB6LGmPIH3jXPbUH6V6xHwLAsFQPxMlH0OzY0s
	 NUdEyEh0YkStOQaM3o1P3KCCPdUUQUw/8HKdZvMIYuobLUbZvt7erKO5gxH1U8iQRL
	 MTKWSwpakGAfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE20C25B5F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171509954282.4130.16442997398130988648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad7b6f0a8a1492d37000e39d2b17328bbc7fc9341b7018fe7553f2e468e5b6e
Date: Tue, 07 May 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715099542
