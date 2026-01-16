Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1001E224FA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768530834; cv=none; b=Nr9gBrf8Szq4l1UVmlMbpR+xPpxJMfXX0mC1Bq0pPTTnDl0lDTKTjICCFnybvbB8oa/ZN1v480Z5SZRyb80FAeMSypDRMM3acptUb8klUPAhsxv6FmJTRuXfUH/T5rj4qWZpLS+Mealm4zEigpKMPaoouDyBVVeeUV8TQtouhG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768530834; c=relaxed/simple;
	bh=tunOreJEdvClzgJWl2nSrwtp5LAKKb6q8RM3xh1HCpg=;
	h=To:Subject:From:Message-Id:Date; b=Kn220H5WbtJHcCK38hV4JTdJsimUIZ9J0zLuE/25plWzHz9jQb/meZLVpPwgcQAqYstQIEm4b1GGdmE6o1XjACzqaa0yb31AR7keMwRZx7tPILoHKgLMSR+4/iX5dLVOwAJLSfs3bjDrGHR85bWnqoNm+PgLV7wyy5p7RUgiCSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMd/vWiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMd/vWiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D523C116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768530833;
	bh=tunOreJEdvClzgJWl2nSrwtp5LAKKb6q8RM3xh1HCpg=;
	h=To:Subject:From:Date:From;
	b=HMd/vWiR9gSlrwzx4Jxhdt/P6GZWdRC2qdL5EWNAsGH/n/vSBmNbyZ3vmIK0X4QVl
	 kmuV3sPZtpaHg696g51TH1KOrfqV28yb9gY1JxCvPuy9+k3j85PlGou4n8ZYQkVxsZ
	 N4O+1xQAEeo1VQN3q4Cy8veEI54bs2DUS3Ze4KeOsfWF/s/LCZDiXxfUlyTF+VGglX
	 31VsG0UkKGewq7l+5jXD+cEX3WKURNqukxdF34OaEcsXrf9A9lq8g54CHLDUPKwdV+
	 TLu32HuUFMAQgVwbgOiF6nREaeppdwPa3WenLAquHy3WljtZYpE5YEp+fnYLgJDsro
	 fCWvIlJBccujg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC62D4A5EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853083357.1693.7259121779374914804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515734569170a96e6afb92a1dfeebeed8a29b35cc115bb3e81657dc2972f9f96
Date: Fri, 16 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768530833
