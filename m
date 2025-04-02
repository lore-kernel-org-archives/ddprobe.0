Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A7718D
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743587394; cv=none; b=l9+XVuJaK+Adheu9TEhvh+Atfu2zuNfiQ8vsYELH0aUFyj28TkStylkdhhfFVzH3gZ/ERo+eK0LXiujG5Zr72CTG6mKexo78EfXaroQy65XLGUEK8JkM9bOxNZXBiSXgJRw8+zbDTYoofhaALyFgla8M++SPKTQODhFknM2GAjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743587394; c=relaxed/simple;
	bh=NV7bAOu8qO1WT7VatYtBEBCOaNGKMtl4GvO+kSBEumo=;
	h=To:Subject:From:Message-Id:Date; b=SNHxaI2Lv0ccIS+x/fB5lalGRY/aTgvoEZKEMs/uiRfqzlf+gCZh6Bns5VmqHB9HUvoKDLW+h1BP7rbdESio+dtgz89Fk+XTZbbNVbjWVarey7KueFgDDGyAf7glUqKQMHOaEfCX6kQLd1YTqcytPegbNgXMG4UgX5m5qnbSy4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnPxJtWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnPxJtWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC6BC4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743587393;
	bh=NV7bAOu8qO1WT7VatYtBEBCOaNGKMtl4GvO+kSBEumo=;
	h=To:Subject:From:Date:From;
	b=lnPxJtWofKOeO6fO4ZnModAqWExOuYtdHkeL3A5pec83NYm7FtGgE+O1FJheJVUsI
	 Ipm7d56DnW74pOWsJhnSTTJ615OTscZ9j8mJpYsHCRMJaO9u74d8mBOjNRcqELO36G
	 r7CMl3vbtg1wjMmzPORvpLf9Ms4vrURmgmeRHRP9xa0vtyCjvUi3LtgaMtqafIaTGZ
	 ENAviqT3lqYGjlqz16wqTNLkg04E/Mt2dKnJ6XpjUmGfbrcXVC/XveVtgzBPbFs07Y
	 8f7HrGGO/xU55Eu8zjongfzjeGg5IfKPeRM4LoqK5RbeWkzveX/n2MnYkqRZyAzSJ1
	 brwm4wZcy8R3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974C4C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358739360.4438.16123823561202824004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1f253bae28dae330ad6d38db4ff5c9d366365b2d1a2e3431e573eb21036ca0
Date: Wed, 02 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743587393
