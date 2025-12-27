Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E46A2F28FB
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766837634; cv=none; b=OMHdvN/PUCVORjPCyp0TB37gYzsov+vBo3Tk2rRe7QA3WEAiaUdhZQfbkNSVzww1v/3qWQtZpXub1SzHR8zE7LSirdGQ1jvabRyxeVXIRCgNLz9P7rOe6rGIi5NxwS3/51ZvezLyVXGm9iy0ZJdlWkJrt45RvFTBbsiuVFNKd2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766837634; c=relaxed/simple;
	bh=b0lynKREj9isN1yNcGFlsv1rETdvfkRJcAcePomSGhs=;
	h=To:Subject:From:Message-Id:Date; b=JQmLzKsCo1ykSZXJntQ1kMc1yAhXAaackKkeOtYzMJisAnuzAMgjpiRUt7mXFH25Q2xhM71tioBqf8g0OnXH0ywwZAq6ZWcGcLbBAj5C39EIxFSQctJPhRVbfljvMOeYEtvc3t5tNtXTfr5xdotqQ2b1BDAmKKyB8M0BIvUocOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmuoNg8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmuoNg8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3FCC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766837633;
	bh=b0lynKREj9isN1yNcGFlsv1rETdvfkRJcAcePomSGhs=;
	h=To:Subject:From:Date:From;
	b=QmuoNg8QfScJLrxEthYtukF8t+CblW2PFRlxP9efo3eBsTiLuET8vixNaZUm5E81i
	 nbNl7r6yrCxWPOTG/IPtbwW/DvOiAAZuEBclY+5zhYJE5ij+3DxKxBD9KI1OBpyism
	 7SXYXSsmvIMsLbVb34CNQrEziRdbo3lpOhQWTz5brzHMRUF1EyEyu0kfhNaVVjXb+W
	 2NyYEeYCmXz8LEALuOlYHI7ddztvu3rW3oQW+DMq7uyqLR2n57MYbD0fEjffXFJc5b
	 hR1KqE4Nho3wrBpuuQ62tl5MfbWEfw0ObUZvcfMAfepmus4/WaJunN8YravWrlTjT1
	 DLvqMg7rAqLug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975EAE92704
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683763359.24493.12435633157891515201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af27794cdc9dedf02238488eca5a631af3a69a04dff04bce504da8eac2d2777a
Date: Sat, 27 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766837633
