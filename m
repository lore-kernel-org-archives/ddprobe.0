Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7600234DCD6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784684314; cv=none; b=AJzejcbwlZuBoFED8k49jPND9rFDulmT9K/EurZEb9CBWPNkuabixzoC3Sed+drLo2RO8mk16tNnnplLh4+Uko9o4bfJPVGcPw5qrO+YGe0Z3BI7NAYYCIZIXU16a8VLWh6b4SZVln3o9zq5WjuV5QIxW6eMCUjm8Fzi7s5721c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784684314; c=relaxed/simple;
	bh=HjmxLn2D4/zpsOTCFRQptjWCBkFaBXJBEppPLpLb18A=;
	h=To:Subject:From:Message-Id:Date; b=tXonySoKlxMwLMLltPoqHv/mJDLQ/mSJF6cm/Nm1vCno+BPd0dzACkN9ZLO5+jmE6QNtjWNz6OPMZJcd/l4+ABk44ZnSneUiM92NQh6sMyV24kmyte+ce8rDkHnasKWdJcxvcgauwSXqVxOxMcxOcDfp79naiNC1CuTeKVhb9OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjAqYrT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjAqYrT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1ECC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784684313;
	bh=HjmxLn2D4/zpsOTCFRQptjWCBkFaBXJBEppPLpLb18A=;
	h=To:Subject:From:Date:From;
	b=CjAqYrT9AFPSjnYioGee3BXTpYgW6YxWlL6REsUR6airV9enZxpPPTD0Q7E0bXjZn
	 F/Ij1apL9sn/vU8M0VcyRXq+nJLah77QtnVYR5FlVVhfEi2otjhqcgHqRu+d/MPPlB
	 l6riculRQk/eGqraWLoTElWwjtBbeAMs9LHyqXWQKiGhZABx+GTvTwsoKrXTYlRP1y
	 RKz+8gf3P5c3FNKZeNgW/mN0U3bAilhM29HOPERp2RgREiz9OkOathAFCCX+13Encb
	 NYpoTjQimEyBRMorlTg7yYnk9KGek++k0W5XkUg1pU5wclXgcco/kpaTM/KB6UYxDi
	 YYCXZk8zb6DMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B408BC4452B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468431372.30798.10582776503012993450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85481dafbe4a884dd7fc4a1655527c06d1404446f4ffcc78ae601dc7d9da844e
Date: Wed, 22 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784684313
