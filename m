Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448CD38DF9
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731194754; cv=none; b=nJSfgX6ko1SZQUN3bDYkkdG0L/HHU2rcSggjxkHf6CtoShPcGwDsQP51Jj5uBFLirKrcE79BynpfS6YNF1ULyhm6rp74pDVCpE1YX/Vg3UhP4bqnmjz4lPmQOZ8rStWk6lojjZw3MqpPxE1CMB6XrJpYZaQHBxoPWwi0Vl6Xyww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731194754; c=relaxed/simple;
	bh=GA1aQRMOA8z24svOjpvagJ3B7LZeUx+QU+WNW0GIpWg=;
	h=To:Subject:From:Message-Id:Date; b=P8I064hb5EQMApGTymjm8LP0iyMHyu0EVdk+06SBgSK9pV6KAVVmeFSomGRUIDcuC0VOx58QyjXqiWbcI4Fl249gNXyivGx7+gdXCLMJ+OWmP6XDK+YQc8lssbfZiL8h9/ctMNHT7CjZGt0acMcoTBAP8FbG4Bz1bxpbk9OyARA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoQrdOuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoQrdOuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B47C4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731194753;
	bh=GA1aQRMOA8z24svOjpvagJ3B7LZeUx+QU+WNW0GIpWg=;
	h=To:Subject:From:Date:From;
	b=OoQrdOuCmado4RHstfUnAkQFJeBd71oCkk746E6SPDka/f5VYidGuUJc7IX/7J3yb
	 CrgZmLvkl8zk20e6qWjnLoc2qNkg1/GEC/WLrODG5rDopumIZUOyfjrRPcmjV2QhUs
	 q8ORGlDGk1Ys1ph36eyGXUIb0JVEQpxLpWqi/o/+8LHJF82uDfvJkgEyMOg0gEHdQ5
	 x6ocIBH1LsnEUH12DR/L9ONsOuOMRo9xcq4pI2PGgNceecRA8zI8CdkoFdzSVc8jL3
	 9vHXTLpmq6Ulz5G6Z7wnQUzPGmyILfEXwZzhEW3hJOkFp6itiUmg4wuMKob4oJ+JYf
	 DRhInfWBxntkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A117D5E386
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173119475359.31207.625340519077389105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f472706191b0748761c20b985994046338e2c95d9efc74c85c5e66520c22b46
Date: Sat, 09 Nov 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731194753
