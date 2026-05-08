Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDFA30E82B
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778266654; cv=none; b=YErftx7ThkkPjma1kxTQKDd8dubQOU7DJ2ymcrdlz6mzAit9rllBodanHubSR1sKST1vQiENNOesgKXZNLf5+pD+9l/McUY8OpgGUhMmWLX1ce3pbdpM8iwwr4IoIYd0r8YZYMDbmEHvkwYFdwyiyjLgwVWiAKHVVE8wo11ZuXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778266654; c=relaxed/simple;
	bh=xJEeVR8DnRRPeXn/XKgHt2rT9a4aZuk+/f+/9JRahvM=;
	h=To:Subject:From:Message-Id:Date; b=X7bQYmtLY0CTyifacpTe8IN8oGV4PkvnH8neznxlSJ4qzSBD90MxQ9KytRrsKsC7MRy3nmoQMKU6UAeJ++lXWKHeS+kXd4mlHSGxFN03cK/uPB5ncL4pDZbtWOZVxKeABVwwoUz6hnZ/GcuHuexqoa2DpcH83bj0wAtglBq+bmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEtjpI9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEtjpI9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2ABC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778266653;
	bh=xJEeVR8DnRRPeXn/XKgHt2rT9a4aZuk+/f+/9JRahvM=;
	h=To:Subject:From:Date:From;
	b=CEtjpI9n0jVuWrgrXwnjGpV1hxxvJ7e2uyA35yDkzR09KSNUTNK2yO+SgvHaHITjN
	 uP6D3kVT/ScG7q7r6lR7iZBeMsJUqFeApmKkK38Pp+j3v9wS9LEw0n/F+rqwpCkXHW
	 mzahgK/aSK6jYAp1ZXlwARw4La5CsZTDdoJbdDva9GwocZuxK+Uf3p1reBCjPKaXC+
	 sq0YOFFekfaU01mZGQQTGCPsETiLqv/eYtlgwCAQ4w7FESOSTDO6mcM4e8Diq7PSDd
	 F/RdlAWou0tqCgNRBF4ACb7IhYZjUbG64ainTPE1dQ72YZ4hvFlLuBn3UnEqW7IlzE
	 +T2WQXZb1msbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFC6CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826665369.14062.650993544438783446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69abecd3196e099685da8cf1a50936456c798b701c0a926e1cf3a3c84a3bc03a
Date: Fri, 08 May 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778266653
