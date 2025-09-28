Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04D41C1F05
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759045793; cv=none; b=d+iVaTfq46xBQlNhASUfOewWkFWhJQ+/8U11LpkXGwcf8xdr/N/lIamZ0DFk7PGiFdfmYYEOR7y8Zcg7G01DUonowiPcUFBVQJc4sLK9/qKR+PpE9fAPvGZ8qZP9tW6ADJvueJ1PBgf0FNgr9GL+PO5WzabcbdCKitW2+2QCoJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759045793; c=relaxed/simple;
	bh=pPgCzXiRx7cvc3PzPeQUmiq4S5BdSafk1NQLu6/sSyU=;
	h=To:Subject:From:Message-Id:Date; b=jov/mQg/ePvJrU9UgjSRly0UVdyoDOa4hj3YRuhH+U+vncW3sUBTi+dpCK8uKCTRgQxABKPT+pONkXqvZzbqwW349jWH9ZkEtQEJJS794TTbBdmUpcqWQPGhfu1tCCafOjpD/lLELHhwW3osioayvOm4OdFAIin0ErM4G/nIGyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pvvq4pjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pvvq4pjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F990C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759045793;
	bh=pPgCzXiRx7cvc3PzPeQUmiq4S5BdSafk1NQLu6/sSyU=;
	h=To:Subject:From:Date:From;
	b=Pvvq4pjBq04Z8Efdr/4hHLoxY6jDz6KROB+4PJaEWzrSgWGsuv9hSnGEEoAs18YGQ
	 n6GbAbFgZ2eEH0yXmPK4zVo5B7D4BYWVEcgToQCobsJ5JN2u/V9yCVhyTxYpBXma7t
	 ln1V7PlIt+UFrsSyGvuTr92i+20BC/5wSJSTs6lkNH6VqP9zpz9On6DYWQEATKrD1z
	 sqF+Q3E/BxZw+4zLlrwm4wkmDdDFV7C9vWmx6a6akUcYDTqMEs1uLbU/awF3944tGI
	 0z0a9gNuB2LmQMWlu1vqy8pxx8/QwpEByzS/rmrBMzczhVJbjmaWK2zF8/GizEdXVL
	 2/r0dG4Wgd5OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EDECAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904579358.18761.12134169531167144195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2c452e8dea2d9f09cca37d8e8d56b6b7e51eb3266c8baee250d7eed862dac5
Date: Sun, 28 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759045793
