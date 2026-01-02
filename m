Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2BC192D8A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767341634; cv=none; b=b58KmUah3UL4oMFeJzOuwjY45+odgPGI+7RYDY3XOlOC1NcxKzWNgM6Gf7US0LcLv94t4kfGZiksZKMM3euwdLdH6VfOyE2tIidPH7RZQZZN+3xWwl/yNLg68HMxkSpQqGt6oCu/2PMcDRvFCS7TL0Uu2aSS4EESpGm+6yOYmkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767341634; c=relaxed/simple;
	bh=AfSxTsQfluqw2A6bshjaTaN+qfDqg9j4ZJXYbfL41bw=;
	h=To:Subject:From:Message-Id:Date; b=dqXo/eRK7hWirTzkC/Ok6Q+ttTJTH0haCQz9KEd2U0GwsDvmLOTItQn5TL+s79RO6tvnimnuXJiLgrzSGctBQ95k2uNSjtszJwV3YldoPMyB7Y8Ui9XkpqM8PVYwuayYU8fU4uU0NZeh4UUVgEwVDuvipPV1LChGSYoXStlXXWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EziTcuG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EziTcuG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5892C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767341633;
	bh=AfSxTsQfluqw2A6bshjaTaN+qfDqg9j4ZJXYbfL41bw=;
	h=To:Subject:From:Date:From;
	b=EziTcuG1Rd3L8PpWXqCMWEo4deqlyQA1mY0nBZWFk4tJXhUGpmLp177Sm3SAC1JzG
	 +4kLEHuTPB/jeDmbDVSsfL4fPzZkyTCjA9xML7i+MwdKpkOMcW9Res+DXDGPCkSKry
	 h9NEBd3s13MpNtgJvMjzZ5V23b/CM7YwK9TgiKxPLVNveP9B/8SKd01+qpfeWwGNrH
	 dYw/7PjXd0CuvbF+9+tqOZ8QGg8u+g/jN71LzHOUl37073sSlheupIw01qC4cXR5jQ
	 eCsCa+cE4PQVMJpGIPDTiPjlcxgb64qrNdNnLbuGxcmrQuLGyJCTDdvJVzZPuCTAx1
	 A3B/yt691l/oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA5EEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734163357.26829.2734114675806938649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fcfe8705d44b028ea3c7ed44aee1479101682e0dd606616f666609d3e28c87f
Date: Fri, 02 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767341633
