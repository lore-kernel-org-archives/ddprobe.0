Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4142B7E9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736575554; cv=none; b=B8dt7YzeOSxvuHYl+jikGxryzjUkEnfmJjJXN4WOp6+ver0arKThDXdhMGm0bbar5l+hQlv5PGZPsXP+K7FGhUQPzAuFdbImdqIwmXczOdBBXY22jFj+ruJ4+bCj5UWZStq16MPZzuZH/enrfUQPvn11XcNVDeFY8nqGHu4lh2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736575554; c=relaxed/simple;
	bh=lGGeP0MvrjU4ohtdFEW5gOKbT5rMfQzN0v6PAPP1OP4=;
	h=To:Subject:From:Message-Id:Date; b=UAOXrPtNxbA7PUER5JXWLVfPi9AmDr06B+The6lgpmtPZY0C9e1X+g+1v041Kj0sLCIOtGpwpb4x/IEGUxU1CQttzNghadZNn99KqraHa1TSdhmX6I3+RQxFjwkYAprQ4iGvVK+A/juPitLFW/TKCXC+0piSFUM977dqKBYgxGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghDXlaDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghDXlaDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EB4C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736575553;
	bh=lGGeP0MvrjU4ohtdFEW5gOKbT5rMfQzN0v6PAPP1OP4=;
	h=To:Subject:From:Date:From;
	b=ghDXlaDeBTMBF7BzZP9KpinimI530aPfoUz6fwHL8D27xN5wG7qUhjBBxVLPqfbCw
	 4p0FNikLVEsPtg075jHSqcFufmcMxH4ADOt6sypoe2HVakA+uU12q7QSFAXua9Hc40
	 HSXkxZYOnUQOPs7UUzfK9UjUz9fZkL/M6ihxdFi7x80jirBWu39G03LewHD7AtR6RQ
	 APvBm/c8KuE7IMVu5m5TIArSIyn1J02tHcK7np4R0kLzSuRT9QythNtoL2mgYVIq/M
	 3Whdzejb3VqryUYwzWLtTCx3VhjlNwqgDZ8NsG4P5CCqDo1x1yNU3hLrJangPTqIQp
	 MPA86AGKBtmDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990ACE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657555360.5270.5118608924560775925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56138368cc7bde19afae8ee258b319af4c7a4dd269db42aa52be9c1bef7abf9
Date: Sat, 11 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736575553
