Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190813D64
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728614754; cv=none; b=iRqfhJ46QNL6tO5bTrw5Fjk/YUsAKgcY9EtaXQXOlZbNRT6VKkVasnfEP7fhPDeR3wzPGAZdisEgfbnJ3G35uG5CED/1WL7YJ0Vpcq9SuSWvNn8t0M7mr+70Cv0QgQq+yDtUxp0nctOrCB/cYvLNmWEfOwjgNrFepaq/DhwCSAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728614754; c=relaxed/simple;
	bh=HQDbQvM6/io171zjaykoDxYzdpxtZj7/0cB+JAPkLN0=;
	h=To:Subject:From:Message-Id:Date; b=FGnArmOxBtP8UCrGebmwsl+wfo2CiKI9FsQy6CKQsuDXpTHThCQ1tdP9za0jM49V2FU/BqD03kXkqFd25qwNc8gR7HGVQvg8F9j5E1UaVSCaFieMZ4Xpw2Y5Mj5vV82M5fF6Qz9FnyOzeYyLcDvBzU/qWDhMInWB3NCXqqfeMQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2wPlN2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2wPlN2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2DFC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728614753;
	bh=HQDbQvM6/io171zjaykoDxYzdpxtZj7/0cB+JAPkLN0=;
	h=To:Subject:From:Date:From;
	b=Z2wPlN2Y8Pd7FDF1ellBtxo0lTX6vH8bPzOoNPEjYDe5iy2zZ21BZi10NWLiB4qQE
	 1T5y/CHCA9MTZzvmxcHl4/Z7HIjsAeWowyVCKj09SCKzNJpfZBh7mYWW3mCEbVlj5Q
	 pSitnShBiBEPjNUuoQJbqKNnSotDakELDNgnwcqJ3TFp2t6RXA6Aobyzic20zVRNLI
	 8WtqSdwsYlVua+v5J03/LT9fOsSJNaqe2TNzAP36dJYTfuo9LMWgLV7XRTEP8YRGF/
	 Z+t5OIc6A9t/YEINZiQdyMHju3NGkOSHT0TZL1qL5Go9RL1EO+WHKAeAWACZplQ+lr
	 gMku09K4JNZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A13DD24467
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172861475359.10376.16311835445828598155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6dc31d948f51666ded2daf158c591148c1bfb199aa2650ce4c41f4e4604c8f4
Date: Fri, 11 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728614753
