Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640E51DD9D3
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742909994; cv=none; b=NxD+Q47pBq0SH7f+LC3JsGWqIIROwfB2wuXIiIPC8EM/JTwA1DodCbxQJ4VvHnPFuFBjQiPvrtvlfvOCef+35OYTajtfIG+otr2H/GvQXc23iTI3GMiwcp/mgTiFwi0880Xuni8hdP9W1bC2v7UBJhQ2gYjRcIOmAUWwb/O1rSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742909994; c=relaxed/simple;
	bh=QJ/Z7MvJ8bakoxYQJvF9QrCNCb/w3JokqNlK+wRSuvg=;
	h=To:Subject:From:Message-Id:Date; b=jFfKnjV5dIHelv9rIGf1N6iyv5se5IQ58HwVAv6druBZQBcf3nuSd8BZ2VnfdTXsehYgWlc9j0p5rdwBW5Q8fSA6uSRvw2ZySr9ZkvXxEJpZFpStS+4uWMF5A8IHU9IKBPaAkMmubSOz4UsIntzJmC1vsr9GwjWLM9UNogg0QdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqGDJeyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqGDJeyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C275FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742909993;
	bh=QJ/Z7MvJ8bakoxYQJvF9QrCNCb/w3JokqNlK+wRSuvg=;
	h=To:Subject:From:Date:From;
	b=sqGDJeyOa8X0KwQgMyvfRdJg7i5MSKDw7pn7+qTRImPjwTuFf034kJo48KTgiB7k3
	 /+GHn4A3LmD6wkpNi90jLYC5YgQtI76tuGcPiAJzgYAwkoFL9qSRGzBNan6TSp/eIi
	 WkMtg/2yOw/7wt0kDXb3eTCtoU2psFOIxvun/mfu5L6o5tx//r41w42jspHP31vPu1
	 biRDzxp1N0ZYijyVt9sGB8ya1/eabIKAjX6lprmUA6bKizFc1bdnTkmPlok6CYtaxy
	 eSYkoCzG2yGt0nlzFauv7NdlYbchr3OM9xmQ3dkQqS0GkUYkGPZNSaoJXAIGmZLjcn
	 dFWC7R2hdrZOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB928C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290999369.4993.2360022569171565171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb321348aa2ad13f08f7719465ca2372dc67fdfd43db734642a85ab1782cc44f
Date: Tue, 25 Mar 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742909993
