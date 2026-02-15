Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D39D241C8C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771132494; cv=none; b=vCuV+O8HiS/wifUog6AfNU316OdJq3OKmSs5Da2lpxs0vgIhXTkxbfjZUrS++5/Ji7Zewqzm/k79ur6rVCK4p8E8hZASypHTJR8s5zmZ0aCCW/5Ey9ZLI9C7bXqSjwH5z8mzLds7qh6//PzzK70vynAdYUoPLBN9DmbyWuUhLJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771132494; c=relaxed/simple;
	bh=VAA9Cza2fCWGEdMex+GAmj8gmjTrSEdgLjNydYlu9V8=;
	h=To:Subject:From:Message-Id:Date; b=fWYH/8rbSKGxJAN5kTsBa3flulQWxzBGja8j8QzKoOLzvQ+WJ1Lm+6iwuyvrh3gorZTfEirqWPl8Y0frALiC/xu5ufEFalVdTnruD0DZOYJH29qQBHJsiO4imA+NaApYOtntucu4b2LzFDMXuBcnOCXbldec4aFHHrSIuaLdxW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgqZtDVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgqZtDVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B049CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771132493;
	bh=VAA9Cza2fCWGEdMex+GAmj8gmjTrSEdgLjNydYlu9V8=;
	h=To:Subject:From:Date:From;
	b=JgqZtDVWzzlusmcjJSBVccCL7o89E1VFmsUqttbuuzusZAol1CwFJ/7BVtT5Qo8E+
	 ndSaF5L9nZoCoBsUCYGkFXzITrzgy06pnH48/jzzsjc6RxNdmRCqCZ+1sJz4KpHYNF
	 l5wFu78zDEsKxnKNFbWaQCq1PxQklXF0PDDzyxht7WYFaqEGpDjgXzKFxDvU/R0r38
	 5+sQkoz/k9KZBq6SvghZnVQzJ8oHN57bwrE4nVs5NXV0XbU2kKm3/h1DoR4shU3n/i
	 D+crvd4TQ9GxNqIHKTZ5QD04RmH0fLmF1Mgh+n29oPzH1ai/ZbbDXtx5yIPlttWnhu
	 dGR1u08vo0wZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B838EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113249359.11852.16781507567361671520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd971f7f328785e2906bef68e257fea4d1b9ee09e066bf5b2d6a037ccaa835a
Date: Sun, 15 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771132493
