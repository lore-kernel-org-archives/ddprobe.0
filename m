Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60042F6171
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760107793; cv=none; b=FnINujceeNwIg8JEDsXtmXqO7YNBjQFdeUHVOeWg+KnJVoGpG7No9hMcgZuZ0iEQsmW/Co3mIaxj+cjpY/CuOtr4W3o2xJQqU+aVakExVhxJB4n3LvX3TvEOsMyKAGAc6Tqy3yIYjw9HWgng29oR2ej3yE2V0MmqfQd5K4cZtWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760107793; c=relaxed/simple;
	bh=lDXefqd3HC254hY+G8kdi73IUZu7JQSojklYlNLbI8Q=;
	h=To:Subject:From:Message-Id:Date; b=RCa+kPBmn3w65y7CoA9MLS4ewSM+0aniYP2Kymxbns8K9+YBoFP7B+A+4GcwjgOlIaPo846GV0aAp2w6VdosxQ7uF1hjIQd49vHBLcA9zm64G2x+OFsWxZORwUu79gUPVvyyvt1XXHVaAV0tOeBjAkHqsL1SekK6L+nhKIzbt6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3zCpFDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3zCpFDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5629C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760107793;
	bh=lDXefqd3HC254hY+G8kdi73IUZu7JQSojklYlNLbI8Q=;
	h=To:Subject:From:Date:From;
	b=t3zCpFDgG1/amBUTLsEW1zQtkWLNQqaBn5WrcTmoA8FUSGnlvyjpMbxFUYbV09I+H
	 vRvvoUFtmNxmmOPVCJEYZhOWzsO0V4G1J9mSFnoH1e0owJ1c5SwZJP9VXTOqVAUNi7
	 u7SK+KnUmUhihUNcYyeeousG8qQgoGSEKwpxRst8LG6GmYetzufK/06GpHF7wDa5p9
	 Pz6SQ7Bg7IheVZ46vuZbG7PqY9PnIhQZAAn4Og7LzcnEh2C/IO2ZgBeFL03HuNUEv0
	 B3nk4gNgp5NiihrS7q3kQaGepo9+FW+AIOQmiaPN4FKPvFtI1DezdG3DMCXHxEHtr+
	 mYFPp2tDi/3vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96317CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010779358.20035.11597922223976541328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09cd1611e3dc14adfd5c4e758cfe71506d9c8a8d40af28abd6cec882075c981
Date: Fri, 10 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760107793
