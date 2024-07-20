Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9B418635
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721462154; cv=none; b=cdit5W6xZWwzXjcvQFI0zF9F7oHvlAKbVhYH+oydBYPEMpjco3ZF9hdzC0sBIvP3FVVfffWpMYZSMTsqoqUsOuOvVTYW2MWM6iHgdNKzKWkdFYFBTuqKk2Mfn5vdiYBo/+hP1AMrXDAx8lXaZa4d0BKubRUcUNcpZ9Uyn27U+sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721462154; c=relaxed/simple;
	bh=uUWdluSOy4md7lyyBV7kQPQ0PeVaM/Q9z+ZP3FXikos=;
	h=To:Subject:From:Message-Id:Date; b=gkmZi6ihG99ZuVHIH95QTIy02MLjiZOB6cq7y0NOHnyByPJ+KJXP4RE4vlwHDg4+N8Spz4sFoNibJzeowo/JpcCME6cH2tq1vytIMEybxP3yBNPGSWTI6OTrUmsjwMzMsTL7640z2gf3/ClVj+GE2w5vvo3Iz5ICZHABDuzJ7fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jemzf3W1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jemzf3W1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87D4C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721462153;
	bh=uUWdluSOy4md7lyyBV7kQPQ0PeVaM/Q9z+ZP3FXikos=;
	h=To:Subject:From:Date:From;
	b=Jemzf3W1v/+zu1w47MdCaQ+XQCBRSwHejsuEVM6l4CHUsGaNvWDl9wL0ZonXQLnZr
	 fnAdxP0JBzn2nBeUFGTfTdIZ0YdXbzQBT3I6WoXvwJtW3vMDltbL4rQaNoUMZsmq8X
	 p/A0eEdfNiLHMAHkRTdnxomhyvWKY5coOUj4VPaYOx3Ofuk4meLd78i+N/nlEhetE7
	 pbVvYJkl4I4/U6jEdpdYPlYnItEbwYMUNVyEOBef28gRO0sSpPH9MRLiQc0T5H+Stk
	 WkIAjhJjWXsqpMVKQ+4pD+Z6ipd7qSCuA9d7kbngMa6wXvEy+vvb3yMxZgcvQ/GWPR
	 SJ8eYicvohRMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6CFC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172146215369.26705.5509747250193072365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf75292cba728a753c4a29b11685964408e86ee8fd1c436c23c8af6c292dfa6
Date: Sat, 20 Jul 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721462153
