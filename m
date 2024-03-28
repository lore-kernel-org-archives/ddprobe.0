Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E6C013A414
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711660096; cv=none; b=Coshj7KTruTo/tWCGhNQptp8Fp5XXnmXHs3Id25kk/nMwQHyPY+AXAYq1wdQ6959152qRfinB5fsVw5w8rpWtZJkfn++M6L0DyE8dgdkiiOw5JxTigL2YJoJtowJkIqU0bnG0DfyNKWXy4vDh1cAHzBNkwSsKbPnXmrhcnRyAxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711660096; c=relaxed/simple;
	bh=Cp95iMxPixlqlr1dRUYxh7no7L5bNoM93yanpSLnVts=;
	h=To:Subject:From:Message-Id:Date; b=t05OltwPcFf4sTiORhFSBGQdrW2v2czIFZDYtfJKhV4f7Nu7XS8Wnf64wcIYo0brXrJUSDZTJgbOMdSM5KHJ8nSj/HMIECWPqfcLvrEPkkG9mlzeVOBnWfTIhe3IUJ9+09Cn/Ieh6Lg1JweoK7FFrFl1ShGExfLY9MP4XmjVUb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBq79fZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBq79fZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE35C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711660096;
	bh=Cp95iMxPixlqlr1dRUYxh7no7L5bNoM93yanpSLnVts=;
	h=To:Subject:From:Date:From;
	b=NBq79fZcJZdQAMBsdtHrYoKLKER1G8WdYCru86F0ZiE/5NZOeKkmTaxsudTOoBsMK
	 q6qU1rpphonpNXnbziAWnyO8oNDJDPQX+oekkrnhfCJxckrumWX8UlrL644VP7v3PZ
	 JO8wVxSb0aNdfmVQ29GyhiM0LHSoEp8G6z3kq7R0kEcUUtnZiSOn0WjT59du0F18jx
	 Ut6WLIhPBPDrCQZ2yn+0qS+sVtPELP9DQ9i+w5pghwx8H4q4uE8a7kmGJ2+grDP5ub
	 36VGWyNBZJL4BShuTd8GZ0kEj6b9JujtGJg09Sc+Ju+SiV5+JPMIxZcKgasXXEEhNH
	 DXxuVvNrO3UAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D4ACD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171166009641.29207.11150956851041137531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92009dd1a7ad1d7ab9fc270076a9a161c3111c8e27555d649ec84d52c6f05dbe
Date: Thu, 28 Mar 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711660096
