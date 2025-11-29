Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E2211CBA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764393774; cv=none; b=FxfCTXODlFUL61cWNFqiSgPJdbxwZc1WVomNWB+DKdjyZ6WWkknsBaFpyb/nMfBDSNszMO5k085B/Rr9FDKb3ElLreGEQQLJ2pr/KUVxNVNWMEtm6uT+p6+DzHFy0J+FS1ryXl10+v6xakosCh4S/mgxsdFIGWtn8+QPaGEi1JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764393774; c=relaxed/simple;
	bh=V1GrGOVbdeD/6Yi7UpeYO+IkXpEBnw1H99E1m7b3Ofw=;
	h=To:Subject:From:Message-Id:Date; b=bgs8WMKFnc+0IpRQlfjpwg6Mfiaug8Ar2TxWwSH1UME8o8Ls2fPBHCdOSGQt9Bx19fyTdPYIOuCS5wXAd5tU/FxxY0nx1sDnlP9JTnREoXyPVZCXoL/ePaUXKAfZFlemIPviq2zLV9lvtZuf/OUmW6Xz1LTroB1hEIwRdoHeilc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bi/84hqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bi/84hqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFB7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764393773;
	bh=V1GrGOVbdeD/6Yi7UpeYO+IkXpEBnw1H99E1m7b3Ofw=;
	h=To:Subject:From:Date:From;
	b=Bi/84hqEUM4rh4XZbUoSOlYcaQZygAk0JGXDty2rxut5GDVsnRJcaSZyX9O4Rjfzv
	 PXXLLfALX8vVraZcIon+FTWM6+fRIH6gzfUO7PFTx4y+qmNpjxPVQZ9tlxLxg0IRQp
	 I+j14ZJ2U6o+Zw5Xp30WEJH3vVyxjyNyVs9WS8AzL/T9TB74OIU9q/KJlBq+Y4kPrO
	 5krKr7vXOa+eS5fdOFyd/cN4lAwfJpQd7HQj5p9zNqhcm3qxRDt+i8jdkbI+DIC+wH
	 yPyLbd5cTFnePmU897i5dT7P0fbkaXydJrUpnWukCvYTjTcGYnNzJVn/cJtbQNsp2T
	 Hv87z6RXh1YKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972E5CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439377359.5645.14430666257602482141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a30a2b48a194078a17f04376df4080637a62d4245f9589cb3b333f7e57de39
Date: Sat, 29 Nov 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764393773
