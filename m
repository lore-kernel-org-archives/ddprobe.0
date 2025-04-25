Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A96E22A1C0
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745559594; cv=none; b=prsh+K2o6WMVWRAAfQX4B+sQ6Uulf/2AK4j/97XpufP9PA/AToFKojQSu8uEUrB+YRLIEG0OFuxvzOjXipBYzA3wLnMLSwR0fSEvfAoG/QY9gPDOWMZnF5X4reyYVMyb9x2J4sfSEkbIgpl5ESwlRwVCfRwoeF20hdbl7yrQgPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745559594; c=relaxed/simple;
	bh=qTsskeK1Vh5JGOiJJkCX5+9PaqQohrjP4N6Ub42E7C4=;
	h=To:Subject:From:Message-Id:Date; b=SRcciT7OtbXfRrOq6iuGd7Kw2md9jsdpjcEEqAq44Lc8Tdg0p9FA1Gao8oW06yPktqoMrKIE2w0mTGwC2j+3RJuVpVQa83DrNHp1+UjJ5L7oT6JcGwz6arTW0Kb93A9X18tjw21YqK5BkSDlCNqF71vA955vEcueovE3aCuJFUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPKBNyJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPKBNyJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD4BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745559593;
	bh=qTsskeK1Vh5JGOiJJkCX5+9PaqQohrjP4N6Ub42E7C4=;
	h=To:Subject:From:Date:From;
	b=tPKBNyJqLb1xRi6n1JXEZn0E0KnjhicNZ7u/J0GyAnDUvGJLF8LnDCnBU8dAp+qPa
	 B60D6Vxyzua0xbCjqBHgfwoMKMOavkIylYG7JjZqKL7JSdNJ83UPp53YaoT/n+4+B4
	 6mhcezsUzgoRQCIdZNX2jgSuELCRmQ7P5dGn+hUGJHGnFJVe3styiNguUc/bYq2hzt
	 phLKteYnfKoBK364fLm/h5qcIlELyfZoWPS9B2qKe8bukatdT7a74GWzkMFK+Z3TQC
	 agVEJksLcO66zAm5GkqXfHDSs39CcFPWvEeh4+s4Qexxs7W4G9nKivz7rSTNRZT/Tk
	 IejfD1icr5O3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07AC369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174555959357.15043.9607835621592771371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a8311e88380f46635ce2442280898d982b161c31ceea781c50d11479dcd441
Date: Fri, 25 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745559593
