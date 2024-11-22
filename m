Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF3D14F9FD
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732250754; cv=none; b=D6YAZEVhq4RX45owIv8nXER4Bx1hkMG2ogCVVJKNHi9qAkmUuttDXGICs95pMibZTQleORQ6OrPH1zlk/Qq6xLJ2B+hi23r9zVNn2UsADOSNdFKW9XXTkY9Y8uyH2SZCHCD6N6tGPh6d8ZU2wxAtWemf9Q0hyz8Vi+FjjRVp/xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732250754; c=relaxed/simple;
	bh=juZzz0I02n9ZWlrSG5h8WoilfDHa8cCfTVdQvygPUr8=;
	h=To:Subject:From:Message-Id:Date; b=FN0qOpO+dKkvX2T7oif4z96y3Jqw0puxvS47Eh52h1Ooy/KrikiB5xqIkHzor9bXVDawQ4a5aq8i/48+rLvunRunqCGp0BL2RnuBNnan4fJ+d6xHQlN5L5hDjnVNEOFoHJIbyj9t24pjcdnENaeZ6TF+A3iqEDz1g+ZbY9iS+VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7S5nguy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7S5nguy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8741C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732250753;
	bh=juZzz0I02n9ZWlrSG5h8WoilfDHa8cCfTVdQvygPUr8=;
	h=To:Subject:From:Date:From;
	b=s7S5nguyJfQ+b5OpPY2wNXBWw+E+n47PzhwgEEHdPu0ON79CHy8Lh7IhkReLhwx0b
	 tNi6N3LH5eE28zOV1yY8GvhGHzjOe1JN9LfqR0lt79CxPxIU1N/XAUJbzX8rycU3WX
	 +euHjIUwq9w3Zioq0OQBReY5Sgn45Y3IbiQbgdFZDUCy+CKMkmMsa9oZ3mdCSMLSm0
	 PMe/nn0WFRCY7MfwOkt4MjaZfQLH7/NNjWfTS8kO98CwmOzxYfD+RMWytiGSX541ig
	 41eOMwdXuM/Wge7AXSWLQuAYOKB+BwLo4nGSfPdDwBobZYPM18aV5GPiuZNV5nLRvT
	 JOC0EelQ5C8vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D2BE65D25
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173225075357.24568.1421890465812700455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e309bbd9756d78512ccd34e9c7f6e09dc51c549d5f00f8dd0d2635cc0022b1ca
Date: Fri, 22 Nov 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732250753
