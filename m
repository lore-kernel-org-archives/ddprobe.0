Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8CE24A7C2
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737026754; cv=none; b=WjfTzHaSls2z/RFyDFqpDOgQ+fbbY7E4FEv621KWVEn4Oe5VaIkZ1gJwOhAA7U1UG5xopUEeuUpdvvZ/BPKFjsDA2LJ3ZZLLWGWXhqCorCWBibfHCiHJVa8PKbuHKNkkthncPz66uBxKE+u7nfsTGOpSL+nw51m/ij4XqqWTTOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737026754; c=relaxed/simple;
	bh=rhUN008iNyuU4Gr6uI5nEfMSNvwF+aN3iMp7P9ghRlI=;
	h=To:Subject:From:Message-Id:Date; b=S7Bwq3S3UuaHn5mU18a+09B/+QHABx7uYODHsXnHRWwmnf8VhnsSZGOHVNaJWUxnBphmXJ/pKhGc8I49SbnPOaziu47ZC8EcUYevIFz2jG/MolUHnqpmAnNFE1izNauoVFVR74LFanQfMqtr98blxhzTMRPDB5KWUIdYaEuKagg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knLig9NB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knLig9NB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97D5C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737026753;
	bh=rhUN008iNyuU4Gr6uI5nEfMSNvwF+aN3iMp7P9ghRlI=;
	h=To:Subject:From:Date:From;
	b=knLig9NBbJSSvc7SBm5zVIg5qBp8lXHIyUTZ/j/6GP+6Gc3m/CFZvpdskPzQjJvym
	 OFaKmPDo/jimJCSNiHaYssTD4NdmR8iG1bFuJzz69Wy5Lmk935hXM8uvBqQJ6Aoddu
	 pQBOl3W4+O5c5oWw0za/wRTBuwdM2dthEO5wE/E1qEMxZnOHzsGPKeSLWUjLQAcAYy
	 WFfA0iBBdD6JU+/nY5sKWr7W0goIzeiBQkuFfrHwRStLhcElMYpx3wvo+5K1EorFbU
	 LkmGfYwUz9hpaGY4LBVyFvNoAhEO7POBDE78aRLgfj4XHSML349vVYk8242f9lvckt
	 wFYIz1w1hibSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FFBC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702675358.26577.14266925849855359525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c115588899a8f0a801044703537b382935eb2a270f65baf0781811199b69d47
Date: Thu, 16 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737026753
