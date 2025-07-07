Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075F0262FF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751883594; cv=none; b=BGK5OP0iI6qhGjYbuX/s0qFJ5suxPwklanCuDM9BiBUpY4y/2QxmoE1W6jES88LjEIuS+x4eFKevc4kCqXweFJ0885gcIGh0+ibVuqyZBRuaNDIHGFfUpuI5Vs68E2KckZddECg8oDjYnZ/2ibG4hfZ0Y/3+CS269S86itthDGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751883594; c=relaxed/simple;
	bh=WYAosiYgNoZIX8sdzt2XZtoOgCoDXxnI3LUkqlupKyY=;
	h=To:Subject:From:Message-Id:Date; b=XC/k1eZcNMemF+V3eb5TI7UrT+y1nh5rmdZI9EGunfb9P0wSfqXjKzFEf+3YJ1Tb0ZumiraMogM6/2BHV0tbZRrxHNQcOQQzGnNIja8pdgHfMuu3qAaefSYNAqkL4s7Xl6dpz4ZDv12U/mdT33rilz9mfVZ2idiPn9q6uycAJlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVSCRaoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVSCRaoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBF0C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751883593;
	bh=WYAosiYgNoZIX8sdzt2XZtoOgCoDXxnI3LUkqlupKyY=;
	h=To:Subject:From:Date:From;
	b=TVSCRaoouow1XOBvcscgavHpm5xAXVYyo/vF0vt/mHKG6koTrKrJXtq6dtbH04syq
	 JQzGaHGEDdXTQ9+jHYbnMfe9CDJcppG75HLYxhx6hh1NiIRDndDOsQj6Y26f6FG2sw
	 n3u9krtEaLeTPJcWuhiC8rVF+3CaCAqQClR5UkKGcnB4gxWo3JSdR9Im7lJL1xi3ee
	 D7vsPDeppLdy/BP/u/ipXTDfVWDSYtzZY6iFlbK6OBSBCU7zQdeueA5IladrAN6yD5
	 WMPxpaCCnPexCGKzVBRmuEr/holgKY6bUjUCyJOBniAFOjSOMDmhLDYmaVrEcDfpAB
	 mmVotZZ2nBM7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C7C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188359357.14027.725254836531463692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c93ae9a75280ab12ad49c7784a612e23853c340a5414aec2d50eb40d4c2d77a
Date: Mon, 07 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751883593
