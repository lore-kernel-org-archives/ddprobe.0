Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC6017BAF
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717829243; cv=none; b=SkSR5p39/8akQkoUx9Omfv3Z6eCIJkRfTx+DV2RUMH7mcVexIAZ/gKRIfQSVOt+XvgdDw9/KuFo4Bd1qq0DKcJ71MBTPRXFwuWjsXGriJSVQkBj9tI09i4d4rl4RVuIqs4jd6iZ/U705DntkvLkxXRH+AWn1obHIucYXW/9CC8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717829243; c=relaxed/simple;
	bh=3INWUZJtpXufmgb34JKcspEobt8cD3RZhSBkUADzvHg=;
	h=To:Subject:From:Message-Id:Date; b=CsypW6VgDwqWwwpEwaukc1U9s1KPe8rUSTX8uNLs/ySi59u0hGvlItxT0cKJZMrkCn0MqOedXKKCmPm3E13qAcBfr7RZHvZjuVOtbR4FEezc0o6YWEcqvtlksyBw7DoNlU3ipYdcm+fRyrRF2u35tdQKNuppIxDQeO9Ty1ZuAq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEe+xN9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEe+xN9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED1F7C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717829243;
	bh=3INWUZJtpXufmgb34JKcspEobt8cD3RZhSBkUADzvHg=;
	h=To:Subject:From:Date:From;
	b=jEe+xN9lA5Hl+NI0elAobWEgXjj54ZdBxQCW45rgAGymxHTyNjZzguOtS7vAF+2WD
	 jISGVfepj2sLDw1RJEVgdg3qkN0AzVmzV8h++QXbuOV00A0nlzcuiMnpRmqtmcS5R0
	 j2KScBG9M6D6ZywmVSqyah58mQw96SxQ9xFvHtdWOOwA4zHAv68K6YQSgqdV4JwuOH
	 +SU15pMyB69uHfxxxWImFpu57wwE2jhw1reJLJw4+23Yr9oJMm6mK6zb/NbQRIsMGf
	 FPPWCmy7i0UHTEBJbe2l4beJZeHTYxttmZaL0JjgfK4GoiVrmF5C37HJAB5t6bMlKa
	 1aT7QJH1NhL3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D96DFC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782924285.25015.5899577713589664148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7788858d13258c67bf2a4ab8f5a4e3b32bf63f81a71670b98a4f70d20934b1c
Date: Sat, 08 Jun 2024 06:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717829242
