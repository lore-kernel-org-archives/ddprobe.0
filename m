Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA711E86E
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770176634; cv=none; b=SrSmevZINRo9YUNG5OWUqOL0jJpTs2Y8xkUmNh4I0wvROz3vlS4dc06mya3fk0aneyyPbnTsbO97Q2xD7O2SkX653svFyU+wfgtt/cEjL9mhatU3hdNyKRlT1clQA0YMM0oojMPBnVy4CIwoqxN25YunoRlF/tO8U74athawqBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770176634; c=relaxed/simple;
	bh=k17u5E9SpBOPdsDJGQl1TAbm6JD5pm8M5inm3VlRJs8=;
	h=To:Subject:From:Message-Id:Date; b=If2EQMRt/9TG9vZWSYQxhrfk9eLpX9pNmt8KywiSnh3SGK0OHCQF9YMoSI0kJMmq3ml3z4OWqVg+VCm+XS8auJr3V+TX1pCT6D8zwqEn7LQLBwM+sw4TzA/r3dv7fQu2FA2sgb0VXZtPI1twzksmvKFbncMbZnb24Ve2IEtfyyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYBiP+jc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYBiP+jc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB6FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770176633;
	bh=k17u5E9SpBOPdsDJGQl1TAbm6JD5pm8M5inm3VlRJs8=;
	h=To:Subject:From:Date:From;
	b=CYBiP+jcez7AhprkEvDuda34AngGeEDynz7wdXSw+Sc8O+LTUqilbdGa4bHrJyJFG
	 ZnZ5om1wDi6y47AJumkjKQrpp3cshBUyn2dVk0QelX0z4Req1nuklAfvPFgELRXvsa
	 bUcAUJwy1B8oBl0wgS2R55hsL3JDd2kGFWK4tngOoTv3u3X7L0wQTEQ0FM7grk3ypH
	 oAc28LmSqmQc1hWGHt3xJu3Yr6FQubvaq3M2B53isCGubhWoq+grUbsvhzxlZvcwTZ
	 9VdZgfb5WvsNw1h6yzBz9w8V5s17iGSmxub7xouCUPWKx+feT9LbPiG7jeUvK8VF1J
	 3ReQCa3wUEN+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98599E8B397
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017663361.961.3718206300498798685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b151e801b3a1e20a599760d3b24ff7f0b9c2862d70b99c1ae09c165a8508a74e
Date: Wed, 04 Feb 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770176633
