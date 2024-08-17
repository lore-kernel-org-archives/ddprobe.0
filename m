Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28377646
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723923954; cv=none; b=U0ZwS92KYlQgcAn8LdxDMEd4dGZ/uISV5VgrE4/Kzq3is06ywCRLEivI8QToJER29r33gmTy8PVmTi4K8LERqhYgfDDJg3w+rjTnkDT5oAKXSue2rtCnxdjv6YJBpqpIjgzGHzSodYnRAK+Jw8JS5bHTO24xFYdFJvxZmmSRs0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723923954; c=relaxed/simple;
	bh=ahsgSarhpOB5WdrgK1tG5cVN9l9I2cgDr4fvraB8/zw=;
	h=To:Subject:From:Message-Id:Date; b=bWRCF8YxxBrzIQA6xNH4MhM4PMGDE2iZIrFIsq09l7GPo2uRDwUNy7RNCu+Dzid0zNKOESmPZ6zeUIxTrKw1cRY6uh7+db/axLSxTU5LAmKt9uQeDIOzrR6jLNae//mieIhihLUO0wmmpA9FHanlhWen6uiy1YX77rgWdOFppb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xpm8pR9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xpm8pR9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA85AC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723923953;
	bh=ahsgSarhpOB5WdrgK1tG5cVN9l9I2cgDr4fvraB8/zw=;
	h=To:Subject:From:Date:From;
	b=Xpm8pR9TIURTsDdg1powbDhSUFHBBKBO1MdTXskZ7mzeeA1Wcs4Idu0OW0aYexL/w
	 EHptW38NijmLaJ/NWjSY7w9OyGw3JEZW9HLvtiXU6A983G7MP4sooqBsegDE5mzte1
	 T6ddRWKArra2W6aICRJVyIXgycxowpdpkfOj92zCKSfbOUgmWA9zTOdKUbj887XMRp
	 Vz1nu7z7wh7XB+qkRQL2D9zaF0ObwN4c8l0CZQ1UIAEWQtS8agPpe4JYvrKWkIEf2U
	 yKNqSVHy3dtPUtPHS3EF4mNVO+W0vmvtNcZEIIxL/mpq4C7ecEeDR8OaKBjkH3RgEF
	 68IkN8dwqlvLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9726AC531DF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172392395358.1652.12229266445599103206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a85ac0ac4527eb62b27662cefa97fd41db6a062c409196f0c21d7d176d8bc3
Date: Sat, 17 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723923953
