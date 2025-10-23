Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3898E27F00A
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761263394; cv=none; b=OHcUba3daml5bbNjw0vL3WtybnWwWBbj8T9n/7u7mnpa+YKIs9XX5EBuSIdASy0AInfrDm3y5znu14+whAVd7vspn4wz4AzyF5ZAsPDvh+qducGAXwxbuMUor6OrYrqg7jWZWc3pg1u19iLGwbbRlKSqr+F/XkzX6B1WDJMW76w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761263394; c=relaxed/simple;
	bh=ikOKt4XxPyrHJlbgtZtKebCGpKydraZ7WfEJGAIVmrs=;
	h=To:Subject:From:Message-Id:Date; b=SV/TCmiX2w4fQJbYI7j70msASpVuDeasPuaeqiaAsXAInPiysrvIENx+CFGxe+1Fy0ZmTfnqXDb1/APZebotsH2mFscVPpfeWd2bFKyewE4lfq9BqFh6MY6GICtibQSublybTqJMnR7mPncjtwL7tm9+qH1YT1puPZ0FyojUI6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRSHvKBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRSHvKBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD731C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761263393;
	bh=ikOKt4XxPyrHJlbgtZtKebCGpKydraZ7WfEJGAIVmrs=;
	h=To:Subject:From:Date:From;
	b=VRSHvKBr1zfWZWB9W35B34Y/heLvi2hob4PpzFNw+lOieLbR/VvyavqUGm8dnOjOn
	 qIJWF6SbqmHoEo6kmvp9cHy2AfkOtWIMm4SHnJREUniml1bpxq0rQsZM5M2FCOnuCL
	 fbupU/E+0FbVHt9+gdk6PBqdbexXLiH8kWBZI4qoRkO2fbNVoSF+dLVN57ahEDsxJh
	 4A/RzQjcTYwg32h5FgcuSACJqai3asCtfZT0UJ58h7w3Uby+pA1mw739ZJpFLx/EjK
	 ruhU109Ck3ZSxOex1LNF37kqhIVchQWi9YWUZFXf6HBUhYi9cPhpF1+GVFUIprUS1x
	 RlOfe2BiKEbNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95425CCD1BF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126339360.24204.12134630950594089288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0474c7e852fc8ac9312505149b401e7128ebae785757c409bac0ec39f4263d94
Date: Thu, 23 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761263393
