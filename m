Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9B738B7C3
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771934694; cv=none; b=ZPjdbxtWCIsdJ5rzi9XkV8sNKlYulYQfoEhKwsH/yDWSoqE+XNGxUsfztU7TGLRZPY47mK1SrU0HKdjuFqaB08PddXZy04qARgM6anlk6+GwhH1ZDcISHkHCqpJ9lGg/zFAdmDUUQozvQxySFPMOLxTqDPbr73jmqOlmNP/ZUGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771934694; c=relaxed/simple;
	bh=kLUjpVSOBVMJblDQ+8bYgVt40fHK1FYkEZTRg6H0utU=;
	h=To:Subject:From:Message-Id:Date; b=tBMwP/vuq+ZuWPDAqEJzm8IRUUQm2YVl1x6I4+aOPcR7gLS0A2CVEz1fvn94m9aVlKv5KIEc2hXPZUoEbyXl1w9Nj2DajCjh9LHq++EMEzDPr2Wzvq09eCtuCu7expBx1VBqYVx+L9jj6ygy0xzSKsrlnARasLGwkkqWfYhpZTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEzQIcXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEzQIcXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA839C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771934693;
	bh=kLUjpVSOBVMJblDQ+8bYgVt40fHK1FYkEZTRg6H0utU=;
	h=To:Subject:From:Date:From;
	b=eEzQIcXOrjC2vJ77IMW6n5Gp+/7SgXfk/teYfaQFpkvqz4Qg7caTeDqkpSiK7r9rr
	 QaaiTyc4HHqeDULvFrRq1w46wdGzO+6QpEYExml6ViH5PbyMJBqeoyzQtUj7UKvaG7
	 0bgoydnF+f72vooqDZkToXOVqhUQLvUtbUYEx3n12Ym/Lc8onZ78folq+zZVXmqVr1
	 mXv+xgS5ds62oJ+VrNO1eILTPoVcMTIBFDhKojuoSTal3WQr65Idtw9qqic0caIe5h
	 +gC2DEbKzfgrUcJ6TY5JujLWLOmjqMuqfH8Z1sYvX9i2hkCarfVKyVOHodFxXTKbp9
	 sF4vdtMROBTQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C2E9B250
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193469359.28628.9450534493413288794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ef8afb4032c8d1e415e08a25c17d264438a1b9c7bfad4be233395830c4268a
Date: Tue, 24 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771934693
