Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1823B28B40E
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771351494; cv=none; b=Wbq2KdqwM6MQg06/5UlqHYjYKMYZ+o8CQ/+aPHT5etwoeyhmQ0z+4v0bow0QmxwFD7VYAMlPrsEvPTUBpr2DuxwetZZfeDkhqrVmB/majgkyQoRnsfanpZGam8qNAE0a9n9oYIBKUsLKBoZoKU09SsEQNHiQMR67O6KZ6n5fyn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771351494; c=relaxed/simple;
	bh=dJ5GeogbfJ1gpgEeQ6NifkLEonbIZ6+PqQgjs7smgyo=;
	h=To:Subject:From:Message-Id:Date; b=asLsfR7d6X1r+ovBsFuwP9AM7S08iobfU0W2OsOye2pXmXQAuOU2CBAvNG9CXhWYTCGrZEMhoKnfEYC2ihYIr1qVsEqmhErauP8FnuJDVtSCYLrOcEfY45j/a8yLP78MROM3r39fs2rw3vScD84wZeIcOuP7TnK2m5/g2wr1TI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbBWT21l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbBWT21l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32ECC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771351493;
	bh=dJ5GeogbfJ1gpgEeQ6NifkLEonbIZ6+PqQgjs7smgyo=;
	h=To:Subject:From:Date:From;
	b=lbBWT21lGCci4kegwGY+dqnzMSaiAxYBRex1rDTrpdC7+IBZmyc/W7VqHf1SuPK8r
	 5v+2Zl5BRlJqoA57yOi4eofvDTsnBSQ95pNwyo4pPbohz/M3CibyKInPKd3lju+rnc
	 Up8RLzzIOr2DF4A8FQvPQcKLrByo6+q35LZ4B+KzthOiCoY+DCs2Ax8FnzQHihVk0I
	 ENFn9o+kasMGd8haKAtfIcXtTiLdNwsnaL9SPKGvycXgI+iIW2Q033XWAsTXN+KwW7
	 XHgA/bke4pLRw/MOEK7Y9rDg3ioDBYfpJXuAPMXTFKtSTx+Xe2WhTBLmQBtOtvMdwP
	 91QfkXCQmZ6zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E64E9A030
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135149358.24301.8672138983285904396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2383e712ab10486ff7deb771d4dcea1cc9fea92959e6f3a6acb6669294bb65cb
Date: Tue, 17 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771351493
