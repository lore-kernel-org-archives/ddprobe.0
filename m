Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3900421C9E4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750306194; cv=none; b=NtXjx16XxzQZfWn0MlRGOHP0b+xLjtbkJprsU/vPgCvuJIthjMMSEHm7FesSK+R9DyZcUglUy+eL9iLvHL5M58381AJFtoSBEHRYUslp3avgyzWy6mzf31QZseV4eXI9Fcnd1vTaTa1bn61BqmSSPGM0sDToJEjbGDnBU0Dxt3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750306194; c=relaxed/simple;
	bh=gjh8sNp1VPw6EBE6wB/CkUY0JCbp8DBKf0uyVhgZzgc=;
	h=To:Subject:From:Message-Id:Date; b=bWwttjA8z0glqSNbKDSsbQw7/iOR5rDF4IhzChe1xYy2I0U3nV/9vVJdSvCh5X6/l94pJSYNPxY9VdfucxpKqAdiVJBq2nsEhPSQwHFUgZgvDA4xsegV68AevUqlTGWepikpIHgA8byNKjvXeEulCWU2L8QA5/lngjDfF+YCffU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqJp2VnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqJp2VnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2519C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750306193;
	bh=gjh8sNp1VPw6EBE6wB/CkUY0JCbp8DBKf0uyVhgZzgc=;
	h=To:Subject:From:Date:From;
	b=eqJp2VnBNoCq6sJGtGCaNPqKhXCJ9dhR9GP/QgucPAR4wco7Sc2RgcQJHVe7WYemQ
	 hBvB7/PlKal3efLPh/N1O3XA1ICOOwVpKtj/HAXr19GUF7mogVUUd7otwBDFyLV3iQ
	 mfznnFbE1aof+FrdSU26avXlbvPQkAYo+TknoOrPd/tEI2JZrIMW5oSb5nDfDYqR/g
	 pCjie397J48JazUwEzccQavqb7tV8j0mwW4tO61T1403t6CdwRZz6SqQj5w18wUgyV
	 VsxyNouL/ZKdQMXKfOpuCNw3ZZlEBAjbTIs4BCc2roPUyiDZEQNJyj6JxhEHyh8CQD
	 3tc2O57BZutCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D2C7115C
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030619357.26661.8947626532434947938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202c2bf6bc124f30f15183781453e3777363c6a71dabdf66d0f665c845bfea32
Date: Thu, 19 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750306193
