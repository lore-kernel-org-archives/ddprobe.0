Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42178231A21
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746826794; cv=none; b=uPo6fJuMhPjVd6BCQVQ8hOvme73URRPphPi7QZpeWRMviTjDD/jfctXAPKemaJ7asOZ3Cvv/NAj9I6FGRnNx4QWJdWzsjI22q0mHRpE372ZsdgO9a/0QQy21dtuJps3S1bssmrQXSN3abf+swHAcoZh7BuHcSw/EedciAusDk9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746826794; c=relaxed/simple;
	bh=mEo4VjWpPTd+PT6nda97ghiobDuTphGNAOuoPH+3k5Q=;
	h=To:Subject:From:Message-Id:Date; b=aEhyMKYhYCQRKs/tZIQZdD9t1ZvShjiZ/Iax9nzvSccS5bzyGLIQDCDUGvuNIeHCViEsr388vmbbQw3wmnJQ7vniZw2AEoWIarFGpTJ5fKnU4KnUSsyJKo4OkgPyaNIGAtJHGFARETXkbuiiI1I46PyCZ0IBGV7kre3bVjDFxMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+z5V+1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+z5V+1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7CCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746826793;
	bh=mEo4VjWpPTd+PT6nda97ghiobDuTphGNAOuoPH+3k5Q=;
	h=To:Subject:From:Date:From;
	b=Z+z5V+1ajzoVzm8N1j3Zz+WjKSKbhN92r48jqcRFSgxkF5okEmbJK7Z82jN7ixQ8a
	 7AdHQEs99RlNoU/TvkJP04tuXmPucC839MxNmiIrkLwRv9q4/ict2jxpazQsIEBMhY
	 gY4K4sG8QzVqpfGvfSM8K82ZAS53zvJEnKK8MPkQRomngvgl0bd9QhCGMehozCEnI3
	 Rc8P534xg0elPkdX3jhNxNSc4/sM7mmmaKzwjRye0ojwrb/D/93NKPlxK2jP3nU6ne
	 dwOR0kWP+4oiDXtXPZKqVcuh2zI6k00Y38vxYfTudqALTBJNvBVgjRP26anmcUZ/v0
	 cYKJBrXY6x6Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E99FC3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682679357.24692.10474506379686661440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3b20d93e8eb9c7ae452a50132d3665d18ea7d788ece5641a5ecf0a54a13cc0
Date: Fri, 09 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746826793
