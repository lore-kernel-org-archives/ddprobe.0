Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2229B231A30
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767425634; cv=none; b=JnNXYG8JmXUF3n9MCT4xD2vQztRrtdz9MYmT/zHaD096+e5RcOND5Pl180bWUTjGqW20vnNixwTa3Tnw2fon7zJQUZJFLT048XWPljzaIl0JZRBy5bawNXnxbUMk3C/YcDlWJy5vmjoi8UbMf1T2yhrZmJLDjonNkaGor56mdy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767425634; c=relaxed/simple;
	bh=8S5DUcNguyz5Z5TCmyr0EaNpdpN9q3UGSzkt/cyofqc=;
	h=To:Subject:From:Message-Id:Date; b=Slo4Wel3ucs9w6vxW2v2KWk5WeiCy7K4KB+8IxDXjKPvOaZ0gLM2j9zDNVZspMxI9L9trAosyzeEmXg67Xx2R8h8R5dVMj85gmL+kc++cWp6v5Re0RgP6/n6UL3RTe1z1LrMcJ4/ebsDrHNoN02hkhoyVFV1zQxqneGpzJJkbe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huZspVtw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huZspVtw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E70C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767425633;
	bh=8S5DUcNguyz5Z5TCmyr0EaNpdpN9q3UGSzkt/cyofqc=;
	h=To:Subject:From:Date:From;
	b=huZspVtwnoNVopMLpxr+WiNZEsshLKdwLoEX2OI1vFzJpE001z3INpffRfRU/9fyd
	 TwZJxtV6Qkl+ZTNrsxRzVSHE9Y+UAvp4GEZyX014GZ/cA7l+M0KAoOyNjdzGQ/NPVm
	 /A7dodmiXaj30Pw6qSo/ao9MjAcW0rrCIqdPbFQRJtbHW6y6+7D2ohh4hn9fRHH9Qs
	 SHwq/oXWaBkhjmCl/pCSeihoiuXAFi0+4a63mkzuUtm45Xzdf1TJ25PDTAQd92kwMC
	 OGNCpczohhKc0KAeFsNYrpe0cscTTkd9UAJVVnc9W1B1MSaKiN8NjFXpYLnLVD6WIj
	 GX+m0PxeK9IHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941EDFC6171
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742563357.22772.17262270251405093745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2df2d761a1c1ea1438759012ec077f2eb9482fea5a7e2c856ebe071221ba1b
Date: Sat, 03 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767425633
