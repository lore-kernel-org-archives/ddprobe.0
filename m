Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4021B81CA
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765654974; cv=none; b=dyJglymsjj3TgDwc3MTYPrc2UdZGOblVPvt5Oz2h+FW5jqHlQWXknKGqOQJlHrzQD70sH6ahQ9+caplDyu2YLjdtmENRFSTi0aPKmeyIzYlOX/d6pIg1HmvuKIjdKLFGtBfEV1Q3BLL4Jd4+HO0J+25d1lp7FcBrP4TuDYksZdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765654974; c=relaxed/simple;
	bh=+nHIT2izKptVl0qZ8jmZ95OYLvluoWjQJyT7zLrjL3M=;
	h=To:Subject:From:Message-Id:Date; b=geAfTZVl76KwvXOyz8cEERDoQEk8htlU4TJZQA0VbscIzYsJgqbz/AGlaCap/KgT+rRrilFu2ZqT3SWTxfc8ZTYLM5sLeIV3quIXCKhv5QAGcjiesLyag4+jkNMU20P94fotWMBKHdEO5tSN4nyCqR/tMffSP7voKKvJac21z94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jplntnPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jplntnPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C8FC113D0
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765654973;
	bh=+nHIT2izKptVl0qZ8jmZ95OYLvluoWjQJyT7zLrjL3M=;
	h=To:Subject:From:Date:From;
	b=jplntnPHxVAeeeV6nqmVeO5OuAaIc5bI7iN9wWEeZpA0PVQ4gGY6Lt4Yt9WxGN/NK
	 trZic3PEYtCo18j8PeUKNcFK7Tj0Fu76qolfxySn2Zjk83Nw1PKNNFznW+mR3OWORm
	 jrT9vTV8/i/bh45Fg5XdNFoIrgpdkhpQLGrPZ5V668dAl/iTk9GRDr56C7zEcYU4vG
	 dXG/e+Eg7Xot77wi6qlPaSNpbGHvQ/PQZGSBPFyIyTZBhOlZCZCIOhGUwXCnSW9SNj
	 Y9gT+sELqXTl0rUQIV0kjuCAswga3SmEMf8xoA4S5kN2YJvsFJMsIOzWnRFy/aGe0Y
	 bbjwqGsJZrFYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97609D5B161
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565497358.29924.1358305090496206539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b9370ba1908959d3975255aba1aa270a2e209cbb9d1cfe4c2f1ae0be511108
Date: Sat, 13 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765654973
