Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193A42EA746
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756277995; cv=none; b=AjUFkZ9Kov4RJFnBZ+McEGlH3NCPLsgnO7qUTWk9kvTfY+dgokF4cBRoaE9tYYpn46dJ9PUoboxj1vCwfpGi8PrEteghJpQuR0dQUCoWjGQjaBeG8ouHqlvBjZtde+k/mGOc0JxNBec/9tW/0+VWY5FXrPXEq/n+6LqQZOn91sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756277995; c=relaxed/simple;
	bh=Ov3mr63sCbQaaVl2rKK69dKmHnmV1YqNVa9+CGGGdXw=;
	h=To:Subject:From:Message-Id:Date; b=LjCcCLC1fLlqbdHIIU95JzEECxu3CBttt/ihGMuh5eqwEflkaRO+A7eB4vCKnaBi5mbITDYTNVUT3eZUj4Bb+Zhvuzv3uCBLnqWLKCPGh+Sk8HihqubD4Zvi0cC0yFExg8YdrGexT/3Pu1CwZjbu7YF2ATLfBcI2h5utbCGS3Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcc4Jprl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcc4Jprl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A5FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756277993;
	bh=Ov3mr63sCbQaaVl2rKK69dKmHnmV1YqNVa9+CGGGdXw=;
	h=To:Subject:From:Date:From;
	b=pcc4JprllwH8CyWX+pz7sttZkMJJetkPAe1Acj4iik0zRNVwsaWrf3RbNal+xxtRH
	 Fo1eq16R2ebkRv0Zh3VJItJXnK2rf1jGHYARJ471IoyOthJrA6tF+LRS8so2oqoeHW
	 yrCu/6m4mol84yxTzIkdH/k9w/dQ20fHeXXFm5horAb+3Jd2ZHE+Xtb7k6rZAsEwyc
	 9/Z7hDl1I6xEomTBLc6IDbqdtTdKiZ4v2Q2LVzIrD57uWWcEgOpL/6U2nmIuolKhbv
	 01g9wD+FfAaVpKV7ie2A35ui41nTFS7hXT1rVF/IF+XfOgTaHkPo/OE37uAT3qWuFV
	 mkkhQf+e0xq5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95982CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627799358.10822.9681355681613252736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7548181cfdba7b190a03e15925ea032ba44f8ed3c0fcfa03d7d047fa9e26b935
Date: Wed, 27 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756277993
