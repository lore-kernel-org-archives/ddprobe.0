Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CF22DB793
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770543834; cv=none; b=mHJyYl9S9R5+8lRjjJucrJG2CfU68g+oE+rHkrxu+F8Ib9GCbhRVKR0wQYIU2TRtUGBXEkUi1UEgfD9N5JFeSM2kbDzi4vEndu6m3gCn33W423QQkRxdJ01VRSgGGX4Q5wr8cNVJwrUYkCj50LdRK0ySlIW9FKS9Jpx9AgL/1S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770543834; c=relaxed/simple;
	bh=wxNrXD7pLxocfUso+QSC7zdE0H0+fqdb38D4CTzubm0=;
	h=To:Subject:From:Message-Id:Date; b=YbmBeqmZszXQNkoPhiGQAIiVRykg1OIF9kUyPluo8+pFfknQ8azDuVp+fkd0Pvw/aQlPtkHlwuSz4YoXef3VRSEIYC/F3lk8Ezud9XbpCWGpcuSAh8Aj15pQyRW8LQKHeqC/vE+MPIev7cj2OV1yFY7fldjQ9Sb6CtA9QW2NOQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4hsc4tB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4hsc4tB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF00EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770543833;
	bh=wxNrXD7pLxocfUso+QSC7zdE0H0+fqdb38D4CTzubm0=;
	h=To:Subject:From:Date:From;
	b=M4hsc4tBHzveLBPhuoEnyugXyCgbYSnmn2+qZRKBeJmrQUSASkYQ8oVYf3Gm5u//L
	 448Xk4eX83ZP41klDkyysonzlp/PQXGQGch4WOpXzHxLbPfkoay1grY8kv0VTnCybh
	 bh8FLTQGVF4OBAQb3Mw8YCrpzer835Ql/sVJktUTf9EKZIMBzgGA1IGuIR0ztoEWP0
	 +6yJE82NmHB0GiBsB8jPlz5xydi0ogmGce0ksJOQJLL0v3vM9nfA07AkTFXofFp9hx
	 NlkR7hV/7vwwvdu4NeE5ELu/KP/vDnS5nY4B5AZPdR7nnzPvT3XOuiQ88tQiukZMRi
	 b5HUMqdgRiytg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990FEEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054383360.1239.2570792990671740431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12620ba024553877dbceda10eebf0f59e26c1d58281b3ebcf1dc9cd1f93dc76f
Date: Sun, 08 Feb 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770543833
