Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FE31990B7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750594193; cv=none; b=VLzm//IodvQz5h3FBnr6YxhRjA0uKRMQZ5NbIf3OGkmFy4yCqjYf+oDFNBxJK9Ar7koJ3h0jEwBxgPB8rZ8qgjokzFiYIfSyKbYUEYESJDCc6lSHF92VPjndrjEIMZdVmTedFX5OrOj9cvp/2qev2JWGBERDpQh0+Sul4ScTcRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750594193; c=relaxed/simple;
	bh=8PEhxcxrmCChFpcOrnb8mBQPJpFxzaDzot2NjCOg/68=;
	h=To:Subject:From:Message-Id:Date; b=jHgiUEEvRZKQwarc+SZH8h4OQoUu1014EThp5SHig/NjPui4YttLHNn1g5ekKBFRmQBC3P+1PSRL1RY99C2n58D8sBBB866LoneliHeqrrm9WOp7irj8NZskzAWgvKXrvrXoyx96RuYCPuO3NwsxkDrpY3Ki+iv3HgazmxxgSpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7bP6OPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7bP6OPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5E3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750594193;
	bh=8PEhxcxrmCChFpcOrnb8mBQPJpFxzaDzot2NjCOg/68=;
	h=To:Subject:From:Date:From;
	b=i7bP6OPa01vwxjsHjDlb9VbxIfj0YfVxHk9O5k35B9AwBuzEsLdZLr6syfXwXTgWE
	 fqOwDghxdnS6ER7qjdEcyX+8/qgxec9wOk84erisWoXfUW1DOleqxaIGsXTNJpaO5t
	 lYEVZkwdAlrMMa1jlZ6R7NNyKSuYEiUzs8HPmI08+d99dIrb9rYej5OyBTSCpGwWsi
	 GeFslbv25M5D/JkY7OT6t8wQd5IcJo+Q6Z5HhfqXK//AVmtwJ0agDio944levLcgda
	 MD8n9EAn8/zzFplsuX4o97GKCMJhoc6mQgyFZhP3ssFIes9sQLNTR9M1RZjA+PuEEn
	 orHkm9b2SXaog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9962BC7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059419359.30531.518072800358378496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d1cee58deadc8ff4da86196d90b3d75b277ebb8f3367de0ee80e1e51e46c8b
Date: Sun, 22 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750594193
