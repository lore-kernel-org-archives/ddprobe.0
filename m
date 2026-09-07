Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD453F0765
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788753034; cv=none; b=N2cWbHO47jzkkQKcw0mbxdcJlSCp9IN3OEmdD+YdjYJRDBn3Uo0g4UZ9uTVg9JGYv3y8lnsKlSTL8HVzyyZ/l0CbD+YmbNvbXJ42NNB+jADg0Y25QElhL5ugFxS4ZPmahpy/PC+faiuMSZ7T9olTfgL08Fx4DxgG+OUEEF1+upI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788753034; c=relaxed/simple;
	bh=37zqFidx3/olLag7JHV9o4+Tpggdla8AhJbgCkOjlNk=;
	h=To:Subject:From:Message-Id:Date; b=C+Zer2jtXjwiLkIGvngFsjDqalvJu6pNG3AQ5hAJkP6N1VWvjbce6URA6IfZ22sqmTHrqdK0YSrXnHMfPh794cD/Jn8K04mE9WB9Il37VJOlIBA2PrWbHgYmEebt54CUs4n/g6o4HynEY97vqlNK8mbMHrTugChgpoIOsaMySC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHrMh8K4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHrMh8K4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE101C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788753034;
	bh=37zqFidx3/olLag7JHV9o4+Tpggdla8AhJbgCkOjlNk=;
	h=To:Subject:From:Date:From;
	b=MHrMh8K4i4Kk6K8h6I2oD2RMW36TUI73ZJQ2cSffh1SJ6xqZ7sIuc5Tz8Di/AW2ZD
	 f/t4Mx4RGlKGyVCUdinlkmziD8GrZOQBfiSgkg/mU8Z+SpFJpzc9WFGmIRHxa3ybwC
	 ImybHYdoXwwwe356YQiy3B3VnD0VdRXD6VQRKlY3cLIz5DgyHAy3vqRq9qzJhIy29b
	 97OkyIJh8M17E1YOIB+SH5UKb3IMPvSw6VDPHS5WbIqxPRw+nrkjfzb+4mHhykRkSk
	 CPgemhyUWo5G7vq8RyCwlG3yb2g3uu5cc0VmQS5iSCFV/O5VzHn0HF0qsG9ZVGWvrj
	 PLqLpvrXr51jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE985C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875303369.23909.10924844618686337037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11d184b94d81d148686e5d1b862de1993e136e0458909a4f5c0253da82db562
Date: Mon, 07 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788753033
