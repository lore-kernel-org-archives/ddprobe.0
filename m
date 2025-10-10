Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25A22F5482
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760102393; cv=none; b=MY0TILY8qnF4K9+DO5lF64sVycGk1NpM69dGI4lmpaUN9z3xOYlq72EPBkBhjedFyhsy/nvrvcqDCDCSZKUcZjF11ak2kUNJ9Exh2nsJ96Y0H5mkiIZeg0E64oF+eQfEfce4i5/z+0PQvDcWepIjhwQpH71pROB+pbCLYgcOpFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760102393; c=relaxed/simple;
	bh=KVWRjBh+QhZreYubiK44z6pY70CRAxVwbTW7tBKVc44=;
	h=To:Subject:From:Message-Id:Date; b=gfyWimwcFbapWzcXQX2vDGjFZwGUiUOB9BirXltKaTRh2qfPXZOneERjrcJj64tM2TVVoIK8HmlOo02HnC8VnLxG0te1CKi4Eiyb0kuxEdAzkEWgqqCP0NnMwc1S6VyGT8DTzfEvYAnSrZWTSNcbPmCsJCuA1KAV9z/0NfEJqlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISjoEcyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISjoEcyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3724C4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760102393;
	bh=KVWRjBh+QhZreYubiK44z6pY70CRAxVwbTW7tBKVc44=;
	h=To:Subject:From:Date:From;
	b=ISjoEcygu09vgvH14YqbjbEhfaRajRh+Qm62a1wCUkn5M4xTVUREji18BtmRF5rt5
	 qaQL5iegJuL8sh8xpGdxd2zsqW7oBTtRAMp0GEDt0LLmG9/yZC+lOCNhEXSaMQGMs5
	 oRNEvDXbdlfVXmYLw2Y7n3pg5QHC1dzA6w6R1yVqA5yQfhdZYv56BO5wmzQx/2bm5z
	 FQL7cQ03aphig1EfumVVcjBYSWtGz+OySJI1l9sDceu/zTPqYu0Ai7B7EiRAAfsiiQ
	 oUhbamwwOmyDFAQktb6lC++fZtq5rmQtfb3Mm+LZ/VobcfAz3t202FJM3OWbkFWzvj
	 Iffy8githNarA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9112CCCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010239358.30484.6907747034148124323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b2186e3ce9a0cc4e35a9e1ee8932fb09f65bcdf5acbb5b17e69c05738eeb7c
Date: Fri, 10 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760102393
