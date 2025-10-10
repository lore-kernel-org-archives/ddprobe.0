Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367712F9C3C
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760133594; cv=none; b=Q4e/EYEtI2DJaR8YxZGifq9OSw6djo9itdEbZry7V7wVHYDJAIEpXx2c6aQn1vlAHuBfrBDq2dupc+OVqbsgKwyiiLRqVk9IPRD8z4W3lbnU2A4u7RnsVAnLwvazUA/BhsDar2CQs8j1g3drDt7TBaac36CwdJsic1Uo/6oj8Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760133594; c=relaxed/simple;
	bh=m04cCQ8AecsA+XJuuuzvXrn/oRyoWcFSLFj0SWy5oDQ=;
	h=To:Subject:From:Message-Id:Date; b=TC8ZkG3x1aCnNcsZCB76SGmUFeBTO87zHVuD1YXt96ZEQWxpUshi6vnnaOl/BWh+zjPFA0GHi3gL+dgVcGFJK1d5fD+EMQlDUt96IDhTZaS67Yk9eHoSbNvvZ8LFv/gTnfQKAAgDKPsDP1olumILBwNa/HSnb15YKbTXGOmoxII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhmqWokm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhmqWokm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4056C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760133593;
	bh=m04cCQ8AecsA+XJuuuzvXrn/oRyoWcFSLFj0SWy5oDQ=;
	h=To:Subject:From:Date:From;
	b=hhmqWokmORu0EAx510cr2b2HrM8jotOMx+K0r4kFYLFzK41HK0JzLaq03hMzjmJ+j
	 SnV/inNzqySmcTTyT4FYn+DFDMQ8EFfvnDikI5iDw8xok3vFia19aOl7G94IzAFPfW
	 rrjVpqu1TC1lU0AU4GcGWJdCQS74Go4z+018dnlv88cC6SHmijb66c7YUYnotRMTXy
	 JgF7hOyMSpCzhm/4xY6kkam3TE5rYPVpmPHsrSVX6n15TuJrTf9JgXy9hd53Eq5XuR
	 NTVX9/Gu6ki3Wf++bRqbh4lwaQymwUcCHvRrVn+UzBRRmsD+w/FHgkoE4yOy3he4aF
	 LRTZleNnuvlIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915A3CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013359357.27582.11724276075046243703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cafc384516fe2b916144ed063f3c7f43271dd8af32692bf904a67062a172d22
Date: Fri, 10 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760133593
