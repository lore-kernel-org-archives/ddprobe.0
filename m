Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AA51BFE05
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736806554; cv=none; b=VjBmomvwnMFO1qWfW2jk62sEOGod++Azcvs2jzPrJKzc2ano6jA51RQXnxdeA0JCT6lKSBnBZlhuINmHyrHKnxELN5/GrI56q8V5eCwtR2iaLNblYBUB6Hip3vO5JCywrnu2WKBHMYxKjdAgWlphsS0/uwWNcNcU1XQKlxWYsQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736806554; c=relaxed/simple;
	bh=02FSrwz3JNkTeClyJYagMqMMashySLVeF5+lavmLFEo=;
	h=To:Subject:From:Message-Id:Date; b=azJwIYZ2WvvyEqi0ciE5laNRDEMNjzpZGK3uS+JbEj/IfURMYxobpxTa88vYUXO+oh9R9OnFOFOC5HQR0hJdfY1T4oopHI8nxd0UyEc5nWVD10KGa6xKc/twD6Bd7wc8L+ZxNPOebqEU6+VdPdzHIn5wL8BkobiTxuIgRypbpwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuCeaXwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuCeaXwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8EBC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736806553;
	bh=02FSrwz3JNkTeClyJYagMqMMashySLVeF5+lavmLFEo=;
	h=To:Subject:From:Date:From;
	b=TuCeaXwtleya2jHA4McdWrN1hKtZt7baWwAPfota+b1BGiqikocoKOHKnXmoRJE8b
	 7aCsyPDr/07EopDydamMJUVATcJE/wiRVl7Lly7zXk1GVbdPn1rNFTkiE6tGKRjH3w
	 5Zmrehx6DSIh/UmPGVecFKYW2dEGsFFd2uyhSukCBSCJSovG5InL7iQ5lJ/Meuukg0
	 e0jFvNcuIexPFaQLa4ssK9kG8/mnQdlrjHGebCLjFbDEpwpZ/H5C4pO3YsrxD7otZQ
	 +usOYU8ysNfnmxLnAxIpVUCn5/C5eUwwAQzvuvU1AiEp+B7hrHFehGL1dx7+ZgzuGS
	 P7JIqqYOwbg7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960A8C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173680655360.17796.13989881690397458708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d71d7003149945b42fb069b699d8d96ac9edffd865670e5569524db3e7fa570
Date: Mon, 13 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736806553
