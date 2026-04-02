Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F3125F984
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775103334; cv=none; b=JwPtpDVPwR5Rw8EGq6pJ2w8DwD9/8M2Yb+XfrZgxayZwunqHTs6AvWwNVBfaLQeBucc3MeL1txLFjFLqnqj94Oq8FmlZAcwpkbMh827tECMs0ZBNAzZloCQFHpOLcu1i7sGeXuMfvJS39EfczSvpV8SaoeXp2/1/1Ks7viqGPW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775103334; c=relaxed/simple;
	bh=l3PEhHzKZHj4DmzKwifXGEzn5+zDjU88sr5OI5MzjqU=;
	h=To:Subject:From:Message-Id:Date; b=mEpEJdzeqJvkqKfP5HVsjXQE0b5BAIGcl1d0txXceYdNFb6cvmSBYum5yir9aDzcrQImfYMK0Y/34xLvOdg2oodHt+R0VPons7B/2iOuyl2XwPGkQT1l/KO+fXkYnCvDCd5HYsz8yaoshqzSky9Vbxl/TpslZVLiPAjsmrBYDxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXkG92ZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXkG92ZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BD5C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775103333;
	bh=l3PEhHzKZHj4DmzKwifXGEzn5+zDjU88sr5OI5MzjqU=;
	h=To:Subject:From:Date:From;
	b=CXkG92ZAhOznEz+x4o17ostBWkdqdDyNjA5FP7w/iINgBJyb/1/B0lM5QAWrHzl5y
	 hdj7aFhiJdI6SaaRVyj9n/GuLe3TS98xrNblYxDluqlPmpVxq3hXN/SznNEvRFRWrE
	 qflEgINhh9fKaba9BPYQnjSAL4uu5+lTAKlps/J4jO/23NKG+1lmbebvPmWqp0sQzb
	 7vMAGDWoleljcUj7k96iBwl8iKun9LovGuzSnTP/KUGWPxHqh/89k+P7i2wPvaHDr8
	 gy0AEHoCdDbEmEQpNeiLDQNxFMkw8uqXQu4UnOG69xBD08Uycxi3d0M9VEptfh2zoP
	 38mXWRgpoHJEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1493CC6B07
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510333371.20101.4101289847967178661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6d6a8246f427d211ce53eb2ec4c8c22c699148d3e71599b737289d0a719c7b
Date: Thu, 02 Apr 2026 04:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775103333
