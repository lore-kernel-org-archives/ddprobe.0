Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFDA15D1
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719010343; cv=none; b=D6pEUftWB+53McSgc59HYxObfo9FEAEBTUmJ6LmX/nx7/8rPazeDxr2F9a9M1xeUJl6x6/hp27Bt4E8+07aiIXkwk+nFtYcO1G23NDqMoJCqYJ3sA4oRhzkGGEbtlsS39d0LJjmWiUGSfFrhgBj+ERQjkF7UEaX37BgoKNdJGlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719010343; c=relaxed/simple;
	bh=aXKbN0Xs5cWwyM10oIbPpm8KHo2//4QBWdW0U0HbLlA=;
	h=To:Subject:From:Message-Id:Date; b=FViMQ9j3JwmATLSQY3b5bVF9NfGEodgPlkyFp8beXTRTP4H6KL1lajx3KM3L+vNtwOTWiKlDvO0/qnQa3bdMidDrfFtPP3mkKFwCcjAylA+vRnU53ufrzJVRCkr1UnId6QPKWEMdp2MYb0rKUc1+uFSdSmniXC6l+7eVkDF8Qj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emwT+MZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emwT+MZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFEEDC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719010343;
	bh=aXKbN0Xs5cWwyM10oIbPpm8KHo2//4QBWdW0U0HbLlA=;
	h=To:Subject:From:Date:From;
	b=emwT+MZT5mnYy3xeDE5WRgHmqx8RDkNBVF5Et0sGuqCaYJNeVI5Yvri91xg1vtbtA
	 8VykD1yoBEwL0e1sFECohArgBlpnACXIfQy/kXbHgxiao3bQxCVDTaDf3XYfqWQarD
	 HnCbjgJQVCmOZH1CLqUJ2YFjljjlNDUOV0cm4qNCQ8QnfEoLKSVzb2oftTLKr9mzae
	 yaGAH3Y5mYGadEf9LLbSoJymo3UkXkQiaOyef5185YGGDIEp9TmcXKzW4R6fsEGJ5T
	 euVP4vlt4I45iauoFwcuzpM9RB7BcElxIhHeKU+LPUkfg5Dm1uilg6nOIcKRxodlrx
	 RKxf5jT4ZYodg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2700C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901034282.17247.3405148854883723632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f238ca0bcdf58aa9da130f187818550671d037128f375b50058284768df503f1
Date: Fri, 21 Jun 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719010342
