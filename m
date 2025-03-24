Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41014291E
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742789994; cv=none; b=OMiI3cyveB6/350W5RXPSpijub6CUZ5o0a3vaSK3B9pu0kB5mr2MkZ4gWFgK772KRWV/0HL3f8qEhdTU2X+pvmqXx59CL0mg0XqmxpzodldTbv1yMV/tuE8/sBDtPjtFyhQahZpvXYHBnWxPeExvqVFbxzG51r4E3uL63cDJM48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742789994; c=relaxed/simple;
	bh=qIpvDBoSyE/9dBGcorf1VJwWGpiDowjdiJullqcbroA=;
	h=To:Subject:From:Message-Id:Date; b=M/QADi6JWFfqE1a2vYmL0xrER/Fe1cbKURTSH52jupgy+InCnHa+H0cw82bDcdJSsBkumA8QRKZcwAmevugUwRavayRTYFYRa0mvXmisMvPs+kxEe0f89n5sJE948VZvvCC0bQ2BpiSgXDwzm3YJ5ZilBhbgiLzAMqmU8WNW4so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duS+GTm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duS+GTm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8FAC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742789993;
	bh=qIpvDBoSyE/9dBGcorf1VJwWGpiDowjdiJullqcbroA=;
	h=To:Subject:From:Date:From;
	b=duS+GTm/Nnc5OloaihNI+XzQK5lMWVTmgrgG7yDJ2vL1KsQVEv620irWtggjbZ7Mf
	 hVTjqeWeU9iy0M9FfyPTXumvkSvexwHMFYR9ky3ewtnHrdNcEJ3gBoZTKkPzdH5LyR
	 YywnGj50kxyshsTnwnaEb3vNNnPROzoXH19Vp7Juud9CpuscmG5Xb1TlyVbpCjJJLb
	 /755RqmkIS9r8BQWfTeWpQvYCJYMGm81RZFejmqy7vWoiG+txLeqQfIvJprpkUuPLv
	 URXTlnFxqQkFMEWexJ0djTNH17VqmKMMthmOohgERhLpwS5XkfcmljgNflzBARyBLL
	 Ceg6oetExSZyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E91C36008
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174278999362.11093.8004026699769941555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a06395a2420bafb56850979c20540af46b6d7985b9b7427fb6a9cb981aee6ef
Date: Mon, 24 Mar 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742789993
