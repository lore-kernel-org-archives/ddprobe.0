Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C2737BE6C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784462314; cv=none; b=A63wGGRh/Ui9f/BoZkVh8wZJbxNXw/L232jcb1ew1FyzZQ63/R4/Xw914re06DTXm2puapVF0NGxdFpePv+Iv1bOFHTONGNYt6PYQTIWT25asqAVMERCzpb6TM5UeXCDgsHuMxMirk9C/0IW7lixrysQ//KWGlLfISJmjx2f5Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784462314; c=relaxed/simple;
	bh=ZO+KH7ZVIlHfcANkzdwsEl1L3Qy1GBptyHaBsZG6khs=;
	h=To:Subject:From:Message-Id:Date; b=f8nmlK6eE74RVRNmIboYG5f2nWiuPwIYISo0VbHDafBUPEZHsfJTT2zCUwH2rO3QSm0vYOx5X0dB+PpaPZjndWpTUXiWEn/AAJbTGAbQNWSV8OYEB9yWYAeNIzMD21LFsSPXI3HzCN62rF/zVL1Ce6fx8wk3gRN1tH9XouyYta8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8V1I0oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8V1I0oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D011AC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784462313;
	bh=ZO+KH7ZVIlHfcANkzdwsEl1L3Qy1GBptyHaBsZG6khs=;
	h=To:Subject:From:Date:From;
	b=g8V1I0ohpXxxiAN6x82ZdzzNpRvYDDzrNi/5HzMG39o5At+3bPHzjZj8KjnqKf9Kl
	 nJBy/d1R2w05XJW6ohOrt4ZYfKdtUxjVCMihB+9yIxbC82rHT8OoU/pR7QoXgk2V8y
	 r7ipychNmM3NraHUzr+QmEijLWojn+MbUhuI960heqEaqBGI8ONj5jhafBCX2AWNCY
	 ABl6g63ruHVgc/ddx/iTKcK7vQg7S3O96bfQnUls4JUdRqbeUp8sCjXPdXMr75vK+Q
	 wqVfFMM3WWHeobuZkdhYGsKwnqGFpFlZ/Az+EveUYII7RgdoO31wbkqvAMXiAXe+jT
	 K5wXnWA3omszQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8C0C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446231368.25839.12890885638100737386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2966e90561a9f5186cc4a1443f21010db42cf803427f0600f9eddccdd7d022
Date: Sun, 19 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784462313
