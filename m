Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183CE1A3A9B
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727981154; cv=none; b=K7iqbFR8XwyA2PU17dW09s6sWU2KpfcgfQAuvHJhYH+elmQ/8mRLs5ca0L15EdyCp4dl7/2pn8KI/tuTJgy5Kkl/wx3gC9OUC4u44HRIFctlsBE4itmAfo4bqzLyMFraFXCVY9/YLttG4F3mNDORErXEKng5VXxyddQhDteqOAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727981154; c=relaxed/simple;
	bh=u3dqzMa6WWmzjjj9WtAJXWrIdPD8E5sDFNS5KLdH89E=;
	h=To:Subject:From:Message-Id:Date; b=KQ89opVyVO9kHDpziIJJotJMFh4l1ct9NGBtQL3Ju4OqxaHrxzb6iiEo7UJsds6XEPnr2DridsCof1lx7V5upRYFa2zB6iKIZvz/Nvt4mkuPSIQqwkwCSztDbGEEpkSU3fDMNedrfH63iC3r/XUY5b8xP76/vVW58M3UuD4YF+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVq44y4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVq44y4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20C3C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727981153;
	bh=u3dqzMa6WWmzjjj9WtAJXWrIdPD8E5sDFNS5KLdH89E=;
	h=To:Subject:From:Date:From;
	b=AVq44y4jk3hfwUxF3ridbqC07arClz+50wgbNtHDn+BdBQ9QBu/3AcW4aR0jAMS14
	 Qh6SKe9JhEzrJUWjvBW559Ru8gbag8NREhXmjhvC6WF0Ek/WhNHgNSp8GR8ZHmAzb/
	 VLPMWjGshKv3fxnfvE+tUNsmcidFCSy21egvEw1ivA8IVK0+YPgz2Yveh9x54VygHh
	 TyjzeaGjox3jwYsos6At20BLD80sXbnCeCwzQSwI1aJT0BFhzFe5lnXiqbteWbaSVS
	 X3Af3gOqH99E4COmG5odJ6PjX2zjQHZmVGdNRVgfnV6pPB7BhjyFw6oeoUEOsQIV5S
	 Jv34vKeILj/8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90305CF34BE
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172798115358.18915.15748274954343670307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a1d9753de6f73de10819594cc5879edfb6353c68b8e27bbf42b4e8e4bacb04
Date: Thu, 03 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727981153
