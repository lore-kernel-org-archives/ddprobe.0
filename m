Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED21F9E6
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716632663; cv=none; b=PkJp2YDuMitE5IxkIhiL1eaBNIy5yCMji/ix8jxmzXpbgUggUwMBiYwDop+M5BOnaHWbuW1oQqUynYnEf1gQumUuJzu2TTpQzFwFejuUKoNbPbqjmc1G2LObI4oepw2V9Q7dHI40uB3uZCDtOHkBI7NdRNwcw0tvp72wBHX1ZdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716632663; c=relaxed/simple;
	bh=T2t/loMlcSBvVLj2egnBq45p8lbw2boWGjvjFeiR43o=;
	h=To:Subject:From:Message-Id:Date; b=PHzFhmToDmPBtFuMkYWYf5waLiLnhcW12fw37L2pFukTSML9IxMxkDBxzMwNehFM78n8ogE84uEhZmIfi9qP4dILFYB59Hga8ubl6dgNa87Xed7qP2vqyWJcEyMLKTC82rq7/YWpLfm+s2vuGJuP0UuEnltingWax1WvV8MUuik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWKtLwFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWKtLwFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E166CC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716632662;
	bh=T2t/loMlcSBvVLj2egnBq45p8lbw2boWGjvjFeiR43o=;
	h=To:Subject:From:Date:From;
	b=qWKtLwFn3BbccE7TzJUS4+u9vuN1UWoH95QrvWy/PXjS1gwPhEXBHnznYw6CZOBR1
	 NnBi6GI0FPDM5uZl9Vey4TF7B54JUXUAqkXmuqE1B+yI1BRxhXfrZbF3HwTAEsBibx
	 G4ySoB5iQDWRodV/4ZTbcdFp5tGBStm4B0uUa8jkQATMTIK89irfMb/zRhh1X11QZ8
	 w8O3r1v30Zy71leZvuSsu4rw2DqF6i6VxPBK0rlkUCTgFoF97BmD2VeX7I9zerZRKg
	 hnmlJhMzP7LNwYgciYZeeDgdbVlvmxQVY4MFSXpSl07y9+iys+t0XGcuuOe8GNdvnx
	 L8eyj49asvYiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C857AC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171663266279.28476.12640164262197230906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76124efa690cd22d2833300c125e302b6435f163f5e239c5f2e2dd69d7e1ea7
Date: Sat, 25 May 2024 10:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716632662
