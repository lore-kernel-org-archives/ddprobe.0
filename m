Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BFD175D2D
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730462754; cv=none; b=qly1ribCeV2TXLlpSGrhm7EH8bnjqeKpCnGPZpCBZjApUXmPR101O+4tdFow7/dF4XzeOTitax+rvH8vun8+vUq59FFfelQlg2D5ptI4sN0GcMFUMx5TMrP57WiwR1inRoXIO16P1ZVNqjqiFpkHdaeNtOHalP7w1BAMFScCXL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730462754; c=relaxed/simple;
	bh=xHfHHYTiFyxS6DHKbZHzrBTtOZ91Xafu8hRflhCwVNY=;
	h=To:Subject:From:Message-Id:Date; b=CGBHdFB0IKT3fRlkdOeJNIy8qoYS2Ynbu/WH/hW1VKXhEkW5FYWEW/JjWw6HdiCl/ukMiSRYgxniYCeu8s0Ad0stc+KqISQBwDIR1IcDfD/mi77vbQx8FKUFUVfJT1sHiBMkFha9y8VeYlkbkPwYScH4BGqNXmTPV223V0U8vQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3gX/C2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3gX/C2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8E1C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730462753;
	bh=xHfHHYTiFyxS6DHKbZHzrBTtOZ91Xafu8hRflhCwVNY=;
	h=To:Subject:From:Date:From;
	b=W3gX/C2GEOMY7b2QRLiUavE2Vmf7cD0oxVZb5m6LDYfpXqGHLSAyjdfJTrLYotcXs
	 cqAt5UwvG15XQUw68UUpLXKXjcn3WgPRri4gkVv/FVh5dUIvHMWbsEm7atmz6snYGn
	 vHRHOITtKjHwVBShBgAgoE5uEOoghmRFAlv9kzEwejCcF+lZsSO1dhHnTDplCykl29
	 MoDrRxr/gsL71MnUqbegi6BTE5kRjMVauaX7oKsEuSd2heAFvupQD6NRESPqX/Wjuo
	 eQoFCssLdzmhzFidRTp6KTAIAzKHi6aBFK6cqfvtZBQvrSXmLRnw3Kt74bzTdAhe94
	 JGcG3CEk0+P2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA957E6B24D
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173046275368.10063.1801756009365900497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51a3aa24b1a9b77837c064e26e7872dce82dc5ed6160bf0d5eea9f185324dc1
Date: Fri, 01 Nov 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730462753
