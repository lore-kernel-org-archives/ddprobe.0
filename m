Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D8022D4D4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744139394; cv=none; b=gAo3waJ/5iGLN3MAHpbZo6euYJfNrohX4I4CI+uPoDElSTLPZLPvcZ01qwNFOmfMaZpIXAlT0SlBiKL5hx3v9sU/54ej36BBHBvb2aYc31Xw0+cqlpQt2ZHJaNbgAQJ8bcFqJOhM7B1NHm87Oorqgcz0qVxsE1Y4DsS+2sSVDmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744139394; c=relaxed/simple;
	bh=5LRdrRpZ7ex/n9qmS3mZhVKQ6Me3Hf9oLlJB2/+8ddc=;
	h=To:Subject:From:Message-Id:Date; b=WexRvztO8IwMsRjL6/W/INIpv1+As+MFzE+wMIW3TmL3vRCOchPpObIlygha73WWYiUTLaTUNNe7ITAvmOgWqzQW/8DtpJuZ1a+dICEg/+0GvrNPPq+FGDP0GnQ0LXqap5L8KB7APmT2mPJ+fT2rAwlZijNJ3aZCV7Fwgu8KIfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuMlOGPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuMlOGPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B835EC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744139393;
	bh=5LRdrRpZ7ex/n9qmS3mZhVKQ6Me3Hf9oLlJB2/+8ddc=;
	h=To:Subject:From:Date:From;
	b=LuMlOGPtBlmpv04UFcBKb2pINuuU2ZY8Vanv/PPlEYmT8FRoawSVbveU8N64P+dp7
	 VU1x2vu5XdSXj8WBJYStykwLVEVVv8xVe+s53ypmLu4HfUyqI7aPPgkSG8hdzHRZvA
	 mYiJE0NRJa+iSwj3YmPzGA/5SQ5uuG5DloQGFwBhEPwouafWAjNv3hEmBZEHit8ivc
	 4UrZVkSd/5CWGvq/z0ja1ppOd82atOgeWX3tgjTpo050/fboeDjAIJ5pJk4iSHL1Lq
	 dhJ1+MJ3aS8yUar8TvDvkvLef1lFBZqK8SDjz7xm0NTOXWacih0aQ4JE33CnS0T1Fj
	 ZcHTwLp/zccKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A735DC369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413939367.1485.11259015453029209889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f45afe343bd451c25d9574e205040437d91f63e8992d5eaf1a29c07111cbd3a
Date: Tue, 08 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744139393
