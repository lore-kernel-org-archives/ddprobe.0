Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D072E88B5
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750788593; cv=none; b=AWHDgEhxr4p8IBqpxhHisqMfBmGLdrt3KEIRsn4hK9wLY77QkdWZ/qHdGyW7SO55uq7MfTOteuZT/Ud6gbdZOLEH9Mhu9E48CyD7dZxUOeyGUpfbsMLlmNYg02OE5wYEgVl1zXZXxfgOSQ+/kYQ52qrXfPiMGWMGKr3bkfZXq48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750788593; c=relaxed/simple;
	bh=ZGkIrveP2+J1kunRMW0DAWP7oEoHSclFclN7Q7eS960=;
	h=To:Subject:From:Message-Id:Date; b=n3cS/pAVhBrK27yXSbLLVwWKIHNs3LvLQIRJ5wStLbW6W/QMPcgCnG2Xu5TTvKZnEoUvRLrWwRyDUfSVKcS9P/4ijf0UeXBPTJ1IxwoklNwKUzh0KpK8F3ixZAvRXni4+kXaa7oowSQDEqvkiQ1iHzqrtPEQke2KkNGNSzRKKlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyQh16PW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyQh16PW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E7CC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750788593;
	bh=ZGkIrveP2+J1kunRMW0DAWP7oEoHSclFclN7Q7eS960=;
	h=To:Subject:From:Date:From;
	b=KyQh16PWG3kXrfR3TcFWbakw4yDiEoqnjSNKaDTVgOj0vOe2zOIQ+LLWF1atmI7lM
	 fhgstfbg+1L2Ai35s72U7F/z9DiplYh5Df1elgB0JPfLzTt87nTurTsEXG4W+DnVWL
	 533Qyl2kpre9P1kvCG0af0WfyzmmrRKP9qhqObXtJ77IEPE8dbveDAd2glDbqYT+uB
	 KljuPsNOOejC5C1JkIhFkjQfShV4U3moNpOZDB+BLFttXH9gcSV4cc3nvAlaX6wx6B
	 1YySq3wOAz4tJmAb8PXlSDe8TrcdIG34pLvSkV6/ObDOosNfqgHbJZesK4I3gyE6Zt
	 OQ/CS2LTMGsww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBEAC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078859357.26976.5500652846224952616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d0c57f14c24ea3a4d664d7c14eecbe0bc1864f08bc50a0b4c98c8f1ea9e5b1
Date: Tue, 24 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750788593
