Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6EA3597E
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748735394; cv=none; b=AU/1PWgR8T3DqPJopONpbvQUMkbShUbQc6YSYgWq3rS3Qs2GJ9b4pMt9nJnqFIMmJWW0fxcZVh4Mi8/8oXix8opDrxRIuD9V4Fb8Oy9pWUg8jaOx4cKQyFIBVc21fWIqKAlFxLcyMYTWDu1MNAjTJ4fIzuKvbxWjk25JoBK1/48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748735394; c=relaxed/simple;
	bh=V+gMQsegEjOMW9Zj2/RVw1Dtl/3DOGMZZ3yTdMZGmRQ=;
	h=To:Subject:From:Message-Id:Date; b=ceu4/j7DeyWHYGYLKPP7QhAeUwyU6PMGpc+uG+Gd4kAxNxt9FFbM5yf/x3npWS5VZA5alMCZa0zwXpXLaaAL5tTcXfKEfzcwI5E8CtQHQ6wb6VN9eKJo98o9F5Xwy6s8ynHKZ+Vn/1n4JmSzfwjFkGv1vz6IMKXOSmlwbefbzAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCbYQoC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCbYQoC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73BBC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748735393;
	bh=V+gMQsegEjOMW9Zj2/RVw1Dtl/3DOGMZZ3yTdMZGmRQ=;
	h=To:Subject:From:Date:From;
	b=kCbYQoC7y8TE/bO/nTAwBSBDcDwy5L6ytg/CkHCgowpRqR8tLH29ZsREbjImwqj5/
	 5/L8kGJqEd8QzT1CsRI1FURgYEukiNaUmwpBQ5fuhPD2Lt6vHZX2XXOPQ04bWXAWyl
	 YjP9GI4pSzKN/zPscOuZpj5pN4jOV0eHRkspE5y1v1YIxsgzyuZZyMdgKV2Q8kX7VH
	 E0Q1EY7S/f+Gm62ev2hJijzt3mC4wPtgNBkL6gC4z5sEdPW+DfVuRCk2FtaTaLWDdq
	 HJc/XUx4FN0W3QyG/fdYwrFnmmGAmQmjt1HH7ymPlywJCuSpnuBnPo56oM+l0/zOH1
	 bJ1FSTwgMAQnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9423BC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873539357.30622.7276784775296854205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0ae86ad1af01cd32ec89172a7c9f697341a9f002952120020b4797955c3799
Date: Sat, 31 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748735393
