Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017F734D3B2
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771835094; cv=none; b=nYpPP8WjJRhEyaVqkc23hrDqvfqQBMsTdPGIaDed9vOoGzHwy/La7weSo4UZZO1M8YVfzTfkpr8r+2lV/+4XD5COW/2Pcroq+iFQ6xN412WRGKwb06Z4N3Kv2YHUAqwX6XELPnd+fcAUfe5m7/OyxpnSNop/MSCRMC9SVV2lLLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771835094; c=relaxed/simple;
	bh=7oMa8CePGKgEP/A/vmA3CQxbjFjYMsR7Pvl3TJvgiBs=;
	h=To:Subject:From:Message-Id:Date; b=BxG0NGkYmNsv4YUDyv9DgmhJ0E/ocOhHRymTN3E95wGK3WcKj7UmnqLRxniBYkQttX/fl3rbAcwP/9ifscLlBl/Zm+GkG7lwpC9CFzCO6Zy+X2mEFhpXy7dmouMjLolv9p/kVfZn1oWUH5yRqu0pgxkl8jLYad5dNQS9PYVM11o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hf3dN/Rc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hf3dN/Rc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A359EC19421
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771835093;
	bh=7oMa8CePGKgEP/A/vmA3CQxbjFjYMsR7Pvl3TJvgiBs=;
	h=To:Subject:From:Date:From;
	b=hf3dN/RcySkYVRjquBpeUbnwFdmIDdV3TPgbbxvdOTUdVM13mjj8P8bbl1Y12bIwT
	 ApequcDceOwU2L3QksGk/mhr2ZMq9W8CZHXAV/8yEetyktriG8SRX5bbu4ogGeloiO
	 PmHGBa8YqEgpJg0BzBwU60qHyq89yXvLrUsHldp5gEIo8BTefI9EJD5ujgHGkUNB0Z
	 S8EAikiNjktZLSssKyCiQ65McjvHGe4uqxLa22VBUCp7z/DNHR2eLoCG2p59PmKcVS
	 GDiZJKrgo2/N62nCvz7W2/HShksslV8IKGaN4X+TyQadmPCEp+ImZ9A9ORPuXkQiIG
	 7PDAp00Xxtgaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFAAE98E09
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183509358.7917.985046547711673537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb1e855536be6f70b8ac794ce3f48efe8e09f84a439f5310d2c872ea63f18d1
Date: Mon, 23 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771835093
