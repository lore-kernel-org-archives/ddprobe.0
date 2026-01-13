Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F722C08C8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768311233; cv=none; b=t6YCwqhAa/ilORX/F4S7G4sTkWXryRZHv0Y3mF7VQoPO24gr86pcNmuWINHS3mncePEZtHWY1BYRprS7R4O2knDfeMoPV3NzjcQihbY1nWVzY340RrD1mOp78s8DNrPYGraXiZ44vaWE6iTLmSPBX7slFTeKXv/UG000vDoQirI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768311233; c=relaxed/simple;
	bh=T7fOXKIfQ8qTLp2ycDCF4DO/1VhWvyb7o88HKn9oSzA=;
	h=To:Subject:From:Message-Id:Date; b=K3O+OeN/EUn38dn5PU2j1aKUA5fzdUddLCEZtQ41v25IqF5O5VqPqGkOOhYlT0ESgkJXWs+BF7iXUMUz30G7bgmhwqOFDTrKFUapUdTPxw1joQX3zfklF8pmQ8Sja9ZWiD9NyHiD435M3OnnHmINJRJbNlRq7O/MEJbbBXawTR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JN7pYU0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JN7pYU0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CADAC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768311233;
	bh=T7fOXKIfQ8qTLp2ycDCF4DO/1VhWvyb7o88HKn9oSzA=;
	h=To:Subject:From:Date:From;
	b=JN7pYU0SQC8ZD/CTmg2isOedE5pcGq6pywP49A502/Yw5x9bIsCFzYpqBOybuZl7D
	 0Yzi1gi4vAbui5/Pdtsks3I1qlCKxBp4FjZsCf13F0kfC7GP8F3I7+DFIsEE/EXn0j
	 3Th5P0A99gNGtUENLZg10UKFXJPKSq/TykGkXUwUANRmBwQ6tEbHi6QTLBB/k9vwH9
	 XAslx07kuqgyl4bOnFBXO9NlqpdH5W+mXyC7ftjE+yGOLcVA9LD8oat0BGPCUdwdHW
	 cppe8p9hT3ZdR13EnOtoyLoeYaOybK7nUUdeBEthCLJKmdltXKn51UwM2zxpDoi4Og
	 FvYq7RNUOwq3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE3D2D0FF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831123358.13499.2703441617663081770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af204bd846dc5bdd2e118bf3b5fd37e1fea58d21edb8d4e6affb59621697e58f
Date: Tue, 13 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768311233
