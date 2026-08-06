Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51089374A06
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786039234; cv=none; b=UnMVDO+3ifU2WjygmKiVCNnfkdVUzapYZSa6pKlr/mou893gJ3NKu6fIrYLxty8c7GmjG7xzW7zesHQ+2HN1X6JVctfE8tOkjb6c+HJVMgUevRScVx6M72FEEX7E3WvAUE05NjTz/glMbyZp+PJdzhm6Hh6TtzQshoKByK2hINY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786039234; c=relaxed/simple;
	bh=F5POF8KS9CkrfknORd2bDIAV2ZRByjzFDjSwC4ChFtY=;
	h=To:Subject:From:Message-Id:Date; b=Y+Yv8dic/1CAR1sAk7xnTKKUq+wcBl+WdSS5JFZBtS/ZP0SX3tYWYxhuqTVR+0tuWaOYSfdQUq9RvDpsqUkk0RhdpYGyjJwZyolszsWlhWFJ3xYOqaSHKv7pz+vkgTSxj4aoXE6se6gfKvxy5hG6t44Nnv9XghL0MBbjk3RFxmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYTc14Cb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYTc14Cb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18A0C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786039233;
	bh=F5POF8KS9CkrfknORd2bDIAV2ZRByjzFDjSwC4ChFtY=;
	h=To:Subject:From:Date:From;
	b=sYTc14CbyGOAk40rgwCteeUWwPfo97HKVTVsPZ5ftxWOBbeMk5lIC+70XJ4o+uNFf
	 l6i9hTmyDlO5XC8mxPrfgBmTEUmRLgclws0v3lU9pYARfAlch0BR+QRzyzrwwgbnA6
	 TIEz/xJjsfFqUZVSppRmMMijP953YijOBYplFnQpIsYVjq3AKYpjJ1U4JJCfQ/72vN
	 cZ9LyPyba6y8PRVmN4T7RfgHGS1CERiIlJ2QPvHBdVsAMF6GNcRS5o3JFNb30bpA75
	 R0JlO+28JV6ETtHT8oC7PXnfodz7RRy/jAnwKxjnYefM5QJKUter6OhhmepUzq9U4d
	 KJ2ml7QbllT7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC281C56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603923369.30102.13034087135318230668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc2b1fb6b532d0c8c8887fec531666c017215cff8c31d0cd56d5fac2a220b79
Date: Thu, 06 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786039233
