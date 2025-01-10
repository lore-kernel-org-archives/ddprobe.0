Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE98433B3
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736490954; cv=none; b=FSarH/60VHbbNcotKnvzQ5oD1WvvCweWz7xn9z/522MLW8MT84ZEQuWgY7L6HORptDPQQGDandGmKRWDIQ1nI0SquYoz6vemmNEB28s7Rj4H8LJLaFm79uXRVAkSJJF5VUHn/Qt0i4exTNPqU8KailKzS6wc2in2uUaC56g6tZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736490954; c=relaxed/simple;
	bh=PLc0dWpZm2G4BHUO382uonIpKjW9jrYldbm8dQE+ZCQ=;
	h=To:Subject:From:Message-Id:Date; b=SYKd7lyypAANJX3hSek6FBX8wdL0kjF3sALPKRvyRzsgsjrqFNwc2n6a7w6vN2/e/1iMv/zCewXT7XoWCF6nuplOEpcViYAAPPRWF+tQEH6VxjB0Fh4t4sIQWbvtAOB1B1t0DCVEruTybAvbZAvW/kyTFKxuH+QwKY6clQvAY+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJloo2q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJloo2q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB04BC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736490953;
	bh=PLc0dWpZm2G4BHUO382uonIpKjW9jrYldbm8dQE+ZCQ=;
	h=To:Subject:From:Date:From;
	b=qJloo2q/K7dQSoNRN4TCygOEbi+muoeyCQ4V0pn3uBwvHiEmhSoAoe4VZxxny5K67
	 mszZywDbYiLDqAoLzpB9hgk7pAdZUzRUp0OSUZPyBoQDmFoyCKLx9eiI5fLET5zSYP
	 pwFx7/6SJEi0ykcBa+13vAubhX01EJRc0cBZWIet6cpLWG9t2YBeuiwL0bGW1ixd8Q
	 6H+QSPhSGqZAlmpcCG1hJ8sViMfJgScOYSrEtgvAvRm+b2VC3dOrseK1eeIXY/F+pN
	 QqgfL3CThXPp9tOHfbuBtIHclyA3XhnmtW+QcfJHyOR8XM4J6bgIz3wegJKTyDMzeV
	 VxBswCeV2uqbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972B5E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649095360.27234.11259611149916305505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e77de728f23409796392acb4e0632ba7046dc576551cda6fbf4f676c3600611
Date: Fri, 10 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736490953
