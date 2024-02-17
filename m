Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF381CFB9
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708160297; cv=none; b=tUbkg+wV8aTkl1mWQscSCw3HkDMFvHSetKhhwzqBYmiel2kYxlP2EyqgRo/w+KtpjD+3+yjwIcHKL59BjmC9Wp9HJ/YydfxaNb/0JCyDoJd8+xqDVvO1q8g07V0Rl7eeMD2M5/ySo8t/ROCw5rkvv9G59jZ6s3L9vklps894xic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708160297; c=relaxed/simple;
	bh=NZXNKyFZvQNL2f3yX+orekdQu1jwYZm/A+bN04SqoDA=;
	h=To:Subject:From:Message-Id:Date; b=koVd9tGsKxAjDaHbiOUDM7CO16lxswaJ76yVXpu1WDaxIBADnmPAy1Rr5hi4v++bigzyS4R/a/BRSLuBZCgbOS4f96RSLKtn1pim3u0PQbZHc37afcBR2IGciMTO2AX2Eskpx19F9E4R28zNQBqQRu1CB52398Oflb1LNuPQyzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZ6k51mE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZ6k51mE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771A8C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708160296;
	bh=NZXNKyFZvQNL2f3yX+orekdQu1jwYZm/A+bN04SqoDA=;
	h=To:Subject:From:Date:From;
	b=FZ6k51mE14xwGGlltxOE/gX7GWhoDjzYLG09C66NL6gEtnyKMltXgxiyuxuIHTEx+
	 Cx3xOknIVGhW5AWvmpOtkixyu5YqLIyiWLGSuNiIkfnERtbCqQwxU9wZWyxv9ISBlf
	 BQHyIcevGEpZhrc1KZCPk4kw4I5Yg3T2BtbHD3vACMe5Y8GJS6thA0jJW1WAi48krZ
	 Ir0rx0wQ0GMVORyZIYcjVioLpKp9JHFpK8hcm8Fs/7NFd5+j9j/d+FnVjstsXDCX4B
	 PfTrTIh1FtsoMaZ+dm79pFqGIiuSB+rMeSLotecdiDqMq6VQY2olyudWB7Gfz8kvjt
	 cpKZb4kO1FwFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF26C48BC4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170816029636.11580.18360711469183933088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8dc3250ba0bb51bdbe53531aff0d2d11827372a377130fbd1d84d36264f94a1
Date: Sat, 17 Feb 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708160296
