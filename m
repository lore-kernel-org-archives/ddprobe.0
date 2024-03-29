Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1E78564D
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711714696; cv=none; b=pihNs7DREymtepWEAwjJ5CLltA3pmsXXOmpZTTQeE5hvjPLUjrkwf/dk6kcsf4R7opjwoAeK9yiFo3kGlDYYjXj2nYC92SWGkG+y2+QpOUS0HEl+MzarPuJEOXyqkzegakaYDv/Cl/gaCqQmsOHuApyfG9APzlIttBkPKTfn3Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711714696; c=relaxed/simple;
	bh=47Dbm1Y6cpjrFT0NH9gc+m2RSHX4UCFXRl72yotKL7Y=;
	h=To:Subject:From:Message-Id:Date; b=HelZCv+u0aCTc/wp735M8CncKosu8V8HYsFPwJxwNbFY+r4qgMGlAljlIHQLttwZTnquGYQrmKFjv/ZsOKE8OGXn6D06TYU7fWFcbxXyK4Ovfk4lNNuhMNq+TrUZf3hcmDsJvCpddoSDkM7m27j1ixWLMc7UQthE9i5Jork/zPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqWQ9VTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqWQ9VTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C14CC433A6
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711714696;
	bh=47Dbm1Y6cpjrFT0NH9gc+m2RSHX4UCFXRl72yotKL7Y=;
	h=To:Subject:From:Date:From;
	b=aqWQ9VTRtpoW8zvywutQshMLlB+r7ZMQnW/8QN03sWuKOLkvHc+4W7fzYlc6iWly6
	 Y7y4JWWRHXSYKvdVB503Rfd2PAk+fg03VJOLfHuO5q+945iacRkPGPAuySTOyHLd29
	 v1TCzPNjfPLd/UWTTf7cU8qaSllkI3akIw/xIuZNKCJZeM7G9W23w5CjQZXsR1OuBN
	 q/RWGvopoDgeBEib3rek1t9H2epNQm0dwo5zOiN0YUh3TilLZ3zGXaqxGc1r/u7ECQ
	 mx+ALS9KFjWFRg4T2abtfkM9gRVzrCZLJaKWoLMU/tQlvCAHSk3B8GL01SC/OhIezf
	 j7DoG8ceGVsPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69DF0CD11DD
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171171469642.24929.16172695416101055967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df02e7a35c99d104baa2e90c596fac8372a67c83ebd89bc1129dd10fbb238f7
Date: Fri, 29 Mar 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711714696
