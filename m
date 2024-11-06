Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3147013A26F
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730917554; cv=none; b=jiYembfSg1R3GsNZLbmSQh82UArtfle2+flLpdZO8AHLGqX73EpxCym+0U9HxEutRUqy8TL40psC/CwXCkxbKWvIGZr01J1gQsIY7mmzX9tktx904eMw86PCrcTLmf3VbGiA1fXGJ2EHeex+wdE4bNPhAkTG0haxjfcV5UR5GAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730917554; c=relaxed/simple;
	bh=Dv/tX+w8j6uL5PVVIixADzCFe3LE6wnO80s8dlTPIA0=;
	h=To:Subject:From:Message-Id:Date; b=D5wvwVocDq88SqlClYHU38f8o1E4SWR/oE/VRNlWQyeejQHmkEQCcUhQn0EnSmMGCb749m7OdnM7AhrMwrgvrN4mUCifRvvn++ufAL41lOLeX+MZaFbBf8hhj1WSO9vIfPvap9vp0RbGWdDFk4G17xyzouyFqekXJ2jY3ZgJ0jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDRH7Uug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDRH7Uug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B17C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730917553;
	bh=Dv/tX+w8j6uL5PVVIixADzCFe3LE6wnO80s8dlTPIA0=;
	h=To:Subject:From:Date:From;
	b=CDRH7UugrScesKBPEac9Rflr6HRWo5JKZEuHqftP9rdJIIX7nmWcXsxcmTZXM8qpv
	 kFqBQqJk+XDzZqyYDc3XzBtGpAipwA8ATzqYzbScGNybVXPIMm6kqiPv8uKUjXBlQh
	 X1RU90l53PWghIDWg80VcEarJUF8/JKyHcdHmS6GdjalgB4Dh6mA0LctW1rKLwpDWL
	 1dAG+TnECqb6PQVXQTQUk8sZNP/TpDJtTvdprEi69uf7MhQpHzOKT3nLEeRyzOugzz
	 mETw18VpIeThYNxr3qfJca0qECvhwGP2mz5DGJgs4oKS/eEcEV+Jr8QGpIyT9sbFOd
	 I3Znr0rBIhc0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93457D59F5E
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173091755359.3119.1582924748606376186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cecb5929fd2eb7689bdf8b3ca28dc82669096b31727eff4e9c4b3107e152187a
Date: Wed, 06 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730917553
