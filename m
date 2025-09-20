Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363AB63B9
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758358194; cv=none; b=V8q6aKD+SlG5XOVBydwHlyl7C9aRfkCo9Urhiq+bgpC0bgBHzbQbta6sSlzptjBc+Nis3UNMRkVRqFdA3EauRuve7h/UlQLpoBfBbM6c42f9k6f7Jvq1wKwf2ri4LbDeAtyRV3U0AG/WF4kPQVJWqW8/Oue9RyqkpkcMvbPxDQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758358194; c=relaxed/simple;
	bh=jFmZjCpjZ1VE+eSCPe0bKkckM9KzA+2ATf9thj9/beY=;
	h=To:Subject:From:Message-Id:Date; b=TYNWJBnnd1TiwNHJ/GB2kFZ4IR/eLU+p44SdKQezrUPHyp9J01k3PuA74MPh7sxmCPxzbUSL/sS4t0hUJKkPo3loDogJXKTdx+NzvWd5s6LeORF4X75kJfYFRQOi2A0/YIXLd2iA7gX7Qx6o3FYtUSV40HmGncIwscaN/9d06+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3yazQCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3yazQCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFCCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758358193;
	bh=jFmZjCpjZ1VE+eSCPe0bKkckM9KzA+2ATf9thj9/beY=;
	h=To:Subject:From:Date:From;
	b=K3yazQCv6ymlWtBLcAIEc3ps4ryD1wmsBapppiPg78GXRbXx7L2gthnQmP/HeMDFg
	 /GEK1OYEfR70wpH+n4llwbvYkWvRals/jVJrc5EThyxKtW0nrkRa5NhZ3Wqwx9+Mjd
	 Ve+TSxeNEJ/RgpYFSHrl2ARkZsEwuv8aOsgrEil4iEFMnD0VdfF3w2oIjLrk+djV9X
	 1d/MPRd8vHDKJXI2szA53YzoBY+058fnSUHVH7Fp6Ox+f3DAehgmRdOrsf/oxO2Z02
	 AUwiVVcxNYagPW7Si44mE+ZnrMalEYsyp7GiI++xM4MeuYpwXTYzf/MOtg5lNsA9fB
	 hDWZIm2zToCAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C86CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835819358.25651.18113587549221180984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77083cddfd07579f9df9afcec30565f84386d01fa03f707fa3e3696fbeac2c72
Date: Sat, 20 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758358193
