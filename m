Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6583732C60
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 16:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716912863; cv=none; b=o8xk6ZshEmzhi7dpLBYar5udl4lvnkbIEJ38gTtSD4iJ5o0BkNe7mEPd/3az4QKpp5eYq5sGh4haBrfuLSwQW1rIb83xzGGr+E3C5cSCu5pboiIYBjnwyr8wnnQ+jskDGRgj1KP6Dar1XrnQxF6/C7KfCFgZSVSwTrEY16ohFnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716912863; c=relaxed/simple;
	bh=1I848PlfMJQfYBxUyBOeBjA0ZtRUq0wbtItOeAN6shI=;
	h=To:Subject:From:Message-Id:Date; b=MTsv3j743YSJA6EnAvRf+eBkgiht93dAzyn3j3L3z85Z+PiAJdCryb86gbtBnJ6zt5d6sntN3YAWOjnpqYPeeZulA/f9NR5R7hLr7/xsn3Jh+WEP8EkiIQAnXPKRnbpqYhgV4fRj0bJNE7R2yi/IrLF+F3c46dHJjmETTZ6mHow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu2MxqnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu2MxqnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B08C32786
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716912862;
	bh=1I848PlfMJQfYBxUyBOeBjA0ZtRUq0wbtItOeAN6shI=;
	h=To:Subject:From:Date:From;
	b=Pu2MxqnRWDbuI2EgDUQ/OGHmXXJF8HbZDZ+F3z3uSTYbg4X/QhYrUBdtC3aOpdmL5
	 VyOoUlHfSy0cL//SYBBPQB51dTXmtocWBA2nCWlNVI79/8y2q7r5YyC8LmVqtiJc1K
	 gc3+UBw03hETA9Lr8z2ucnxTJybKQi1mfrKw8ndTquknwUrWV4H7ullJm+qeFexw/r
	 YUUkHJhVn7TlJZ1654q/qPjuu7dCH00X9YIa3EBXQobzCaRayy2UKCFDS0lmqQlg0Q
	 zvLRvfOS4CF+7vRm2kH5WLqnKPpRBBSxS75W1cfck5HgDopqXIl3g7zp2NUsAU8HRi
	 8TfbQyMUuUnPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC24C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 16:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171691286282.32045.4671394728039538949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26245710be39b0b698fad3a91e9b199d5bb518b056544be8814d3dbae4d64589
Date: Tue, 28 May 2024 16:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716912862
