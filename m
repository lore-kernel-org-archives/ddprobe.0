Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6EAB37CD41
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774536893; cv=none; b=jfI7tP2GpXD1zXTQoIJrq5KNwLKgs4mSCJ8lNB+OxxFE3eZQypUtukPRPr3SPwZtw1bgIchviglIEgdc491YygY8g+QI6eO1mbOZiybhumt2HEA2tzIzyq5UCPlRO9Jee6xO4M3yU9mM/wLTpy8GFBYy2pOwJFS3ffnO6yOegnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774536893; c=relaxed/simple;
	bh=Mz3DakQ5WpyBJ8Oi8JWADBWAn93qa4IOFIYQD++oQ0E=;
	h=To:Subject:From:Message-Id:Date; b=DJV9A+c4xHr4eHubkfrrGr7lplPQUHYpAOBukIyikHjhf3WvHsmQjWwtX3x228qI2JqVI64tJZR6RuA4fMq/UyKSC4E2GOQagEssP6TR94zz/eaweXLczUlSPT/jgZE5PiSvvupvnvB4MJwn1WkWaAoZJ89f+ltEQ8sSl1kKNQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t37GQkQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t37GQkQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C40C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774536893;
	bh=Mz3DakQ5WpyBJ8Oi8JWADBWAn93qa4IOFIYQD++oQ0E=;
	h=To:Subject:From:Date:From;
	b=t37GQkQrP2sbdGeUANW1vBRTV/eUpaMQ73ht9JoGWSgMYmHjmKxA2DuCD8BLVj4fJ
	 wQfUEqOjH+lQ0uZtEWlMC/Ic3OCmw5lb+nbUOmiQ560q+7EKifT2uuiwI26BTDEJQa
	 86cyggU1BWAzqCbrt17i4wUA2u0PXUl3cYWqsOiRwvwosXV6UYwkuZmRRruALBEesZ
	 tDThUjqvCP/3m+Zl2oeDEh/NYTn718nOJe1SlqbaA9Nk47uOmwKwNuuLmGbNFTnVZT
	 gEX1xipk07HbVr14KQh4ZPg/+evk0dJOoQotcmW+McCHL+3S0hkd8eXqAJkRoVQKjo
	 ypmlJ+ObMaH7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9268D10A62FF
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453689359.2895.11828885045025900274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de20b057df99b469bb271496c4834899cc4fb1637ecdee07afcdd3760f5a095
Date: Thu, 26 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774536893
