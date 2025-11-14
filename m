Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4AEA30E0D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763161194; cv=none; b=KKS3D2FQtTV26wzDKXhJ1rixiTL4KxLgo+eRj/gDFZWFC7SDT/2Nc3/vNaWpYQn8oXIBgWMnVM1ha52nNqOizz3BNp+rwdS5ti7TTtM26MhYHbRzQxdVSqbawJoXUytNHVhy5e5EdN/OPOWSu5eWFgIQCM8VvH2o0cnXnvTq/Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763161194; c=relaxed/simple;
	bh=UjBnCDsg36+0T9Tc9D7mfC4OwnIBLFSRzXbXiYC8ZV8=;
	h=To:Subject:From:Message-Id:Date; b=ntw2102PBCG6XTHxD4GCZnRlkJlNtd9XPEurH6lA087J135T6DfMm0C4moRA8WvIctxYQ7ovMM4kx0sRGYyptzLC6LviHuR8J7POt4+HJGqn8hq11RXxRk9k5TTnO/ssA8cuB9/xTgmnRd5EJZMjfX2gFtDatiBTcNikk89kMi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFm/Jjhf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFm/Jjhf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0448C19421
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763161193;
	bh=UjBnCDsg36+0T9Tc9D7mfC4OwnIBLFSRzXbXiYC8ZV8=;
	h=To:Subject:From:Date:From;
	b=gFm/JjhfW0zPud9MLOY2+15gW7Rz8G6UD96gbYdYrv2W/SFbGsZFfP6uzY5c5eMVu
	 OaCvLzaIgdUmab68D8teg4CAX9QWXmBKqtWCWh2sLMwPI5Vst9ERRqLRCi9Au7Acxy
	 4nzbeppgjQn24qN/We1Y5oAUvWqgZToj/KB9jCoztBywNqNFDl+VXoXTBw/mw6TemR
	 PNG6MP5o3T6qDJo4KJ0mlquPz0mvwKlkdmK3tmsTTPIUUzjQsngSQljjNeG7bWZulf
	 JtXmP/aQISUqKH3aqyGpTPfNugT6lCrCTMRpqwLxKSjDxeOH8QXbbppBrm2a5X846B
	 oooLaZOrvllFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B58CEACE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316119357.26615.1255001086105938915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6096f05f486f1d7a29890273cb8b1e4f328fb18cb2e8f07a679ba6399037ca13
Date: Fri, 14 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763161193
