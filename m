Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3849E235375
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741780734; cv=none; b=CMws5OEK5dmy9FgXdvPXaIIQiE2qNXG8t3CPNfanYlwGVGjWzNdsfo3lPyZiluJeQxtCQQ4LHyzlfSL4PsbhUhbFBL0jKlAXoKL257uLVl617vSxAODDd6u1AB44d6z+0e++uxSMXstz2H0G/4/KdzJXCRNz29HqtweW/REmFzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741780734; c=relaxed/simple;
	bh=HODLPd7wG2n9v0eGoPjUstIrDCDQbz/wtJOT7qPjk6M=;
	h=To:Subject:From:Message-Id:Date; b=nlgp0d2v0QqPBxmfAoRUXTWmrTirx3OS6Uv+t06b+9nCD95i1uqGtGuajbXSAP2nmcz9aoAuTMuFaa+30YdzE7FcHeWiX3XuStf3eo+RLJKAXxi3PLFmxLhSSq8HmSdxE0YtYNQiMvzXoWeGxpTNIgMJWAolidZwtjoNC5NzdX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtF9Ei0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtF9Ei0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35A4C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741780733;
	bh=HODLPd7wG2n9v0eGoPjUstIrDCDQbz/wtJOT7qPjk6M=;
	h=To:Subject:From:Date:From;
	b=DtF9Ei0jdCa1P1PpQlYKU07IQuV+5hvvhH6y3NhrFm6eV3wfMsWwZGP0VbOPW65dj
	 M2Uek9IBYOd6YIKStNXEqssz9waKdVX7QHDUr3jRMfwNvrdxtckxiSzLlCeezeCG9L
	 OO219DAEx5LadjI6rW2H7uWAeaphRMRJ7huwIqv/m9LvHo9M/iwwuLn7+fYWVWgquE
	 +cPZzojQqru9nm0ihWrRKagW0DLNHm09UcFnL26L/kC4oizdDVWEghVnDYfPQm6Vg7
	 uimRjCQQxlkI3gA/eclV42xnPCEIn815WCboZCRPuH2RGKRGsKuu/q6LmXVyas3npj
	 q6VDIeAsp9neQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB67C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174178073362.9848.12186451193954797358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46a61cca472e93df4555b9d3feba88c9d136c94dd5821fc6be348c933689040
Date: Wed, 12 Mar 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741780733
