Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6243131771A
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755476394; cv=none; b=U5ES9tObXy5dvwaHq10R6QJ5GqkKDatKYWCOjdjtrZrG9JrY9ma7esDWariO+BpUWUs2p7xjdZLWsTyipRdP4MdkVw15abAVUe8B5LSWdQyvjsSp8/9kfDf+JjGWtdEt/wIHFLIsPtCYu14Mt5KzXJT7I0Ey7j8luO5Qlh6m43I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755476394; c=relaxed/simple;
	bh=A8OXgp7au2NSDJizGzrkyV2+6g5pWR4EdQDREDzTqkc=;
	h=To:Subject:From:Message-Id:Date; b=RbYetQc+Tet5k8YXLQdUCJPBs+2viAPCKJiBqXhU9n6kuwu2NaOJ0F/kxyxYGFMxf15abFmguhWj2NagHzwkjzHPY0Q8Xxa33iAFoSVjFeUkukLglHFpJEj+tBslXwpTqGMTXFoPFuEYG/5HNp4eJCt1ZuyMK9HEIJafGpMxNb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLG9I/XE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLG9I/XE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B85C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755476393;
	bh=A8OXgp7au2NSDJizGzrkyV2+6g5pWR4EdQDREDzTqkc=;
	h=To:Subject:From:Date:From;
	b=MLG9I/XEmhA6K+tvom0Jf8FueVxzp+9eFkgPyFoj6rrC6wYNJhFuZ2l+u/ScJlrF1
	 5wF8ClyMQh54P3Jyo1WlsCI4yOBpiu7CSFQ1S0LLdQiRjmWiOLQWtboPYMi/k3ZkHr
	 E98a8gw6smCbqCv2OWR8xaVOmwjE96HL5BtLSlrz4eDs1qOMTfrQcgXjRjSB4Z8bfg
	 IksY0ZTo+sK/hM4rgO/yLYoBOFBg5J6j1VQRVI8+pieqIhLbARirsYAwNw1NtQuAPc
	 SZfAwOu/+3lDqlrTABYMXU4iDzW9IjOBOYgAr9XSv6OivJk8T9KX7Coqd+MEFC6wit
	 hx6XnnM2m7JWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C16CA0EDC
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547639357.16421.18037950032593297537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2941e2fbccca311e0037d1fe1a5a658856b32c35bef3dc64ba20411f30511dce
Date: Mon, 18 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755476393
