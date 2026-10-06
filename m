Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33011A95E
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791245434; cv=none; b=tdrU/GsLZDJOErfAZwYYvN9SwXazIbKSrBqyjFKU+3smYKjpzwKq1KYhKE8ByW5mg30EakupG1fgqHG7ONReejETBGYOysWESSsdqIbTgnmb3smBV3GrYmEjMi2f3BQV3VYhEOlph3EtKdoBarA2RqqwJ67ReAka1uzYs9oTwQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791245434; c=relaxed/simple;
	bh=Mzd3ti0AXHyhX5AqOSnT3KdCujCyl8I9MWmTFvB5A6o=;
	h=To:Subject:From:Message-Id:Date; b=nvXqv2I70n7XmbiP5iASZF0YMRRLp1jrwxbNMXnqB6y09WIMovCan5lO5cW6VSnILjMMJg366vfYK4HAHrNv8vCDl/eg1kpYeLaE4C+v4w1k6K7uiSE7rPaJPzctCd92Cm1eql4/QKmLja5V2goG5d3PLQt8+4oGOlVNpR1X2SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbWljNXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbWljNXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5122C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791245433;
	bh=Mzd3ti0AXHyhX5AqOSnT3KdCujCyl8I9MWmTFvB5A6o=;
	h=To:Subject:From:Date:From;
	b=sbWljNXW6B9jwifwzWBfv0FT/fC2AWM9+gRQXDu6oIbYZnf4uylrzP/dTTpOwXOlb
	 AaEAbRRWHYNLRjD9JyEAkBtcm7O1dCWVsJbkj9KjR7lkDWQZAJ7+Ayzem62uel2AD+
	 y4wB5zW3jmwWUtJhYOcKwWrX0NRQPgdTQe52L/Fzhs6mi8p+vbGHLYCAgfokvJc79d
	 u8FQpKb58DjvHiWSG1FXR+X1bRKx8oLDcg6r9te98zPkLraVhx3gYL56AebHA+1zgm
	 kJThhlNgHTmytxTXEnUhIoTEjy7PPjJNoJoFUkG8NDK7glpaclJg+4tqt+j0Pwaqxj
	 iCqOVq06gJHvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC879CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124543374.32459.4558315072626379600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3043282025236b795fa42f424fd7b1822cb1991d1f334ebc60f07d9a4a98f88
Date: Tue, 06 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791245433
