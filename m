Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226E01C0DD7
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727468754; cv=none; b=mD67gQUkKASf9HVaoit6Kn5zryOCXHObx4mh0RJ67EGO5qlnL5q7rgsr4K3Ya/v3BUa6/8sxNVOKwKlephmM+/C23UjsY7H0q4nOOq8TUtS4wtVZ1u13cf4r2f9+bUK6zlXYKP8Yd80BiRLPTATH06l0eYmmS5VCDMc6GC+8PmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727468754; c=relaxed/simple;
	bh=/BH10c2+VBpYuSpdkSOZ5VZ8tIDEc7xgq8LuzBZ2IH0=;
	h=To:Subject:From:Message-Id:Date; b=CXHdPoMp3hFpJViOTvCn3WO+x16fI1qf0csnDTMkpr/b6ekqP8ZDokjAyNNzhkTD4st5q1IUcGDCcwesR9GGff46/Mt98LXkg3wy+wpZQwFcnG0ILMokDwFBq3/sm7guZksKxm9Gf5zBR00gpS4NtyNfeylanIONlxQrwfBlCC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dY28ysNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dY28ysNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3698C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727468753;
	bh=/BH10c2+VBpYuSpdkSOZ5VZ8tIDEc7xgq8LuzBZ2IH0=;
	h=To:Subject:From:Date:From;
	b=dY28ysNBzlFaXDA7CVNcN2lFLQpkDXI38VnclMISGsrRObkNw8fqYVhhJo4gsqq0Q
	 yDv73ebiEkR62ajo6SyEXXzR48HeYyIAGD7BZfI9j4gjLdhNENEFSGHhEGLQ5SSwUO
	 6Mdgrm1ziS08FkAGTwtibptobNXL8SoNoQD1EQYVB2QuOxxXk041AE2T87BBhqTDjP
	 0qn1zlO9OFr0veC7klyfUJLbsUfLqmRASAJe+wkqCDohskR6I9GG/a+LtHYDXHjdOc
	 fJHcM1VVtUbANrp4EG3NNgDalKcli6CJ4rN6MketMWpve/1sTf795G6s/mv+KckYmn
	 sCXWfSo9F7rnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93285CDD1D4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746875359.25351.5286679696495655416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9acbe5cf77fadedead8f31b1833260250e518b45cd3006322d91f78771d11dd7
Date: Fri, 27 Sep 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727468753
