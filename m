Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B1619AA68
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727775954; cv=none; b=S9MaufKW3RC50c+NPXtiwXQDnDJmhTbdaquGHGDvq87Mw+ukYoQylpAECFUiKF+cKYOx37ckwrTOUZTmkUqyQxMnwSKgiLp6LiJYU6ZP/LvyorDvO8NFP7kHuIGddoEWEhWU0nsHnhzbmF80VzGi6K6dB7VoDhPM0lFOx+l7K7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727775954; c=relaxed/simple;
	bh=tN4GlmUExFKttOkQZJ00VNRBkeXCKbAQwGA43sy/wNA=;
	h=To:Subject:From:Message-Id:Date; b=e+nRstymt8MLnchJ+rs0T8mbtvf3Maq69R8jS1cSLWAp94UFbE4+wo5UciBb0f9JimQjb1wPn72ZACa6mVKfS/dfFUA94rdHoQzPpMW/+o7mXbfu44BorJhTGsIR+0jmowOuNnLktjCy4O9E9HVEG7XFN099QFJQ6uWxELQPaL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=od4t4zQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="od4t4zQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE528C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727775953;
	bh=tN4GlmUExFKttOkQZJ00VNRBkeXCKbAQwGA43sy/wNA=;
	h=To:Subject:From:Date:From;
	b=od4t4zQyazMewnyqbSr/1Yk3qJ5fGL3MInknrtebCsie3320YbuuVdBhFA5O6flOH
	 4m9Dmj/LVCj4ppf0iW48EuUi2bsmJofeDKhkmZSh9owmCUePKtBTwCdSvR1NWoWwDO
	 0S0lzM24Ul2WtfFa5+rU54MKXp5Uih2VXmz3p6VJENVSCc0Zo6zTdkFJodnSbfyAWH
	 iy1Oc30Sl/KgQXUvkcxNOjN49GP1uoIiP22LxJOefBnKgoKPX9M+r9i+Eea5ii8GBA
	 K/VE8r1dKF1CjE4Ey4lvjUvCjjtLhlnFbSt6rvoVTcX2uNGZJmTBgA3Ab84Wo5PWMW
	 cntGj31gol76A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A918CE7D05
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777595362.2255.13465404842101449068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44726bc5ef0cc02bb299168276826143ba0db4fafca90fee78857ec431b8120
Date: Tue, 01 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727775953
