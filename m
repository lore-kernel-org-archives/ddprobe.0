Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660C1161
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719018143; cv=none; b=X0M6phYs9saC1UGziTyq91/S16BppFOXkce76WALXhOezFX4Jryc3Ud/gTLQ/rKj3PIG5IJBxtLI2HmnkgGPnviDPfK9oMXE1D15px5vnsFa2ss14P9TxYqVP8noatxSDZBjewKdzSM8DuChZdJ3EqsP4YR95UugQPQcWo/WFxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719018143; c=relaxed/simple;
	bh=mrF251VbrJPlO3pJ1uXu8Sqc16LPLOdSbyC55UtR4zI=;
	h=To:Subject:From:Message-Id:Date; b=J4iMWKK8O5L40enCHXQl5HW6I3neVWSEhtlwjwiXXjhsEhyJpfcS42brlr1/2EG/F0nGcimJS4L2H/xK+QyG1NuQd1IhZjH7gdjCeAOxDNCdnQxkO5PH7lefGFfSJ7R1i6uHY2tqtQtU/0Ga3cbbZEULD+oks3J6Gi9cx66J8X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHjvZ5Om; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHjvZ5Om"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C0FDC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719018143;
	bh=mrF251VbrJPlO3pJ1uXu8Sqc16LPLOdSbyC55UtR4zI=;
	h=To:Subject:From:Date:From;
	b=WHjvZ5Om4P1tfV0B6n1Xz86duIeDf9yBsmpA3w5raui9EXOYQ1wUTYrF2/CA7E+q7
	 eoVQRRjwmxNqJw6oiPjRFI2zKCorY5xlbV5iPkMPPdH7MFfVR/JjUAE+E7Nlqd0Jau
	 tl3xXmxPUSiUqCQ02Wipto0Ef/Ql33PIBwZkM6yjNvCmSKXL/0zhm4CQHd+QyuNgP3
	 Em9D0dh7gE33kU2le4Xu6aHvmYTKe1uWvXVdy2pPk4ZtTfIACLciHip294NoLmRrs+
	 7eEInG84kI+53wxHCiUlMZCMO1kN/aEtNinr9OoeqSlgpkJZorhjF28dAZZeLo5+GQ
	 WMH1CDzmt4p8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0D64C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901814284.18110.2802631540890946897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61dc6787d6e9bf8bf9415c67256258df1a9002887ab5c4aa82b119a8a280921
Date: Sat, 22 Jun 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719018142
