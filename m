Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C90A2A8C1
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753993794; cv=none; b=JSKQHNrTLee368VCQnRaqPa9OYEoiJW5RYyNrSIMucc0wVJ2CHx+xcwiOVgTjMNGfZt2QZiCO+iC2K1I3IvSnvi1auPaifWQuEa2YWPBB/uy9Iy3wzJ1YHdxX8qIXrsZwhieGNMp5FRGgkCrb0RKdlwxsS8d5rj2/SRkmKGDh7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753993794; c=relaxed/simple;
	bh=AIyEwsxV06zpEz4CLV1AeCoWFU7tKHF/fMwRlkM7KjI=;
	h=To:Subject:From:Message-Id:Date; b=sSZpAF4MNIuMwB/X8fnO34Gb4CNaQM0Utq4FfL2FPfG2KIk7LHAqYaFeWScUl0OqfV4k877bvXgKSywQ59OXxc6ZUWgZvccp4IvK+QxXXWik4TYJPl+1nMP9I19CFXjND0WJI8k2mPiLWpq08rktY5ucLb6/c7AKvxj2h1yXuA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWO44y8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWO44y8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5495C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753993793;
	bh=AIyEwsxV06zpEz4CLV1AeCoWFU7tKHF/fMwRlkM7KjI=;
	h=To:Subject:From:Date:From;
	b=MWO44y8L1JSS6BnIEGh7NLwpu/rejnEqOmuHkWc0655vOCUeuzQypYMXbanWgJ8Fz
	 R39jvmXDVOXRMHgeKJjhzi0HL/ikPOAvT27noJG7syUBg7q/+5d/2aCp6g6WprNGUk
	 KP/vEnIglo4quxdTFasEQdOK/E0l4lvBu00qIEElBcseABlHKAzJ8hCaMnWtf9lU4U
	 2yhKiJ9x8rU5Ih11gT0O1Nx1+Qgt53WS75I9qo2ax13Svny8133bZ14iHX7dh6iJxS
	 DXdBfS1BAPWWdLN9HgK+A8C0AqRnpg1xrpbVS+VCxOOTPqmcWRWAPtbgPih5PPNMsn
	 PRZY9xfFp1jFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9167CC87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399379358.15134.12144555339640496480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fbe25fd1582c75fc9001ae096df5d9964b4fecbaf48c58e9c03178fccc193d5
Date: Thu, 31 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753993793
