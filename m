Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6937D3019D6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784773774; cv=none; b=sjqg+ppvsbrmN0lY5EAeR+Yk4Rw2RfQ1jfw5CGK2Zvu8jSOr7xR1l1V1XKjmLQMt07lB0pMKOXcUOIM5PtpIuyAdoXelMzl9C2qaMsmnrQiulkon5ByYnVxO4YZomZ27S9JfmQoWHUX2T6ZH1EKJNwcDb5yVr75f+r+HkLTLlMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784773774; c=relaxed/simple;
	bh=uVBpQe6Te8gM/ne0pCP7PWlmXljYb2bfh8FavHQAvfA=;
	h=To:Subject:From:Message-Id:Date; b=dfVJyZM5bYewk473PLgHkdVQpbhYf1b1O11G2qBImrN6+vkpg+lumJukou5n41XEJL+t5jJbDPEbjsRIDRvKPXNrQ0AHrNdEMtmvJSySSbtArPxabzneGqY4agyT7UVokBMG4ZbVxqe35uLgoiAyLCniGDV867QoQhTWHD2lpys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfN+/W6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfN+/W6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 002FFC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784773774;
	bh=uVBpQe6Te8gM/ne0pCP7PWlmXljYb2bfh8FavHQAvfA=;
	h=To:Subject:From:Date:From;
	b=FfN+/W6WF1V0+MhUAqbmA+YMf8znW5ToGCxtbFdewf6IInRMI3ltfP441FkJ3uAYB
	 LYYr5oO8JUP1oAHlqePQLlrHa/Xk/hPaMu2IhoDAtNf8PpDGsGS1gP8btjn0+UoxxK
	 blbt9T1AO0802IKtrg/KUWRx/jXwkLOALb+j1RaCorUO+yDao31fsG6KLx2fouDzst
	 sEzE+Pp0jZVQCFuCm8ana1bS6wueM4N0meUsMmyZJPZ9mVIioyydiVQ/p8rOvow5On
	 qYodamtR8zJtZ+1maFeHqysUWH1nzx4h3unQNnlcfFUhtmT8ZNiNdbTAhczAa49wkw
	 MvQ5WJo2TN7lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCD3C4453D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477377373.10220.12543815094899944493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff5ae68ba4092742a4e21429282d0d5b1a6ca2f63403c0b86c684e32ec2b686
Date: Thu, 23 Jul 2026 02:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784773773
