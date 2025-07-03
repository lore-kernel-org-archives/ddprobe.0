Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDEF23BE
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751511594; cv=none; b=V7F27qlB8Q/KEgbv3oRy2XMPUqUqpkDyhuqG9qt/EXvx4IJbOIwom1431cJ/diGX7yW5jr0vV0h95hWAck+JQmUKHfp4Lziae4tVkly78Xyr0BEerf8kXLSKvXBoqK0BSWpcG7HYJDxzhOAVmHGBEr/pvt0NdVifTHozysgOAL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751511594; c=relaxed/simple;
	bh=bEIei5fgUgXZ0iloNO70GQ2Gd5Uk5wYzqzepuuzYFsg=;
	h=To:Subject:From:Message-Id:Date; b=XJZXyHt75gTCMvZorOmUWo9dXVl6ifmc2vfcdoxAW0Tucz2oLBhjA74knMPdTU4s70OzZx8bbyGtF9aH+AiDyWd9lw6SmWJWBQ1vh1DmZIKq7Fqi0xXUfQK6wiL7GRnRgSIqFJvprZJRBNC14kfKOMP0fSu9S2+PuU6++n1ZH6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHbVre84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHbVre84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B87C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751511593;
	bh=bEIei5fgUgXZ0iloNO70GQ2Gd5Uk5wYzqzepuuzYFsg=;
	h=To:Subject:From:Date:From;
	b=ZHbVre84pevmp8f0NwWGC8lNehwmrQfOHFviEKGmgiWcW5RtVJUbP31wKZBFYqoBn
	 UW9aIJYJEr2NtHqCndyJlAHpnVLr3SCN4qt+5+VjFYpjomd4q70BXoUUUP11cOHpuA
	 tt66KOhfLtX3n1kO86RrLtW44717oBU0sJWEZZXcTKTYr2R/o9D9rZ3yg7JcrODcmc
	 pzJUAnp+i26CngvupYOYB9ADuGh5jKzUCoCddf3Jj4XEOzn2YW9DCMuh+Kr8RmBwU7
	 5jp93+X3rx4R3JVybio7ayakyk+q/GCzu5tzZevDEJsPoflsliC2Xt3k1WcFdwu4Uz
	 gZKT8QIMY4lzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE1EC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151159357.9931.8067733554009250028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978e733a6200943d1335d30ebc7f21865d8d1b2382fac87f6b951c359b7386cd
Date: Thu, 03 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751511593
