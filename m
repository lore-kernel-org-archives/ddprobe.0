Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB31C22DFAA
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751440793; cv=none; b=mEfhW8FJom9MeIHv7zz9tjjCrkVepZ/u3WSU9tlsi+Qt1esqX5RG4x5hZuRa2P7VdfPp0g8lB5cACBR+RZ0H+g2R49lgMd8ndB1iAMMFtXqjrEsSBd1X7fzXRihb80rHpIRTVse0lkueE7WCu8BrlGrggJKKf/7IdP5Wm3B5vn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751440793; c=relaxed/simple;
	bh=OYndpWZF81NMrsc8q/KfxQ/Vnh3qxbao2xnkyYYdrac=;
	h=To:Subject:From:Message-Id:Date; b=IAEyh2BCzpbIANTonLHlE6eols6e1D2vmS55jO7c/6sCEznDD6q1imiHyUdtT4b3+UjsAySb4qYrwHGQD2USSwpR5IHP1MeBy3jDqrGYcEBYfBjgZum5M+vmVDlVTyYkSt2XuX2V374L9B1GGYhP5xG1yl1ScSylDZBHS3fT8lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEZ0Vbx/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEZ0Vbx/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1F5C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751440793;
	bh=OYndpWZF81NMrsc8q/KfxQ/Vnh3qxbao2xnkyYYdrac=;
	h=To:Subject:From:Date:From;
	b=DEZ0Vbx/1nxRwaPWcJ43MX4I4W1/bEp56GVAR3WssznS27VRlZ9ORXD0x0orpp2Qb
	 sZXkQjk0+CcskkVgJd7SdHkc/TRQl2tz/Iz4Du127V8+ThWyfx10kmj9HeLR0ts31g
	 lamwaUm068ZQcCvgBlwVSjoCsZz+xtkVn9kFg2bcD919rXc6xkgitR8uoIt7qxI06E
	 Lvs4dEmPNcC8zMkZL5EF7yTNjfsGYK40KtwBXwAmaEF/Kapz7phAwBi0XVAaiQqin2
	 1v51Puox7w0DE/9iJJtkZo+ohD1BUDSEN/rpS+uF3mkCBUojxEnK2dCsiPxeXsWZCB
	 O//RdncmV+OhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE92C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144079358.21171.1388777842134957512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f206475ed9ecfee3d397ff421cc8860421be4044baa471e2abe7ae1ad856c752
Date: Wed, 02 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751440793
