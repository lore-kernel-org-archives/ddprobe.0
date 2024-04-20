Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605972563
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 10:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713609623; cv=none; b=M0O3euCVABHHl7hUEc9PsQtg69u1P83sVuMg54ECmbT5YfxMGaih1NlCMsIOFsOeEkpOLLotJ0Nm4QLJWT6AU095glWx0ANGGf+5YvqldTYKTjqWZt9Bk9NR2Wbr4PCQeJGeDcy90SY51gZUgsBqoOX/Ad0Q54sAhG2lAUZ9MbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713609623; c=relaxed/simple;
	bh=w42DOca7HXs52cbIAj2O+NS4q9Etpy5tN7rPUpYY5mg=;
	h=To:Subject:From:Message-Id:Date; b=l1ld+t5zpjC7HgLFCWkacXHNYuqYdobR8SLb7+GmxTjQvWL0m81gmPqf3kTIBUdSL1jC4wTXoh6FS74izQNlm9ZtUJ99VD3uLRXxZkpJio/fZF7uYDxjaXPNhhLFtSQRa2/Q2a34fAHK3nJENwEzGBuvo+aKvtfx1r4jVf8FWs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqJQ3Hb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqJQ3Hb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5143C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 10:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713609622;
	bh=w42DOca7HXs52cbIAj2O+NS4q9Etpy5tN7rPUpYY5mg=;
	h=To:Subject:From:Date:From;
	b=EqJQ3Hb+ujT8cfCYHLuhOSseJzqFkEgkkVqXHTeYTycVPfNyfibJRk/cvEDpeBn/9
	 S2ouwXpJjX1e083TuEG2V/UER87q46pEHyvDFKUSGb7TcR6MxzUT5hylknUiHX8Y+Y
	 hmNB/v9WI7drrqr4IIopasEBdxy7VDKy0Au2lptGbgZEmnMRAHnN1kHIrNv5X8++fn
	 GUxWUxmm08ek+QJENk1uIw/d9bpdabaq2ziXijg/66Es+uE9JCd8nCg8oVO69tr68W
	 6IxxFw1awGYkb64KBBETiR5XaUKJGkhMgyw13j0IKRWhrkDm5r9MW8xM+WTNoM+Pvv
	 SQXk+ycS8ZcVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB6A5C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 10:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171360962278.28766.1610456147798713080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59e0b7396e9895483e1f6519dab1401a9011420715a8514debc03dc35848b9e
Date: Sat, 20 Apr 2024 10:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713609622
