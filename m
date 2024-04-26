Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462791DFED
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714148543; cv=none; b=cHOx0e1uvYVsAnaDaZA5BG3wPax5ui/8iycoRppuE7jdQUNeIjW6yelHD9H30bnhEh9HUtY6rCXIosu3p3/heUN9llWihz9cmtTP64EYaV0vGgq6kAHaVi8gVqAvqbS27dNEJyv1wsA1YjF+84o+QPqFWOiT6gcuVX2+KIERJmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714148543; c=relaxed/simple;
	bh=8CjBXf9igOUw+SO5pF2zf7KF0iL0gli7mz8zvzAqt4U=;
	h=To:Subject:From:Message-Id:Date; b=qgr4cfGINM7mm9sb3YNJlNFadtzbwUn2SGzLZ0xrq04tVzfQBz0TdbRamRTFxR5fe0qPX0bcmyKVFSagfHXKRw0s2Wpp/3rckxFfQxotwBWrOPjNSAZph5omwUb+VsdIjBxtZCHX9SNVL9nNex0SJWwzTXdkdeTvP4Pte+8+/Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8ql8UjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8ql8UjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E208EC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714148542;
	bh=8CjBXf9igOUw+SO5pF2zf7KF0iL0gli7mz8zvzAqt4U=;
	h=To:Subject:From:Date:From;
	b=s8ql8UjVMtPX/VyKn4/hbOBImJdJRZQwvuTnOJYTIUWxmh2O2RIPoMSFhzgmVe2KW
	 STyt2nhl4TxKREE4nS6D/v6viCBA3lFbqU9NPvxY7f2adDH8tWcVe7Spm/nAAMedA2
	 uG5lSPTtrSK6P0Fh8arWKgqd98xG8etVbSU8euOtIr2c+/GRICQkkh3A05sH9EQR93
	 +kNZK5svz6Yb/+n2N2ySEnqt2H4wU/+UZvVNREsVg6+KoJDv9oAXM2VvgiB7zNmHlJ
	 FpYtaA7JIeX0ZYFaY8DYHo3SIBfKT8mmTYd/X2aB3Ptb0dQCeMy3Pa3I64eKQiWF3q
	 8EhWL/1QNbqLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBD84C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414854281.6056.5864725405984565805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa0a2fd42f93d1de6ceb408b3d11fa3a240edfcd2c918f5f9540dfc91295a23
Date: Fri, 26 Apr 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714148542
