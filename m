Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C912264A7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788627634; cv=none; b=hP34eMdfTsf7CIP8pgJJW22wcqcAjoKI9AKMdj9EbsSWriJS1S59j5g0XuU1uOTE0+NZbvnqbLTbYWhmN6lVFQl9yjTdEek4XEhZZlkjsQxYJ8LfQR4A8EKVBUyvDFjcIh88dXzUYfk/pUYgJhikBkplV4qJH+j5Fw+dYeVowR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788627634; c=relaxed/simple;
	bh=U3d9swzHtJGUPi3vfg80wVU5CwCaseESBV5Az0MdDPM=;
	h=To:Subject:From:Message-Id:Date; b=HG8oE3RbLQcu/lkhhOU8XQgQsIcRrKkF9empdj58smEbmnz7FZndI7n5sIpHklyJvoS9rdFc55xddi7dtRLtJwxIMdVSqa1Oi5qhKqDJQtZdP+Jj4tPJ0orjMjV4LllilHsCn86qjTPmxfD58zte5bIbkReIw1sEiJr+ZyAThIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNvby6Ol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNvby6Ol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5B0C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788627633;
	bh=U3d9swzHtJGUPi3vfg80wVU5CwCaseESBV5Az0MdDPM=;
	h=To:Subject:From:Date:From;
	b=gNvby6OlLJwZvsLEDkDyw87x3mJPRocHEw/Xp75v6QTH7bwuWjQhLFpirPc23wpSj
	 KVjDHNqpLRbzW7a3jFUL2BErj+kv0/g1twyIZ+Ki85mBrBSCDGAVUXBjMeyIePhuUk
	 HkI/Y3zE6IKNAl/0MsvMJeGi73ThfqSzW+lAKRY6c++jQVBHAbPGvN7OoN4aEDk8+m
	 Kt6Wqk9WFfOpmLbR8cnmuqIYitgq+6oRTpq9VjFl4hYytNtKSANF8QRXKBABbmijYv
	 7tBsX8Zgv67d0mNj1JVrKyJVtyFRb8wh3tHDPXMKicTBe3L5f929PkBBlIYJ4n8Pw2
	 NtxwQ5Zx0xudw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF44EC624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862763369.21235.17814697101138184708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa009615424264aa1c8997c3e9644dabc230d439956cf6374c835b51ca763ca7
Date: Sat, 05 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788627633
