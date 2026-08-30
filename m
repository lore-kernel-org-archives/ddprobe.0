Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700C91A9FBC
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788116434; cv=none; b=bYGNvDNu8di7j6XYdUARXiVJszfWRGvMW4SPAWKAlCfpY3ZBweAZ0UO5e6h+txurw6I5WRrcu+AIleXlIDoni9PvJ06jUMru3y2gs6EzFSBBu4x3tI8cKLPLsv9Ebr0uR/+67hwJjlRmEYSlRaNX2zWStP+JkVSyfEkygZyagTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788116434; c=relaxed/simple;
	bh=/j+lbOHXZrmmzZ2Gu6SK3+Qyd0jryRCo6rDUIkI0DUE=;
	h=To:Subject:From:Message-Id:Date; b=KvgDlWfA2KUBgnC3HiRAw5y3FH00B5Xc91sw3YEysRMOflxmQ1N5sy2SMFaNmU3Xa2IIy206p0/vI1fTekn+isg3o7aat/FnMRES3fjyqZU3FAxEk0q+6D76FKn6tp1hEkQqeytvqifVV0Fo4Ad6oavdCZqX7JhT/zLxN8EqAwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VT8H13bj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VT8H13bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A1DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788116433;
	bh=/j+lbOHXZrmmzZ2Gu6SK3+Qyd0jryRCo6rDUIkI0DUE=;
	h=To:Subject:From:Date:From;
	b=VT8H13bjOu7AP3RnYcFocOuu56gXQgHstZanXRI3iWSX3xBf/l7LBvEXWnjP+KAOR
	 iTi0WbZeh37gqQxO99Mxa1oICjnJMkrSQjRAVW2gEDTAjpbzT3WahzPeb6d3u/SOd3
	 I5ex7BFFfJMefbZj67vjHHbijOwG1g9R01s59tWZ1enHtUX3IarsMD/Dfn7Drn0hGi
	 VfCKNCcZDzV2il5GJlYvms/HeXK3i7lTR10aU4So0Ql/c7X6YcBzZCpw2BMLUe0KAD
	 BnV46DbGxj9IExN7Cd61F5oh5itfctyXSAORcFXx3ne4NFRu31Tv+3eGRq7MZaZjUq
	 oELph6h7R91Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B046FC61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811643368.18337.11827944730230768149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c21e849b5b8b5233aeafa47ab19268d49f81181c537ba301cbc717209b4a091
Date: Sun, 30 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788116433
