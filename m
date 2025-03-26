Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEED199BC
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742959194; cv=none; b=QmgFIqzSOxGvYrsrVAhfm62EaVUYHBeGVVzlGNr9X8UPh1w53r90XxymdKZSrnyX4/16vOx/QLA38H3ttTNOZjN8UqpjDZbzvdoUWAwpsszpr3LS9bBr1lka7davVD37bLCH9LI27OkmguwBRIQtcPVMck945R0zgqobDQSbCDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742959194; c=relaxed/simple;
	bh=ZqDv8caasFMBR/r8Dd97yo6dKAm0yTvCTtGT+SeG02A=;
	h=To:Subject:From:Message-Id:Date; b=R0pLf2YImBhhyRx+tDnV2wxEnV03T37E3qxXP1F3GVkSEsnLyHVTrJAEgFtgScYeZdGc7vzPghq3zSOcOXtVv9GfJbaY8M1ggxv2UvI8Rv7qYwT1Wdt77iuTm2qJrAKkXZ4vX/KwtppNrmr6D9TQ304deyh/CypS4k4WI+qO4nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snCneZAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snCneZAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45DBC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742959193;
	bh=ZqDv8caasFMBR/r8Dd97yo6dKAm0yTvCTtGT+SeG02A=;
	h=To:Subject:From:Date:From;
	b=snCneZADdmPKsoFu9n9Asl2seia8InUKBzd1ODOsaDv3PpqB77xODwwmTu1blEO/W
	 O9eBuD8PnDUVjpzC8wSel6M1FpP4z4oAOKl2hpK5zdm7wHAKZvhInzCo4c1Ex7nHwF
	 fvUZ2uzAL0OJqVINixeAH39jND7uDE8iDi5FF+dJhMYeMiO7wpYg8TUiz94KmzAiw8
	 nDJmwZxKquInCG5EPol6OtlYnB+sZL35b0c9WQCs6NAHEaKyNUUAXSF9bnCvybG9tl
	 DUkF8px0SihHKb7UOkXTNoF5WA4oVR2e2KnfkuUi8qLbxYtODYY5qgZx7ubSpsicUn
	 SvD8Hg4OZLEiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED60C36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295919360.21945.7513767508579024510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50bd93c387526a4123c9aa7e5a4fb4e6c39985fecd4511393413eb42df0580fe
Date: Wed, 26 Mar 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742959193
