Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E4B3C0C
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772872494; cv=none; b=ufekh9aklVaptG9g5U2RZNO674eKuqAa6WBpHwZwdvxYJHQ5hwqwxW5NzVU4Tz1qJr+YrQoflg8B38fux9opknjES/cTRZ6sTFddrep0ST36Y5bYpo+UmFwJvcwERH/+0wX2uhXpapUuLjzwnrJH+HE06yUobyzDTMU5viuT4sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772872494; c=relaxed/simple;
	bh=FgzxppnuM2xHd9+NbrXS/TgbkJvw9R5PzuSW+fKc7Wg=;
	h=To:Subject:From:Message-Id:Date; b=j4Z7ZxQFzKnK8bIfbaYBqpnMMw4DS6XOxo6EZAR7hIvo0j2igWZOEQAeiL9HTYJ/pYp6OnC66JRmxXU00+hBborpB7S65v+d0832qOFTTepZSL0y8kRp1cMNk5J/o56+bA6tdA+O/xcpr60YNhUMNFsJnnqboztWG+MUzk5EkAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1yMTPe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1yMTPe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0205C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772872493;
	bh=FgzxppnuM2xHd9+NbrXS/TgbkJvw9R5PzuSW+fKc7Wg=;
	h=To:Subject:From:Date:From;
	b=G1yMTPe4InS6OHa+xM7B99FmFX7dAXFlTHcGAF67RFEV0NGsn68uR0Qg9O98nuR1J
	 pywrHmvAhi/7/UhaSbhyiDzQxqIA2a6EQU9u0inFuZbA4Sl7+5+WbuAuNxELLKCQWy
	 AKne2c0ZrIQtwtsIoVFi4OQt5+TnnO3l2bKXUGgS01esvQ1b3rzzX5iF/Ij1Vb9qX6
	 B8krqDlDExfHhQuQV+TjNJ5ORFIyXvLo0sMkwMwV74sSfL2q9BwIWQY3QwUNbU9Cs8
	 5/5uPrfNZWfh2aeh8k6hTx2rXuxu09cHQLbOECU9le+g8MMmOsU4M8bAKuZAFdgLa6
	 ZLQNn9c22K86A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5FAFC9ED3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287249360.1915.9717669903603376629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 402d82d5d2f3b588d143bdb7ccb6e3eed3abbe77dd1a7d543e07808736e5414a
Date: Sat, 07 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772872493
