Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2774D5BD
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713773423; cv=none; b=GSmYF+ODrsMsvzB36VL6z+6jWvchcwTa5rzndcaTVhd3mTgzcwvTAxP8gt9YIv1cMIbY/eC68NYwF9Te5BaW/q9Ss84xeC1L6iml39fmMkJJ/hRUVSnk4A0ezaaEOnHR5cb3L+rlEAFqOfycGURZAnHKh6Jiy9Bu+8wuDQ3hS1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713773423; c=relaxed/simple;
	bh=wDPxq/hJjgR96MCh4Seh1v3yhMxXvxxUEp8p4cn1BVY=;
	h=To:Subject:From:Message-Id:Date; b=UhQ8AGIRb59ssrJANV4lqU6DHrfijPJ54oWuHv9090kz+k0MMRVgl8xkEqjOCgXbPljaCDx4TdPZwwQzvMCONzMW97vttXUhpvMB2LmaPRdicUTwIo0SPgGar2aWUiDlun5s73TzKcdZqDcnSOp4PVESDTnreUndz2fR4/IAuJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Leyvruof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Leyvruof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E59DEC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713773422;
	bh=wDPxq/hJjgR96MCh4Seh1v3yhMxXvxxUEp8p4cn1BVY=;
	h=To:Subject:From:Date:From;
	b=LeyvruoftTI33OOlOOiPPJ2Zs3ZlIyQgpixnnDnT1wTnk1mpvNhx8YfjpPTOThR0z
	 FqGSmYVNnI5iyfosrMm2w7NTmcLqXrKoTHYIly4YQq7kEp7kKp4gGXj/jJ2cQpzvUI
	 6MWjEoKwTztFlY9zAGEOvQzU3qDDUlXmyMS0NfVs+wPFKsveVQWNPFNjjWatoK/Mwj
	 mVdVOWAn3YZ+zpjdqxCy0pqCcNOxRdd1cBN2UppQgi5IbuvRC9XOE24FJNyKa94thI
	 iA6XOjD+qecZdp1iFrcuWXVW6s4Xm8MFydU6hbaBcNMVpdC96dtgoH4mmZ3PNt6fR8
	 1svum6br0Wx8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D107EC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171377342283.12936.761334266938007730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8394b70aea0d79360315dac77e9ed08d6ee44840c4756884c478b78b4d285788
Date: Mon, 22 Apr 2024 08:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713773422
