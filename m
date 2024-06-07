Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571CB33EE
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717793843; cv=none; b=cmwLqVjiSGS4DxTdi/VMEezy9QZ5dD5PDUJmTpyLWUTi/iQD14BrvFTD6RsuXIjyanvPL/BZdpEny5+E3ZwvSHG45QGBjQmLdr5nziuoLh7XK+4phO14W5jAiVgeF2TN+4FsVXyGhBWbt6EQB43kBnRH7dtk+DPYdDLjRrLAJNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717793843; c=relaxed/simple;
	bh=5sVZFpLORv7oBfPfsa8MZzmaUx9AJgfZ3/VqBO50b50=;
	h=To:Subject:From:Message-Id:Date; b=WzXoxL6QJymJva6SxovXQnb4g/bGhvkSFJ9tCnYEGYfOrElaY4SM3R3MABSftVX/qY+lfSw83v8l2EvKvYMIzi3dRQr4sOJPrVBHHnZi43TyHNZfntMlUK8ueNGFta0aaFtGp18HQrirYk/CyxBiM29OQGKAl72fTabVPs9yEGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HB+0kXy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HB+0kXy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB9D5C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717793843;
	bh=5sVZFpLORv7oBfPfsa8MZzmaUx9AJgfZ3/VqBO50b50=;
	h=To:Subject:From:Date:From;
	b=HB+0kXy6qh6jEeNmA2ofTkV4EOiqKW+MU8bneX1t01r+LZVIfagc4JPIc/KNXLuMx
	 uxpibxH6idGefE+7WXs8X8ISgwIZZzScTX2B5rHHkp5SDDwNwBjkyO2YuMqCViusFS
	 hpUcLEBNhg2VXbnp0snNoPJnh7QKRhKB2b0mOcxNJBx8fvUrtP+0ZuFy7ZiP6nlJHN
	 nKKwo4LPp4CWvFIh3ZQdUUL8TSO0jdOBFq3jEJbe4AbwgtpAmaWIxMZyaP7vuLFnpg
	 OEo3ZJ+apRO6p3g/nQlzQ3PP0urbiDBCygtPdZV9i5j3+sJajUX0Eft+jyU6Q4pcD5
	 pJcUA74uGxsCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2820C27C55
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779384283.14102.17847419251219931434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee09200e1f6a72df0d5dfa543251e1ada42b4ec9cfaa31c4c758fb75cf5e21cf
Date: Fri, 07 Jun 2024 20:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717793842
