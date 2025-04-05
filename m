Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A60224D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743841194; cv=none; b=A0K8zJOFXowoMPjUfusFwwwvH1Hh2Aw4knDZrn3wBDHqB3iHqpBbuRw0Lt6GmoFLkmkiEJDQGnats4Cao3nEpxjCm13PWzuoXENDGVct2vDecy4DlMfGGFYJT6xq4pixTsl5RFZN4dPHe/s2ZuTd4I1+PwaW7fMLLru9B948hPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743841194; c=relaxed/simple;
	bh=8H21lvfLzcM3U3Jlart3/BiTrR7ad5BwHxrmdx7dDOM=;
	h=To:Subject:From:Message-Id:Date; b=idcJQ2oqmk/6TQfKkwBcTXac3VHiX93778DltFOfi4gM6AMQGe268oS0TsZAzc6c51BUKs4X8A9PPWSXtcFqG0A79INFFFu4IgBD59P4Kah3yGR/uSCOB4w70hJFZUSR8NtKQnNPkdUteFP3D46Wds/ecUU92HU54yjX0Mq0ezs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofTGwBP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofTGwBP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCD1C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743841193;
	bh=8H21lvfLzcM3U3Jlart3/BiTrR7ad5BwHxrmdx7dDOM=;
	h=To:Subject:From:Date:From;
	b=ofTGwBP7Mpccdskbddt29F53xNkFsMlNFwh0SoM3udRVfO4DYGpxXX8usWVvX5z0o
	 1s/GYAktN3yJpXmEqFG3UzBx6efs8ea/ic+9pjn20EUe8MVipp71cL562tkjhmmKDb
	 mwyx1aGaSahBUnwKKyNaZmBO9J0tIED331n59KMdqcclhiIhiv69rfe70LOT5CrPBM
	 kQZLz9eD7Lk4Cmk4ZMQA+uLcZkuZ+NxgxwVWqEQbfFcK7j6Lvq0VU856kJ9IdESoTU
	 G4jBiPz3E0QUsVHB/RVgxI0iCYEzwa74YYSdFHvuGw4tNz2NRvG5UEHtGtxfBRsH5j
	 eqKjHJXfhTKRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972B3C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384119361.19103.11018752051762543166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888657cbd7461d44f16f610197ad6a0b995b4569cafbc9960faea222fac14fc0
Date: Sat, 05 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743841193
