Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C43D20328
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715419343; cv=none; b=BIYt0E8Bj4AY9ONAJq6NiioepsMlqmSP1SGht/KivvF2SK6IsdfVX71JeobDSIAx+TYyleD4qbYnfmzJOb1lPRl+LwGjeDWdyEu3xOKoEBrNg/zbB9ipqD2Jbdsb8ea8I6TxafubCw/uqXCkdb/1E6t2fjMhUgsDo8CPt5pngDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715419343; c=relaxed/simple;
	bh=YtLjjCSwmXDLgSpUR7qalTSy4GTT3K0ICUMmw/cFY+8=;
	h=To:Subject:From:Message-Id:Date; b=kQ/hdElNfXWrWYPTrNwlwD6qVMp/YtwNJ/EpYzpQEvLRK1UkMDOGEjkmRO2RJd/ejm56VrqBLxhcDT0cnwShL4CP5LDqDAmiAlrXbWhqwiUILqe3J8BJzzypKbNAHFqPZdx5BVvUjU9mbtiBnunfBw6Qfz8httDMKbFjwzHxmwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUY0Tmeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUY0Tmeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF749C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715419342;
	bh=YtLjjCSwmXDLgSpUR7qalTSy4GTT3K0ICUMmw/cFY+8=;
	h=To:Subject:From:Date:From;
	b=cUY0TmehpATmlASW58h184nzO7RPeRG0OEj16XOzTLMHMn0jGlKFGAzZlQZ3EmhoP
	 5XgwxxAASxeir4ofLjiET9K0cTE9oOVmbbLseB+qre7ahG66fma17cxuwjNrlDKpI3
	 zzY6cGvOX1BEBE83Kk2LhnAC0pCrkMCkLdFG8O8cbKTKQYXO/qA8pYspqUmW0Mr69/
	 QB3nf/BpS9koTJiraMrJ15I09CvNVWIA8Y/Fi5uwtd0zjbY9BR2oC9LmQeBkzQceqg
	 EPuYSTO2SOJoIzE68XSRlJ4tjuYu/w60cSQEeObdAfDJ71/pIVsFAoL+dzxRmXAdgI
	 pWACXZ3mWnzuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9CAC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171541934276.25113.14505714458681186468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec6116ffde900fe4b6d6740f71e3f985c433f2138dbf10df22f5abb5adc0ca0
Date: Sat, 11 May 2024 09:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715419342
