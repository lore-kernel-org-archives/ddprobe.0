Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3422F362B
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750889994; cv=none; b=gZeIwW2aKhLEocSp5chx8+23xP8i6L5qURq53UDDmk3SunZu8nzR9NapMrrkfM9/IXMtzPGaqEGeW+3oMrNnmO2cMBW+XDgO/d7azVBLA3sJVRdo+gRqxG7JO5TTMAzSTuqzBUEdBs3Jy99Qh7Rd/qUSprIFQB6TrDeHvi2zE7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750889994; c=relaxed/simple;
	bh=jLBiFGlKAMYVjg/79tBx6DCEh51h1wHL7/KnrfowODg=;
	h=To:Subject:From:Message-Id:Date; b=B30XI419stqOj8kMd2SW+5J0Wa5gO345Ov6onxsrWYFvP/2qRAfwIJNI+dF4Q7JcAUa2QZoriJWLChVwZRxVcS3/UKc3AYR7tTL28kmSveLyrbocjOO8BPjfl+bhvgCCkSKSF1Ft78R5jUQTjOGubYra0+k/Ro9Ju7oyfH4ehak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXsVX3JU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXsVX3JU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD7EC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750889993;
	bh=jLBiFGlKAMYVjg/79tBx6DCEh51h1wHL7/KnrfowODg=;
	h=To:Subject:From:Date:From;
	b=FXsVX3JUjJ5w6lzaa2z2ZXzgNTVqz87qc5ko/TuP5109cmkDYyajSW7q9TRP5BeuG
	 YoJh7l3KeDIP9NczPju6aVpzEEwQ0rmHNybkalc7VHsuuD1YbJUZn0lCXy+QH0dPuc
	 venR+CTgH8zmu/qBjjbHZ5geEiZs+XZRbuLVjqXzTFqQDjUIYprci6Imu2rJ2ZowRt
	 roa/Q8F7RwcRCKh4sDL2C3VvD4zg0lTUaj+JhlNU8UlHFDHQW2lMMO3SN/8ppB7Sdq
	 9dn0I0lfRHECydGg4F9Hdqh8Oy9FPhGRn+RVejbCvI3s7B0OpEl1pFgrhBHZDJpEeZ
	 m23ZrpECQ94kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F221C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088999357.6947.18198347712032534634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3b466b1d39aad39b6235d5c936acb4434fca24ee29a80baac355daa4f74802
Date: Wed, 25 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750889993
