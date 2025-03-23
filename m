Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2661E511
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742739595; cv=none; b=QEIfC2hmUwFuW7Uz2ovwai2laq+auW9QjWyQe/RobkcUq3/vgtVQgDJxZA3EyfvWZWQj87NstBnw4sQK1lz+Xbuj9OHqDVWHDOLBGmT5kxz7+t+S7vEWSolMm9iZqCllp/45VJUxyclMFgvrbveUSW4qzhh4eyCcpbUhzJZ2Qsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742739595; c=relaxed/simple;
	bh=60NT77If2xH0KCf6H3W3ixdWyXCbBnWkDv/U6mSuahs=;
	h=To:Subject:From:Message-Id:Date; b=q1Aoe1IuBvKDflNCs2lKsT63nhiOAMdsVqLZX4sBA4BAztWevkFp8HtHqNXHcLhrP5jFD5rIDTh72y16GhGeZjV3Ew310KKGP10VRMxfO8pK8f4r/p+ARb+yURTKGtMk0xXoIXcFXcPSI8RRzVH8QQS/3BKaFSUrK5s8kUd2u/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0dRD9sS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0dRD9sS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0359C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742739593;
	bh=60NT77If2xH0KCf6H3W3ixdWyXCbBnWkDv/U6mSuahs=;
	h=To:Subject:From:Date:From;
	b=J0dRD9sSWR2/WJCuPDaBAJTPfBociHek6GXmpUqIDa9bpBRMOfxvr3eoVbEnPREkk
	 O8aRDKBwkawoLp6ndKdfW7oDys3S7jbXNd3ts/c+lnyAHXRNf+hAM7W0y5c1miTdKW
	 9bTJx99KNBSbcBKBoAXw59XzdCO8HHqZ60+iPxFME7hmwfWEuLKXM8IQlVCqYj6ceo
	 r2Oyv+O5/sAEOVMXzbNqyTJhJ5zB23+I9pAhZfGQ0zvQvErXgAt95NyeJrJ7S61DTn
	 +d+8yxTonQ5+V2/0AXKuJVGiPmZR/AqXLBEQFjCKZn9RwfOWAfJdeGNlFqbpibsXFo
	 XYQxwVWK2homw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987F2C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273959358.24199.11704509159665032977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa91bb6291fda26b9a9f2024306e34602f533f93e4031cd7c5a9cc21a28362f
Date: Sun, 23 Mar 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742739593
