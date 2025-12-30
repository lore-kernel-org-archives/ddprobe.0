Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087F1946C
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767053634; cv=none; b=IDamQdTK9DycTy5ZYz2+WS9MMfRQjz+0UWcL2wTgSK6HTTHsYQudmSUTWQZcN1YDpD5ZgBCmUuGMWeBRKTeLqaMAPFVGdgqt8opklJ8zCDZyOOdPQt40sLD1XBqIkvUzPfMQyZKSu0XEIbbEV4q+xZ7cZweuoPLz0DOCEY41CXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767053634; c=relaxed/simple;
	bh=7VyMBm0Z4n7oBgPv1Lo73UjpZs/B0QYO8g8z+zfWkfI=;
	h=To:Subject:From:Message-Id:Date; b=C3M0p+8ocX0PmyYJ/3+0K9iUBG0rBTDiJCGJU/LLH3JCJzYGmnfRc9yuCaxArIulJXVIHW5l5/lvidSTOvPgFoRabRdifceLwI3B6Ii8wFUgxXZxwOBigWV4c/kqpaaFcbOC7W1InsW6CCv06i/g+lZfTBAIv5PDpQHIQR4lXFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMFdyGbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMFdyGbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F155C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767053633;
	bh=7VyMBm0Z4n7oBgPv1Lo73UjpZs/B0QYO8g8z+zfWkfI=;
	h=To:Subject:From:Date:From;
	b=UMFdyGbC0sr5XS56GDzDpfj4ht2TV2mRsjZr3AY9J9uK1rdOaNrFjd/+/ZiBxyC52
	 2yJKOrfMeZLjFifiILYXFCiCuRBSASDFz8+3A5fZ1LI+tN1bCtdKBO38PnzxIePWpX
	 iBzMJNyID2XfJowRB9mDFlQ0ASykBYqYXoqgLYwCTRkuoqZW9fP4ghv1n8zYQqh6Bm
	 /jazr8W+/iRBMW+1fR/BEk3EIrd+8+uXMp5LbJ31KAOcAo3zoTsUITn+BWtqWM9TzO
	 KJJtpdRXdYw2A8cK1XXtpJue8/kZ4Tsqvnxiirqv6T25GZzOA7UsBEk9BvP8KcxWD1
	 YRndnCzT5+bYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4CCE94104
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705363357.20271.7507735477331189137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26534b70f038f373695650fd5a34c667a839f001753a17627331d6f8fa3f8e57
Date: Tue, 30 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767053633
