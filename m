Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C140111AD
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744935594; cv=none; b=LxXft7dYJIcYNlzSmQ9tjJC5lUqJ9o8nv9wALzvfPPAOUA1Z5LHb+d5FGMybfTYqqZhiFiTJruqbA7mYtvkC7HBiGIjwdPpYxH/h95Pim8mHvYt6RMr/ZS346C3UVVXaRBHVbqp40n+WmZ/ncGUdZiS3VhR0+LKoJNotTzo+hvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744935594; c=relaxed/simple;
	bh=NC6u2G7x55+deBaeO+2sS6Elj+K2xkyfkYHRGrxGak8=;
	h=To:Subject:From:Message-Id:Date; b=W8nuI5ojygekhduoSsDqXPK6KJ08A3xa2Sc1v9MMNzCV+wx9St/pV3gg2eLQwPBJSXYppGqmTscx+3GxQRalvjPnBpq1qzC6lgEiBsJd53/ra4trPcXJyx5zXIi63PnHMVJm2uWI7bSrzl/MijsiiVul75VwRJnqvBKHlVSApA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MChiAP4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MChiAP4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B2EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744935593;
	bh=NC6u2G7x55+deBaeO+2sS6Elj+K2xkyfkYHRGrxGak8=;
	h=To:Subject:From:Date:From;
	b=MChiAP4VwIO7ERcmXILdvP6PSLUVbE5I2dwJjnidh2W7qE1LGkV0X3bgErZizNTnh
	 fUMN8P5C8V96DR6DYsBL9dDpxwJWAZgQL2ZaHTb8VqeusCzDPK7wLfRFG1b77vWMae
	 AVG00m0CwjVRrXMUaQgh851vxzK5TYoi3KQjiX+zpYRkxHE1cHwIHKkpCe1M1tXJe6
	 zQQW68C2haHY4I9qXmCSCafB2NQtFTm+8cLEOWfQmgcwF8diuaYK6ItJnCNnWTEcfG
	 uaarU/AQpEeVgeJqAIRoWRzVreY+dYIzi3uIC3PZDlVjxlIoo6Sr88p0ml7rOPxuA4
	 /JfdDCZ1Cx8Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DDDC369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493559360.30050.6163319122167605418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ebcde496cee3356eef701b712f306693e6d1d762eefb8f0fbce50a262c15a1
Date: Fri, 18 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744935593
