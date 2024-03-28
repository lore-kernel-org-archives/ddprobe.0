Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F5E24A06
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711591696; cv=none; b=LfY+Hm/l9bk7M4A7qvkDHdaDDfE6fr27Lgsp2CXR7qrKGm4f6ZeRgqoX6EqANLsg7+M+5GPki4Ke0P1cZmgCFvlHQjglWcQT7cIsrwxB8Zzsm1tNg8G/W9uegH8dVq+LMhaMhBHFM0wuamrvR+eW9jtXbfCsn1SMLA1dU0knr6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711591696; c=relaxed/simple;
	bh=oBeL6rP1KkwtFn5VUnwZfpv88ENgjkxtOhpsZJW15j0=;
	h=To:Subject:From:Message-Id:Date; b=d0XhLoPTAFbrU4h3vjJQOeYgIWbzwFQBGU2oyqZY9qd3mEHnr30c7CRPpfmpXcuEMA4kwc7PcfjxwwQRi8zLBJhs7sjkGIlgh7wlS3qjSOFnxNmMaPWumdBJHSwQE2qmxMR50zktJWh0pTLUf3jawNR/RNyohMQBqJU8TRYPsj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4awGcH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4awGcH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78576C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711591696;
	bh=oBeL6rP1KkwtFn5VUnwZfpv88ENgjkxtOhpsZJW15j0=;
	h=To:Subject:From:Date:From;
	b=X4awGcH4ewLrORiRYoX02HymaQ0hFeN53Ofs8jBPIB3fFRGHE4CLU2G5ss0s88X6v
	 ls/1F+yzQnN2gfC/Wg6rn5bb+Dur+5QGjaxHfdqYXNZS9qDU8rU0T4I2XtwbigLuHX
	 OS1SrRRO2mmZ5yryzlL0kkwdXw3xrzxaaJpkgtzO71ZCZzIl99nlBqknb9rWauvUIg
	 hV+cAU93qOXZhR4uGA0NDOLAPK2cNol7SB2/n5AGcm0tOvG26t1dm9NHkldSku10oa
	 AyWbBTa/UWBtSIgkIhKQC5VnHfYvbpUC1ZrBOHxP5jlvXCCOuHOez1D+0PTgwYQtts
	 oafj2YaBHYdkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F689C47DD9
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171159169638.11327.10009308181679166049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 399eb02079d1ee8f57bd3ca11eacba15558ea41aee910c8b03665bb3bbe46194
Date: Thu, 28 Mar 2024 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711591696
