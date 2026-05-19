Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C1E40963D
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779197434; cv=none; b=iGSemYPbn6sr67injw74aK887kG9RRmmTY1pmGeHDue4DbpWevyfuYuvPJyFPDPGpIkEGewRKdX8N6I/vNceVdke0+O7KhqsFpVtl2i36bJrpsAHTz0yOpJaGDzYxk0R/M0J5ypboNK3DeR5nAlKeTJdvvUg5p+22M42PKoUkhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779197434; c=relaxed/simple;
	bh=0Yott1U1lhrIA/5Hw47tA0ArmMbtDdTaTThbkoMI7Qs=;
	h=To:Subject:From:Message-Id:Date; b=clkW3MR3ZN33PvE2N1gpmp2GytlHQJBtR9RHe4RiqS3NHiHwmuq+Pq9BZ5RVeJfwB52kxiAM/stbi9YSE8QBzuizdFdsebMDUH8Uw9+GryxA4cQyu3brIFD9YO9zXmdl9YVdRhYMHR8FgHoLxZN4jacmrGjRrH+IEw8ljMhlf/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2HSla/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2HSla/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE257C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779197433;
	bh=0Yott1U1lhrIA/5Hw47tA0ArmMbtDdTaTThbkoMI7Qs=;
	h=To:Subject:From:Date:From;
	b=T2HSla/UQc7+oKzKbgTqDUMpucQuSWsszi1wo53bPY4d5liY/gqtSlBYpgIwkqOu4
	 1QhAD55poAUcZc/lZIugPXVilRH1yPaJcBfdkezQJOVePlyMBKNl7y+dFnaR8x5XJq
	 xOxfNFd+0wiYN2qmrlddDuCatsSBcw9PUhB8WEIlaoTyVbu/1TM67zFt+dS3XlGh+v
	 5YnCdnqyOlqTTkYpiB0y77n//C3wIkwbjYJyZ9aqp/oSyMrytYfdBcENFz0QufZNAH
	 RlMOZ0w3s1uMFS3bmqeHVoQEYjSx4aYkg9l7RJu8M6JuuPHvvknOgpgBnXcL4iU8A8
	 IqU1ry+HNu9kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD640CD5BA4
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919743376.3859.9629451670573715730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd4e7b36a6dcbf9fa19f76ba119d66544125db8c543ae6330ea08feaee9fdf7
Date: Tue, 19 May 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779197433
