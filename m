Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2805C168BD
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770413034; cv=none; b=gtnqrwghxhM35VP8m4t0EyxUW4jL5WMkOKm9+mPDKnaRaeMRsdTZut3hn4LomLD7GqpRGiL6lfN66m1BrPJxxjL/3CD3r3KDEyEUTIYrX0UCqxroVcO0zFuPkl8bTV2yiS7P196BAeeFPE3lbWWIiPPymu/8x8ciLU14XqF4N5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770413034; c=relaxed/simple;
	bh=0pRjhkydFoGynTIYygLqHcv6kRWM/RQNkfa3UP/OgeI=;
	h=To:Subject:From:Message-Id:Date; b=ixOCBxf+sYI5UZ/IMcNUxX2c2PIDlP6djhJXOj7AIOgi39CRnS++unJOyBs+EKzcLDeNRnli20paNL8AcYU0ZnPDfuuH/7tYdHDuUlGYgXCL24FNiu7DJW9HpCPeDZlk8aF368aZf9dr/N+pQ+Y6vfO3UBAZnFr1KvlJpYf2ikE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2Ql0SDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2Ql0SDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B026EC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770413033;
	bh=0pRjhkydFoGynTIYygLqHcv6kRWM/RQNkfa3UP/OgeI=;
	h=To:Subject:From:Date:From;
	b=i2Ql0SDJmNtolxRFn0R3OWoRFYEjQiiRRKef25A7t2rwLcEejqiQks9H84HdTR+al
	 IZzhyauQ08FeZ3bb0jqZQ4F1ywoeGHqCW9dgu7TTjWe/mKYZtUi+T5k5fVlYQqiDT1
	 r2kv5eaEp6fbO2W8l2FTB3jXzP/UJ1Du6Evv9Ak3cYANNEbZYtUinVhpHMSfAInEBN
	 992iAslDmdjN0kIyApYTHNlqgVV/pQUuDyCON26SEBb4RdtY/o+W7iKWRHxG3CgyR9
	 kPdmS+zQmtUn2A2ELq+mdMWyiIqMcs+W77YpETg8oWDalvGLGrInxv+tUsJ+4LsVoc
	 AD1vBvYf9qL1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B06EE6B59
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041303361.31594.18405953186279961335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0418e4b85d246119a3eea41f934c14679fd0c0bef920eb3f2944abfdaf42d812
Date: Fri, 06 Feb 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770413033
