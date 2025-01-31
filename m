Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF7A13A3ED
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738313154; cv=none; b=a+opYraevYnyx9s0zYagdFqKjN/0MS0k6KJBRM3cHT8E1eEXKbmejN9BvTAzz2EW0C6jzMML4AXND6cEnyRZgKbQY+VzpETv55SDZQ8gJ/3qD/huNFGO2ovKTEQNVpNfrURMpsfmTg7Jhw2v7Fh4DIyQhO0EkW2WZR0+AaxJU/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738313154; c=relaxed/simple;
	bh=2Ifulme9pog5oBVzgAJrApETKlxX2r48x8N4/w/mTcI=;
	h=To:Subject:From:Message-Id:Date; b=qpGWP391HIXXIuLTAVeSM7C6voiQE14359V3RJeI7g2I/NjCaz7PeHedFU5m7AueLqKYkK+jSSUqVITo2cpQb7EXCdS5PR5uzYunv23FQ7lAjvXcosW8VhymS29S0t8A5iK48L1hda3qs4OmRO5uTVRDUN9pCNchN68gfXur2JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLUvBz/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLUvBz/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA0EC4CEE1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738313153;
	bh=2Ifulme9pog5oBVzgAJrApETKlxX2r48x8N4/w/mTcI=;
	h=To:Subject:From:Date:From;
	b=lLUvBz/UfKi3zcuAqZTknGPA/W8eBLLYe4bSRQxeZ9ClJuhWiwVPClLkEgFNqOMh5
	 Cw0M6arj3GOXFZ6zWIqQAWadUjgx6DBpN77z5C7m+5pC768AF8pwM/+Zf/jtPG/H9K
	 y8ynyVVYLBs4uF22WjssM6aAjnNYXDbFgMHGrwBDJVuW+NnSI5mPPlnRRDWNm7tw5t
	 K2GrknbHF05aHL7msWJsiw0n2AehZveDQBaTzQ2z866ITJA+AyqMoezfWw+QtiTTvA
	 kTimlpCNcEq8nQA4ZXCdbPG1HzpHN1TjTHW3pI5gcVyAL2wmDiEiq871BuXf7zgJzS
	 iALdG6BgwNOew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A08C0218D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173831315366.15589.11356897847988178396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8117ea17ddafc8eb4cdd819e3955f4e213c5f15e3f100b53bace9209582700
Date: Fri, 31 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738313153
