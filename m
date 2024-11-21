Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F68F1D47DC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732200354; cv=none; b=LHDkYfep04Chltz8Lqj/jI9YE7zLihsmUwV7J5RWV7LymXUjcoHDCNFCiIcAZf7/Ir+y5Sk755SevDb7bvQgXjC01TwXheBKWaAPbldKPgVLFtcBUxDd2RE+xBxMiyfivQq5UDXC+j8YTK98LmZT3w0WP4PNjxPF0zB6kNLSgZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732200354; c=relaxed/simple;
	bh=lF289E7qUe3j2ADO6eOk0xF5z0fL+r8O/9g/ShL49fI=;
	h=To:Subject:From:Message-Id:Date; b=L9YYbJMbEvb0iS7Ff4er3PQT/B03um2jPTtue9JrMabMKtciCZguWkbUMzegmCLrA4awuGAvqEgeokd8xzNUI1A6kc16HocbRyIR7NzLTEs/p6WBwp7yIgAzoaH4pqtmW0JPZnEridwthnqaha/G1RapDN1EzsMKWGbjnGzq79s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDcgyV9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDcgyV9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68CBC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732200353;
	bh=lF289E7qUe3j2ADO6eOk0xF5z0fL+r8O/9g/ShL49fI=;
	h=To:Subject:From:Date:From;
	b=eDcgyV9XUUzbQxomi+PsPwh5ZtbZDZ3VcZFZlBzIKmbwNNR7gmnqpHS3tB+4x+lMN
	 WZCuC0g+3Pb8SFCWpfAunA35xYtO5rSIWWFGxhdnB3FM9pVl43aCgJc30uDXzVv9DS
	 XcMCDyM35UiR+gpVwPUx+aOWGR12dQ1QzmL/JdtLqM03CzwhnEK1drY5L1jPn6Wuib
	 GfULrgvvkpA1mmryOcrP9cVeif6Ub1uVQUQbsfDQMje1pGcp8x62AWu9+DZI3Bs0rA
	 Df6ar+4xkwRczP45biirHdoto7EH41zE7kw3rKlN4BmSwPJKGnHIkm2zg+q7e364sP
	 fk4wrP1DMe3oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE38D78779
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173220035358.3791.17839330377642570159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fff945e99853fe583b447f6cbd912866c01bed4f7159ea7cf50ea9d34e5ccd2
Date: Thu, 21 Nov 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732200353
