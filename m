Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B18313B2A4
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749203394; cv=none; b=TzKZicoVW8KVv3Ee+X8Uxx7DwPKQOTO56j6fcCveUitZJiYQmo2eRADHkPLDk7hC5g1kpM/4mBFDucAbvXTBeZEzU/198b8KSMRglLAijr9Ppb2Ms9+BSh4XsMfApHbp8DKkbN1HZQEDlAsvx6Q3uFdBskSv2Brb4oU5SweHhDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749203394; c=relaxed/simple;
	bh=meatpUY8tcs5frgQ8BLhRPM6NoHoxnWyGV/+zyZi0/g=;
	h=To:Subject:From:Message-Id:Date; b=jRE9RgWfUd6xEKVBz7VBxwyQLoS/j4Kr7rYPQc0gIKuJ0GPt8xWGBBQv5hKfd0jhE1M+Qe83hE/SbtbiHr9sd29SfesBKOJ6Fl4TwqQJeub7s57xV/mcJXfGpb6JJREgHdL3Hgn0TH4UhA7aXB/zuGn40Fi4SmLaIkZVoWq9YOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSJQ0WYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSJQ0WYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5676C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749203393;
	bh=meatpUY8tcs5frgQ8BLhRPM6NoHoxnWyGV/+zyZi0/g=;
	h=To:Subject:From:Date:From;
	b=NSJQ0WYG2XbtWo7TAXWu5gcALcm0KOEWlHJYTzPsMaX77uBFPa5kJGEyNwV7amMTY
	 YbFysEM+Z6dIxwSvx4Ao4hHJ7X1SfO8EqqS+iTW3HHikeAcJFQkU3VYzvYmJDiR+Zx
	 L0OpKzVZwf6o96SOx9Hk405rb5zA81OfG1vEChy0U8yVK0sXGeRY5aviolYj9lGsj8
	 T/qj2rRnzO2OF0jL9jbCY4n/e33l63TE2fPzeOQSg4qTx9Gg2YLexsX9tVAc5+4yMX
	 ZXLW7gIb51VaEEaP9j2RjwoXlPjziXd7mYg6hdzgPyU9BrXYdvdgrT4D6eYkhoeCHK
	 BIj7YLdjxQ9SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91228C5B559
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920339358.24821.12920115580741942492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d27883ed626a37100d3576b39c9920902c4727b5ddee4c63b618f9a47cb01f
Date: Fri, 06 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749203393
