Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A58618FDDA
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733440554; cv=none; b=grjmO9YPWwL222S29eNoD55o3DZBPixsYSO0rpWEcOZO3WB1GgMFpVKqzotfoLHtdjZNJwWZKKQcHPGjaVnrZm4319oY8hD2VFoiISMZoRmnb/OAcgxcd/Ck17WFy/cJ4p8ZbQPyk49ydkAc7a4fS0kTH8bw9hfg5DdM0EnDFPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733440554; c=relaxed/simple;
	bh=SNJKdu/dOyJzBFubrNp8CIssFZN5FaQRQKSwyqrEGSE=;
	h=To:Subject:From:Message-Id:Date; b=M0BIeTN8F/0jw7WQbCV4t9oJ4dhAeA5XrRsQ7fu13Sa6DqGupi7xeO3jCXBpBqWxEzO3p2BkAoBZY/kr9TyaEnprp3jW8ttkyJ3pVEwfRRdve3IjX+jojITingHBpgRpPYkmvNeVtYZYNi2XukrQCnW8Au7OoGKXT416NOFj6Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1UWkMAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1UWkMAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D8CC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733440553;
	bh=SNJKdu/dOyJzBFubrNp8CIssFZN5FaQRQKSwyqrEGSE=;
	h=To:Subject:From:Date:From;
	b=r1UWkMAkWYBr31Tj7u3DCnCl0HHYvuomtmQh2kcsJ+mKXQ6lfUL7wSrabQ4EDcZT5
	 HHR7zYuF8pZGKs1h9o6YKC5c04uphJVzL9LtqwgPQNmcEJUo0OvNec2MLt7DOs/69k
	 ukYyuBapr/55eiuQjbJ/YkqoiqFrlkUgoHn8Quhnwb871oORPkOSjZuePCwbxReJ8d
	 j17sPrZGCUnx6ztjBGcwiZR9i7aMLYv8G5//57qlA87T3+cTc3IaTyd2Wp5y/SOZus
	 56NLLs5FCPJhrkWtDM/SShvOB/eBknoKnMjfBy9crdP+DJhE2YuKj2fJ6muhtRa+ze
	 Jve1NqKc1fWVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7B7E7716E
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173344055363.22461.15158689689722164271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32731c213d6e7f552f77dafd0906418f6e7b66783b37858475e8a63db97d7423
Date: Thu, 05 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733440553
