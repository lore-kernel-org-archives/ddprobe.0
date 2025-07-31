Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251A519F101
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753932594; cv=none; b=QluHsQ7SkiJdeODqnh620TTsOrq8dE6tNelOw9u4G6fDcGyNy3Wmqoi9wYxHVaLS781LjxMvdy8hY5OhCJors3dKv/HtdXxYk8UAR883yTGX4GmQx0kGll0/ObGke+BEGxszUjYUL4atlW4Rq2Tpk2LeOmwbUsxfUslAbonb1r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753932594; c=relaxed/simple;
	bh=yi1JcAT42qm1DcSpe80TxPufGPzleXrfkkmZoZyZifc=;
	h=To:Subject:From:Message-Id:Date; b=dqFDKG4fMJ+Mj+g9/wqYjQtdKGRgnCfmQ0qQ1397NL/M0cYJBy+T7aJ9VgfGK1tJSXmiKe97I1ujtZW2/FGd2Qj6gJm89RuQcRbKS2ae5PWy1DoB2LogA6T2XDuxHPYs1711O1uscgo6kvQ3OqjCcJ6GK/nAujkNdDD4oj84iyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fon405w/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fon405w/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B52C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753932593;
	bh=yi1JcAT42qm1DcSpe80TxPufGPzleXrfkkmZoZyZifc=;
	h=To:Subject:From:Date:From;
	b=fon405w/YbIdj9ys+GkdHWpL8O//mYHCltE2foxpfnnvll3OtdBeU+bThhNIZaAL8
	 EIaMZKV52f1Zhmn3o71wRnr63R4SvY+ku2H/JgnsdwpTjUdS8CfR1YmXfqktjY588Y
	 FJLBDoQmKx+ExDkMSPHK0oNB91kRI0kRFPkv+25ksHWMSaPbw3/8O3QcEl167FwvhH
	 eCYkoC7HlgdQz3rmuY4oStd59d00vI4uIjQpKdv1Lfbs8mEHrJyLAAlIILVi6ZfYFP
	 /Zsu0KhwvOJN5VWj7IfAF6I6LIaIsdrnRQyuExAJgLRmL+6gmyYDA6uJOwUJsukqFA
	 qGEBLqyfbrfpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FA7C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393259357.27025.4961281585690995310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f1fce236f708d07cdb6bf866a92ad420f027600501ad6415ab228e1be84f30
Date: Thu, 31 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753932593
