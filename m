Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4832C14F70
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782353854; cv=none; b=enzHAg9DKXHb0+9KXs5Gk7ql86ro8hauWctphGNDCSUy8solUBBde3NznuvYTxtpjLDGU4mzKLrU+7nvBwyGpMBq9AjHxX/cQYN8SCUW4IPVK7Hfd61UP29iq3L6pE0WrkSpdmc9undBE+nIi55GcJRWvixghhYuXqFNZW/EPFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782353854; c=relaxed/simple;
	bh=oU78K3JxajyD5nksNQbb23EOzTKi61JbA0SRYAjmNFQ=;
	h=To:Subject:From:Message-Id:Date; b=izXEYjKDclfK0oAfswOYDq0GATWTzWDbHPtBFMja56TQi/T9HrCa85US1O6OlIottQdcU6Wp6yf1o7ex4Z66K+TQn1dLKs+Bh+/Q73nBlrIwsVvxImgGsjWGqRzHkEsWMU8Jn5LtWtwj0dSZuiGPytzYVeY/Vzan7cXPjCZDlHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnkfKwcy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnkfKwcy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8777C19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782353853;
	bh=oU78K3JxajyD5nksNQbb23EOzTKi61JbA0SRYAjmNFQ=;
	h=To:Subject:From:Date:From;
	b=TnkfKwcyJmYAchkPBh/sDeqqMetVjB/aXtKgki8wwFelGLQF4k1IgvCLN+JhVzkkD
	 kXpGfZEVnykLkWY93J0I9FWEhnVCVxB2cuY8D0vhls7EfJZGouulDke1JwF/2QLTEy
	 I/HQqvTd4rpHTCYk/a6IKQ8UQKH1WAW3e5apTBHyYAWczPIDI0Fl0dS7PfbY/tFjRy
	 uF76k+p6Qqgkg3EMA72r4NGzN+I+bj7tWgETNOPBjO71GTsHZRB8su8pGR4GpaN8+A
	 3eiJy6vF7MA4HEByKChF5cnTTW/Q8TMRZCGPzF6PgxCe/PyjZNav7C1I0w0rP2XsDr
	 wAC/+7Z85uXCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9FF1CDB47C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235385373.863.16655685992554586946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436f3063066b4e1b85d5e5c573fec6fa6a4e13e7a8e53ada211aefcb69f2cdcd
Date: Thu, 25 Jun 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782353853
