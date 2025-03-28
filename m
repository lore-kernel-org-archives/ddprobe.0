Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CEB3C0C
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743181796; cv=none; b=XII5x5Kj/FyEpKglpPcbeBDXnnaNyzwYWRK5YeHHsVlKDmvFRbmt5S+p4sK/WbSuAee1zzvZ05jYeJJuqpqLSPhvSM/jwZta+aBSFfeErh7kWFlqTFUVqhlzZTIeMfZ1pun8Wb3xu2KiJ18fAlfzu9XsWohCpq6b5GZkeV2n8NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743181796; c=relaxed/simple;
	bh=8DKdLfTkT2WR3kDZ9Wbjw7/kkkcXW+qO4HEjFGaJ/5g=;
	h=To:Subject:From:Message-Id:Date; b=WJt9QHK3PfmCAKiorvBWotbdPWUrxx/gB4Aw2YM+A8gbJ1xmFXrk74hGKB7gAqfwlZyYivOAC6+VKBxKZHvygnVJ02aYABoQm87zLNLKm8FNJuWwLMkIQJmJnc0EyAkJATZWZDeBX/7+ja6ygvRgQvqERNJgGfqVU3iAx+kUOjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pC+9XP2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pC+9XP2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73F7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743181793;
	bh=8DKdLfTkT2WR3kDZ9Wbjw7/kkkcXW+qO4HEjFGaJ/5g=;
	h=To:Subject:From:Date:From;
	b=pC+9XP2GqwTGfxwlv+1PQEf039z37TLFmxvbPiZjaVtqx43CEWTfSQVnx9FcJ4lXm
	 FhPZPqccVNS6JtrbK+G5CgAFEHycvlMWRHJuw6ZuuXiN3paqAXtoCeETjBqRRqpaRz
	 5PNSl/8k/3LHnNbGJpV/VRjwFwKZLUGH3A2/Ozs30uHOt/1lf2Vv7zVyT1Fc8K/rK1
	 RMdWzt5FHYL+3Dz1SkxLN/2facupqRVpUbemkpM6tbyLmJuh1MDkYobyu6wPShUWcY
	 o+OEB9arnP7LkJ6Mxa2/fjAwPglip1Hkny5MEn8c1fhwD8O6/xrtC1f1th6hu25/rE
	 uu3oJkXW9ed4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D1CC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174318179367.21402.14992570270001641621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52e3ddff681cf042245376c6d39c7650686aa5a4e679072b4fc8e213b6e2180
Date: Fri, 28 Mar 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743181793
