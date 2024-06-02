Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A935CA7D
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 03:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717298123; cv=none; b=UwKAvvqlJYCmw/eoP0SPLZivFVvHuQToIdXGkhyUtryWX3sOxLGF/WpRwfxzLiD5y5cduhJiPoyIwtjGMtTRGyTjCQtQ3+1xt1Fu9EEQ3xhO1ZEGKnFl629yAAxIWeQictrNkHbAJPhU14N2ZIoQP0o320ljR7dSMavNr8ROkvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717298123; c=relaxed/simple;
	bh=6kY6UVshe3gxmqOUXqIhl0gCku/uNtOoA11qf1Hbsbc=;
	h=To:Subject:From:Message-Id:Date; b=qcpzEgi8A6aj9g3lJakwfTjpO8OKkZS2eHzs8c4DoOpMnovg3rh0ubAM5rWZCnrhJmq3Wdz4b7a5W58zeqik1lipMvcHb4tqvEk6U6/V26U6t/V+TxgCTnMomIwdDz5E0eyuejY2TdEV58a+eBF8CxDT+9XHm6uxEWjgMImI4/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nH4gM0yp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nH4gM0yp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A46C32789
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 03:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717298122;
	bh=6kY6UVshe3gxmqOUXqIhl0gCku/uNtOoA11qf1Hbsbc=;
	h=To:Subject:From:Date:From;
	b=nH4gM0ypRVjT1aNbCtU2L+yBAUT5QVT2YibLpTKCHrOEE4yZtx7N7rDF6s+iMeOgP
	 I3WOjMZljeMvn3u+3vneYx8SzVYEyBnuxourFhyXtZduBcsjq+ocXpE+Ll37EFoTjr
	 GAnvkMLNLTqz1WQO0jKP582Sp0twPFqvrTavIYiXdATlTKJFrrM4IsZ67LsEzUr/RU
	 RQAygX8G+NTavQy1pFKElVviYdDde43Yzd3CvmMR+HTlV1/kKVKYBkDZ6SXiv4lZ3B
	 FxUGWaxrYhN5RMLyxDSVfQvMd5lKU/y0Ze8Jb4WeyIU52bvXY9WVYZN8Ci+78VmDhW
	 P7i2+O4Wa4GQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD990C25B75
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 03:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171729812276.23959.17013297420291550882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd3b09114f66288b1e456bca0468821f6dcf526983a9404e8272eac7a7256b7
Date: Sun, 02 Jun 2024 03:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717298122
