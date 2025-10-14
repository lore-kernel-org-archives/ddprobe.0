Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BAA2F0C48
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760438394; cv=none; b=tLE48NoUojonftwwr2slo6kR0MJN3tbfJdE3P3zg4qnlAKqr1cGPaMwDN10oRWxBppnnuR2SaKfvj5KGid4FvFESroDrBNrEpq4GGbpvmGnbmn+i8GiaxfHU1cdyaP3hsR6s4XsI0OSTn+whVH974OzAtOMYDxiU57DoLwpV/do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760438394; c=relaxed/simple;
	bh=/XEN4ST2W5Rlt3j687KxazMR5XLKpVWFqH5ln5e+TZs=;
	h=To:Subject:From:Message-Id:Date; b=CCt0aZXK5hBoUrfbmscq1cd5/V9g9ADt5ck2Ouxm5OhwdNn4lPsWyIyZ+O/uJArvTJctzfTZYBOSvrKCXeS0A1R1w9vm91ZE6G3+RPkz04b8ZjeSJC8sTC+1qFBkl+cISvO909AsJ9VK3RVefpcR/G2LRIkW8duPlDgaHHFS+cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKZyvSgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKZyvSgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5238C4CEFE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760438393;
	bh=/XEN4ST2W5Rlt3j687KxazMR5XLKpVWFqH5ln5e+TZs=;
	h=To:Subject:From:Date:From;
	b=kKZyvSgd3Wq4JKhY8QQMbue0nRHlMQzFHLKEanIa7N1do5mBKoLQSB3yNv9Ft1lV+
	 pehZFKjlVgiQi+J3m3XGrU7TeLFWu81BhCHmpEklDPlUVndMqwqa24YMJN7Mez904B
	 CXDWmkJKyDd6aaJjHZb6L/x2wx25rYI93ze3ZqrUCEMZVNWvmIsZheDk1VrFY4dkpA
	 6PuxPXUGClIhRfvnVi7LFIG/JFtUqK/UbDelVrAMQyXL+hDzMf7Av4aw5DOE9VhPfM
	 oUI4i0BrPHL32dvpSxoHBVNCj5W7ZcmZoQPLUPBjkW8iuMVGW5kTpeQtT37x9UvgON
	 r9vcwLEJeTCBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926ECCCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043839359.7045.15579219247074665931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5f2c1f5f0cbd9d64d8c0e728bdf7c7ed9e7b945c07f4bff0f8d2832de507b8
Date: Tue, 14 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760438393
