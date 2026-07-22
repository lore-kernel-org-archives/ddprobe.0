Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC0328850E
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784726314; cv=none; b=CgPLjhw+2fI5tDfUq1BrPvJrvtZMSKpBghdXrUumdHeFBCQQAK1fOGqFtKarRpxvDtbt+v0YE21kgRHrLYnshQ8m99E6jAYwqP4jilxJsZssUXwqcn9lHOMB9q+slnT8DmsKWhJ4E4Fhle0Il/HB34BYUO8um6DKJWaYohN95DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784726314; c=relaxed/simple;
	bh=+CwiccXuC6YrdgCrlAbfOR2QnCrIDM+ZP2UhDro6QvM=;
	h=To:Subject:From:Message-Id:Date; b=pAI8LW6d0jvL6mXTLcNxE4184p2aSRCob/6THZl9adoR9HF5hvFOAxzGMdHpyziYEZr4Mqpa/+XEFB6pwkzlvUrzOOniOyqYbP4OGfel+/4rvfH5wt4wqAnmUW+nDWwrrr2x3Fl++y5gF37zHbtA5WtZWIRDhTs2Mg4a3AbG8b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRRy79+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRRy79+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F57C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784726313;
	bh=+CwiccXuC6YrdgCrlAbfOR2QnCrIDM+ZP2UhDro6QvM=;
	h=To:Subject:From:Date:From;
	b=eRRy79+CM1aqu1WrDUee+bh5ADPgZDmZwFTGQmZPQe/Oy7D8d4oRlFh9Xlw8V91b9
	 sZ5awEdsdol1eSUxj7LSkGM/HmPtiowykwURtDX+Ua/Y697G1LsFA4NjMw8TYKkthy
	 XR3uMfdij18v5L2GuDt1yqhB6Q/sNOH6jMjBzD8mHVgsG4f0dvi0zRHriVrZeBPtXa
	 OV9vvIUi3uO7dtRl+p4B1Ua3v9CkIUCwZmG6lh6V+3YsAMumR4wIFjRsMr/1dmV0Zc
	 pluPds9X6DOCddcKOj1dVsp4raIt47s70DBqJeVukEoigHzgJbFoC/ZKL65wLx7/7F
	 Y0CYoGB//IPEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF94C44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472631370.10058.15973815350128690019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc05bab17fe3a87666b23958e2266b1109a7e03ea2c2fefe5e248c44fb81fc87
Date: Wed, 22 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784726313
