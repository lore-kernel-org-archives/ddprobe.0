Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337AC7A13A
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745655595; cv=none; b=QWVFKnR1coh48G4KOFVSPluwHbCvoJeZhoEwJ1sHaL16ZfaUrDlkYu6O5+ywi/DEXtrUM3sCiKhgj+V0B0hJEMdfAQbxCjLGhZXzXoRmOt00oo4ovHZ9gt8iX7vE2eCIOakvjt0ZG+kTvaBsF7m2GEmsdHXVSMC3leFr2xA5W/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745655595; c=relaxed/simple;
	bh=0Dguo6+ptUDoW1AWxmXWBxSrCGHD17K3qiCJKLc0drQ=;
	h=To:Subject:From:Message-Id:Date; b=Iv2mghYMZuiq3vaL+SYOZ2nVdNtqMXNQqRp1tH/QtMJyIIE6KcqOVdgRuL285a1FB5m0Raci9kVQA8/R36dli4VE4jMwnjMH6osa/LRU/4lYbRuNu03u50yGnNwDvbwNDbqfu9jCHvm1J6VRuJCSIONyJws8cZFVHw0Ir4UZUOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfaYTbIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfaYTbIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E3DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745655593;
	bh=0Dguo6+ptUDoW1AWxmXWBxSrCGHD17K3qiCJKLc0drQ=;
	h=To:Subject:From:Date:From;
	b=RfaYTbIk5udQq+T1mkICCTVlfhzlCnuUEwEoq27/YVUtrfm+/RHRREwfmJFRySVnd
	 a6FGFm0ZGLnAajGMj907pMfWc7IB/vI7wme9gM1kLdm1LKOdM4ibT4xuS/11vxLLK/
	 TthzxByD1U18Q3HN1H1Kh7uHg9PYQlMCkqQStyvvwe7MqRqOzGyYFc0pX7FCdkz8nj
	 bfN0Bd8kHIP2oFWNmR3+bwS6p6AROUgAmYqTpHIckEkM07j4Jk+V5ihpxO3ESZQa+D
	 w+vt8E1Y43wdP4YZA/XirGRgcGNLs30NlfA0jV0e4RZDWTKqaWsSJ4c/qUPVdD1E+P
	 PUAM/cxrD3MVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9663DC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565559357.10425.11493140663580255011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd992dba9f05d3d98194f2fa5b5072ba4ce4cccc3c33becf596714237d43bcc3
Date: Sat, 26 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745655593
