Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4632736BCD7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784824834; cv=none; b=KwTfJvcfHSq9gaQfFYT9sKpD8b35p78JKyM+1FgRhTl0K0Kyw6XspujQOQ69Fu1V3WqY/KB9qytQxSk+IB/Rso+EUJLsa1dffAwm3Dr54r0NlxHRgn2b3T7faT8gZ8E91F8UbcM78zPfZxWLKGbPVYK/fDh5oqDeP8Y1AhrJVjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784824834; c=relaxed/simple;
	bh=W14FoDG1Edkd30iiWoKQSlesBUqWJmP84L2BzIdgKQY=;
	h=To:Subject:From:Message-Id:Date; b=h7VMyEBDoyzU8LFM0MSTEm2D7+GzSNdDWPUNTRkiO7nVM1r20HkELw/Vq9wpvRwGavmkITLaNjfeNzWFS2lkaO2ImE1EkNHi+AL0RByJR/hxuVmuy8N+OEQQ872Wsj0hf9zNKUgi4g41cC6358NCN67pJ85nqLOOFrHehBlQwVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJcG2tei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJcG2tei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE3CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784824833;
	bh=W14FoDG1Edkd30iiWoKQSlesBUqWJmP84L2BzIdgKQY=;
	h=To:Subject:From:Date:From;
	b=JJcG2teijg/u4f+HmxGzL5vldUkG7Idb4hZUSigwTrEB3NIECNhLfIE2KqZ6I0BNQ
	 8VdQnWsCMOjMzbreJGVQLdXIyYtEmLV1VwKkYlEpcvso7mScPhK+GrmRHNwkvTu9Qn
	 vOmQNg1ZuukdmkZkKcw8rMfSSpqngcWHjPn/FI417qDWamsT4Ipvb7Op6HQxRXpxba
	 MJVPiO8+i323wDHBLcDMO3XKH95zvzM7OgoTTpjz1ViIPsZcrbCUcq3fVTKgnmIAR3
	 zFhceXc8q26aN22MlgcXSn0ciFBcUl8QEe9WkhvS7T/T9o6rkdc7HW1kcPcfc9t5iI
	 z36jQqb95Iu7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA355C531F7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482483368.20165.11019100203783272519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd3ca1405b7b0c374865edd1f0644014c414cbdf295e4ec9c0575d388422c54
Date: Thu, 23 Jul 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784824833
