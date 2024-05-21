Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C094F217
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716277343; cv=none; b=VwVSATbjotlGT+aOcV6RFmJETSzC82aoYGrJq5rx3rZs68oPr99sGHv2COcpFanNmRCXv1JvaWqjnVtAt/JQ4M4F/KCg7zz+CvbWBJ04KbA98UkjjHHAii3XYeMr7XpQ92CLyGqTp3597a8+oZa7UMy7lywK2RzgKQJhDiJETWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716277343; c=relaxed/simple;
	bh=36HdAvL/8KZn8epR8aJeRBEzDSFQ4u/KHUe4iFzkCbc=;
	h=To:Subject:From:Message-Id:Date; b=ch/Y3uezEghiQehbTvaKgnFzfgcBnGxhfiZldTDiUOqOv/EhzdurGZMYfplX4rSlxDdJhe7g8g9z2cPLjS2502ulPV6OraKCW4Dc+jB40oEsbVRyKh6KVjvImN9EEn1YXZt372UYav7rJxGu/09skhnYjIWD03MGIrXAeMDEtp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGX4Efft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGX4Efft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6111C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716277342;
	bh=36HdAvL/8KZn8epR8aJeRBEzDSFQ4u/KHUe4iFzkCbc=;
	h=To:Subject:From:Date:From;
	b=CGX4EfftN2K8exKMJek09NNDa+69fIdN7lYnQKVDqtCGucEW2TpjNwKkCy9t9R3QE
	 gxFt2m30rXsbdZzPbY8lLm887QCQReXMEHjTVrFX4VGEtsSKLE/XjE+lkPXjujT67U
	 U0ait5sECoeNdOy+lnf1aQJTSxJopEydHBCZ46nF0931V6TTJV/1LCmLL4m6PhhyAy
	 XH7+1/tDVc6AqW3CzjEFKQ47qNCtiOcKPSXw/WurU3ouemnQv68PeIk+DArSLI/LVg
	 FhxKD7hurtiFvrrPb8GyN60+L7umCIbn2eqo9hAe4QIXIbjj39nB1dG2zc7bljNJCW
	 bWUhlcQslqdQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B41C25B78
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171627734278.9004.2671355312548933353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e715676cfaf2e6991698bc62a005b4382a12d516e2699cc1c7b375992bcb30ad
Date: Tue, 21 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716277342
