Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3E630FC1E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775466934; cv=none; b=TW7bQTx0Ntk65Oj1tqvcVOSbW1703nLUrBaLrNojy8yGYN+aZrnPN8n/jTytOiY8nOpk/10457peLgNRVYhjjytVpBMAqEs5ONz/VrYRSM+oxscXH4VG8GrXrhz7aKNlASlaEKNDsLicvgKGbKJhGv1V8rK42owEBSJtBJ6EbBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775466934; c=relaxed/simple;
	bh=JUMIM+0SazxVvAQy9Xca9zFo4nDZZ2oBZfKEV4uObus=;
	h=To:Subject:From:Message-Id:Date; b=qRKGHN/cbqnAjLR5e7WjEaYVYDOpfXEY7EXRE3k4RtB5xNSMTYztZy4m/tW+tAsWINgfwRdDkE0bzmqRlH4uDQFsHq4pHmxOCcdY4WJcayn3rt2HPKKA0qhcuAVLHHMdwKboNoTbiwN4TJKc6b2IlU55/5Jb/QvZwFR0/Ia4+0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjPz14ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjPz14ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8028C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775466933;
	bh=JUMIM+0SazxVvAQy9Xca9zFo4nDZZ2oBZfKEV4uObus=;
	h=To:Subject:From:Date:From;
	b=WjPz14ezLDn49Wu8ZXX18MMYg2c20PPP0aOM5jCIU2KlY59ZO0eQX5QJANBk3KYXh
	 tAFPlCzPmQyjvrp7dNObRZkOjsmhEwp7A9C5niLk+lDB1lhyvsonBkIneOFlYinVGm
	 oIeQvWUHOyawnxETt4TcBZZiNnHZE2brgFwwBAKkppnyHNkTff3Ptj8rAhqg+ZQUad
	 JRdJ1cC7bShE/9U602lPWe+n7iO/vp6C6kJcDHci3uO7CgXxYiKyqT/dVBj8xNQL1x
	 of1WUK8HsI4/O3pUP1TbHLBzBcRZuC2kBKurmO8f5FhQ20CFAZVIQrDoOYy2KBT5AO
	 VQqyOYVmgBldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADADEF4EC9
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546693368.7472.4857316194244223762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7a3de7436d0af4de3027574dcbd814caf7fdd84bfbfc8877159d9433b9ee97
Date: Mon, 06 Apr 2026 09:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775466933
