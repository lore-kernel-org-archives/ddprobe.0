Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36647184
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729386954; cv=none; b=sQtqfOkiho96fQQi6XUQMzYZ+wO2OAHxqfv+wAUmUCKdgcsDynGsGUYVm90aTznErgvl/x84QCNgtmjJQLkyaG9i7Zg53dzBvvhQv3KZOufrgsSouSDjQVjnfzh50BlmAWPzjPWvL2ncGzSxJvHngMvcpNeIKCkpsOWmDQlBsZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729386954; c=relaxed/simple;
	bh=bsWBnIxtIZBb6LDIMqmElaG7YEHsE8kJ5mUMc1YBsPE=;
	h=To:Subject:From:Message-Id:Date; b=uk8eaxQJ1cPHyvgKlC9PQIexagiFva/wgtvDUXXfptGg/7poYImDjvwIQfb3du6IBWvGs+l8bWCLb1ekQIxDV0nL6FFab+W9zzNwHhyqr0OMhQIflk5sBDC341Yknk4NGHAnLeQBxZGFtvm95HoV0ZMb62eNm6cFWIiU6Udd6zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCCPubAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCCPubAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26CDC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729386953;
	bh=bsWBnIxtIZBb6LDIMqmElaG7YEHsE8kJ5mUMc1YBsPE=;
	h=To:Subject:From:Date:From;
	b=MCCPubAzfkF/JY7QvDFmZMfd2Wx6/6o5580GRKqqx/pBN+EJoozTPcGlv8m8GP5xS
	 XwENe9W88tW0VFEsLftenJeTdgpa/h0+OnBENqveliFNAAE20G35erV+b9XmwYkkYB
	 /7Y8J8h/3jNv+wWfLC4znxgT+otA+cdOTZcOPfjMEV/UM9+WH+/3o42WjuO726AD5v
	 35WhLaU5zKc1puBpdZK7jd+PGyf6wxjT0eND3SB4+hLIDazUrZj+h8NqOU9QL+mZnU
	 VQ15nzY5l0lf3cGqV8dceRN7Ditnat37F/OkHSOhpzGPleT5Jjy5wNcfGJHH26Ye7+
	 GYWui+2tV7TxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF5BD3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172938695361.4547.10176581596471062039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3fc279fe09f2bb253a5cec536f34eba31ca695f8e954b80c328d2b9c5a5c8c
Date: Sun, 20 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729386953
