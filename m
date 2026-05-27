Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7511E32AAA8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779846754; cv=none; b=Hh9HUCN2+1as6CeZvp/pUxDT8q+E081To+ZBW8nbrMsIW/BNzzPYYxhOK9OL4QS9KsJMr3u4fCkmrmA8iTjlJGZspL0JBQc8Xx9fpzAcIIrBQIwQ7rL4bbvbxYXPtYT3sevg30PSjPOgYzqH+cTBkgk0c2CyHgcwsNp6BcqYQlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779846754; c=relaxed/simple;
	bh=2P8lgl1Y11PCP6LezfnDBJqL7Rbm0fc8ERU7CIu/q+k=;
	h=To:Subject:From:Message-Id:Date; b=iwxgV9byNeaUXsceE9qPMFcRXb92gYRMvDisGC/pgN2aRxqa4/KRFzxTzyqX4AFE+fmRDRgBo1nADkqAoF1JeG7AJnaIm953gj2I45H+jAO5669y8Ou1PvdcHBiMA1XpiYQFJaTnZ7fZ8W1LJos/FGO1li4VfiRjTfBa672ZcOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5jb1Os8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5jb1Os8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC907C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779846753;
	bh=2P8lgl1Y11PCP6LezfnDBJqL7Rbm0fc8ERU7CIu/q+k=;
	h=To:Subject:From:Date:From;
	b=G5jb1Os8ahILIS9vWTKCFUzMWSUs5O1py93gOPrzGCYSJMUDINDU9loYigmM61gc3
	 O7g79Nf0gSipYyBraTTiOdHizjN+BtaYyMrqBB240AILo+QJ3y5SsImKVeq2D49jt3
	 ajo7jTuNTCQyld0Fd46dVWcqbUshxpmL/n6zet8kQ3leRFKWfp57FKgUcuSMUH/id+
	 X8HeOs5XCi1hIMmaBy8rjBCrz0Q7myMkEE5NejaHmHOhaZpKW+xYXueS2WETJj03t2
	 gWca/d3vnjjES7rl9+IYlKqFVFaUHwz+Fl54h47UxwY2JN9RhBuLl3Q/ziadYrWn8f
	 FuvHrJInc7Vlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8F7CD6E43
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984675369.741.1912022183037058849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ba22efd37012e6b41e9ab2b9bf013351270426f3bd29d47b4c8693abb51b50
Date: Wed, 27 May 2026 01:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779846753
