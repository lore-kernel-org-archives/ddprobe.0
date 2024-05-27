Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FDC1607B5
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716842663; cv=none; b=ZDf7Y6jjndPFO4VHjh7ejKJVU80h+e+UUnFb1DcAXTLa8XLdqoKcwBdnfscANjsVmJMvlofnx5pZx+oc2nJ/m7lvDdD+dekWv+KIYQhnijxrrPmniDS2vl5O7luB2YEQ6NwEwQoVnH/tSUg/p6IZAA2szckmERZai/p3AYnOCRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716842663; c=relaxed/simple;
	bh=vrM2nc4v6U1HPBn9OHlrnoOz9MLikx2y1mznX6QkHB8=;
	h=To:Subject:From:Message-Id:Date; b=Ce0mQzKiFcaAww5Qoo80BVs9+WefSKgt3A8CWhRJOFyZT0ouo9Z70qrmiLyAnFNXy1MTAUIACGAXq5cEt6mwQ5jczhzsKkyzIl2EARs9n2d3RugQriYb9ClHS/5L8IH8Pauzc+0ZmnsPmckNtZA8fE143+K5Vr32G41THp4rt5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhkyLUm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhkyLUm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45FEC32782
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716842662;
	bh=vrM2nc4v6U1HPBn9OHlrnoOz9MLikx2y1mznX6QkHB8=;
	h=To:Subject:From:Date:From;
	b=QhkyLUm/f5kky2NyXRJjxz/UpepBWG2fvMBxHjIEQ+pCdf9KSo+B7k0s8Vah5e181
	 vR+l5mkViTAwh6mRIwcuyEd4FgvmBGaJmISxqmp5KOauEGoNG85sIc6kq6GhZE92kP
	 PwXGZOnZF3joOEwd7UTGDPVBRZL1fnyvwjxBpZolQMwdm4yk3HKf2iHw45Cg48zB5f
	 0sAQGtVDUqQPqtP553hjov0kKHn5sfffCcVWCOkmEp3c3q6tpZ7WRnBQp+2ECtZbFy
	 6YrsnJbpL0LmmODBW0V/+QQYOeLpaD+uNUWO498uTbiMhwZ5jYKxIx/XVSCDycwWQ+
	 DEnU+3Q6LBtCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB00DC41513
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684266282.9989.7079623660191799896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a071401549b8d42ec01e2ff95cd74aa6bdecd0223aef677533e370b6b3fa7cc
Date: Mon, 27 May 2024 20:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716842662
