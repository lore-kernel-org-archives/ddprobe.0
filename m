Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9922D8DB5
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760448594; cv=none; b=hrpzKW0Tpa6CvNJCntVdBwXnuj/uUsV9i0iNrsP1BD3cpDvkCjXL8kRIwylLbUrUxuvGa0yH0jjlRclxY/iP8rmvTG00dixVZzDGb9981dN2CiucgoOT4GbGUhFdZByMdoMgW3njyvCzLCnOppcw5Msu+xTnLhaNV/4MGOmwogU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760448594; c=relaxed/simple;
	bh=SWXFJIOEiO5zp+wU8vjQabiOiXU7Cih3EJHsm56/0Xg=;
	h=To:Subject:From:Message-Id:Date; b=ovFIe5kN3LQDs3eoecfLdZKan69/IuFhzc89yuAs+J4v5S62kKzVG+ricxZFOuICupAeoPA46iQC5uz8pz+TQvG0S9dbl/V1dGZl1WSvPGaIjKI8/+2doMCd/fMuO5dCF4y2pamBqpTQRNZWE7hht2dZvwE2e5czZ3IFBif2FgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wa0Cr6Pc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wa0Cr6Pc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A056BC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760448593;
	bh=SWXFJIOEiO5zp+wU8vjQabiOiXU7Cih3EJHsm56/0Xg=;
	h=To:Subject:From:Date:From;
	b=Wa0Cr6PcIvl9LGrWf34D6IdJzS65GuABA9nW0q4riJ7Ox1/TeonFgx5lkYIj9ivki
	 M+fxTUyU8T6RdO1SoEjThV68x5eCPDAMpPAy95CwXmfI689wU+NYHOW7ZB93gchJ7B
	 UjrQ85+SkZTWLUxXDfeHCp4PjsvzBpKgo0p/tEY7j41bPYBEFPj5OyRnP07mhQRMhd
	 BezJ1pkI7fePKnEPwBp0ofA1BXfskWJVBAaP53Cw06iKGC5vjxpLT0W9PwAT5oSg9M
	 UnLAEcK/qkAzmASlX8PCR6OlTPmcEe0ro5/+ZwrL+vj8/+5VxRdRl0EZre2YOqvpHL
	 6pnaucF5NB33w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD1CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044859358.1080.16101191985849663146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85b7bfcc8330acaa6e05d8181e93ceb34c9a05686da9acbe3488cfbed64302fa
Date: Tue, 14 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760448593
