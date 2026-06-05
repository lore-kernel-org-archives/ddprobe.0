Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628F937756F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780679074; cv=none; b=Za28peW+kmoVNIlJPag393TifZYcPgsMlrtuOiYh2nLyoq+r3dJ3Z1HxyPk6jieG2TncJw7zgTBBbiRhv7CW0O+hbiYtXg7ve5XGqbgc5eWi/Oxx7tFFUK2DA2GxKHGKUw6Z0YWhpLzPpYiUsFZ3OccbtNKRC58lXoAMaAyQM7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780679074; c=relaxed/simple;
	bh=obzYYhAUxkCBOP6mHBYFweN0L3IvPWcgeR9n3FGcPc0=;
	h=To:Subject:From:Message-Id:Date; b=FIH7Fez/++PmjTB39dQR7cUOg7sotHgoqUn3dyV9mvOZL7tS71uTCKb6yEoCuuI3madDMGQe9z9myr5S7f3zp9V69lzw3YgRw4drPmNWW+orXp2QVIHTZc/R681K4RcwLSY3tRuzCxYnouq5AXUEOcL3lumTrJnp68nqNnb9lIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qp/By3Rc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qp/By3Rc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8E6C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780679073;
	bh=obzYYhAUxkCBOP6mHBYFweN0L3IvPWcgeR9n3FGcPc0=;
	h=To:Subject:From:Date:From;
	b=Qp/By3Rc8NEPSp6Jc6IRN4+jpMXgFMN+et2SgOOzEDEoUt13StQo80isqAYpIfYAK
	 YHVTVwyJOub6my8kJbk7ACeqVKgoBrNHJVlD7gzQ0wXSIFpko5sO/NrC3KMfYWyx7q
	 3GeEp4Z0gSPGsgCs3L1egyLr9o1RjBIN+ZqL5E1dKNbkxxg/6BVSLEEICm8zDvoOT8
	 nXrwhyaO0GT8rF1BGUbLZgj9aKt09N9465h72Bzxws0OfFl5TY/4SIgvD4njt60uOH
	 1j5g5x5wfoTHuZQJeliS/TNPrlLA81aQ0TFc+lj0sA01dDD7lreAWae3t1AmFHXToc
	 k2QisfBHndCVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22AFCD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067907372.15472.13254685752578655568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f72a8b0cd9ed068de283fe9d8d49d8c84c02d33f483b208008cc9a8da32df85
Date: Fri, 05 Jun 2026 17:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780679073
