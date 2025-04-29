Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED2028468B
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745918394; cv=none; b=dQed+p+WyWPlwFKnIFEImSPTDnOzEgvbUzuPzeVbIud7d1YY44uoS52vQ5IO+QcgnbY8mibEtCMqCSvBaqjXPB0eg3Xx8+AqiktGvD+QLPsLcGltrOESaobuFRzIZlLoYwhOdNnPVl9XjqgZN5FB0BYAHlJ+LN359v6iLCJB0pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745918394; c=relaxed/simple;
	bh=NyB37QV48muvrvcTXOCKvIK3oaUgA4GpgLZkQiFtX5M=;
	h=To:Subject:From:Message-Id:Date; b=l2T87vh5dD8TJfdYB452qYl04luLwT+NltVubFF9F37AqOqXy9khZ5kWDdVFRiwpgaYZ2s13yOnkB6VzNyz4GCEexf5ng8UdZm4YH/F87nZjw0GhbYE8e7xS7TmYmhnGaENWoY/Q3dGzTnmFELthcN6L0/21IcJLt7+a8Le5jQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6h2OY0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6h2OY0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5594C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745918393;
	bh=NyB37QV48muvrvcTXOCKvIK3oaUgA4GpgLZkQiFtX5M=;
	h=To:Subject:From:Date:From;
	b=n6h2OY0HR1CnzLW4GzUHeY+/NIEigJ7mWPppKyEsfnbrD7NYPGNrIFhSVh7Gerfoq
	 HgGyekKxtL7dRac2swoIg3OuCT0VD3XjqSOXXS1AW52j2G4/u5S5NREezx5hmv3Vyo
	 1tGzsJs/jDyE+oA57Z11eKJFojTe5ws/l94cd7cJoQfZLnUlzLwuh3svHjtWZXLfFl
	 pijcWR7ZhkiYqCe4h+3WG3oqCfpwGC1bLHyXFR7bkHdJwpZotpSxDT+NiwLSQCe7VN
	 wNZ2LlAf52Iw4VqydI+EmRrBzF0z7OJ6sTShb+Wfcns1EttyTzH5Z1j+I8uXlUsVCo
	 SOwiUeZ0+qg8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DCDC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591839358.31894.823148873585199221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44fd71cde2b5ff90ce1bd21dc887ec6a858742acea25111f942ef5a936250cb
Date: Tue, 29 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745918393
