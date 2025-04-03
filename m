Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F07224BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743678594; cv=none; b=LPzgJQEy7/NkrCrVp3oADW7yyJmnFt+skk+RZqlc+ld92XM8pX3k4zS2Ee+a56c2woJVVvCpU6l7ILUv7q4uXlpQc3LH9Ktmf7ek8zifDbAFIzCS4FHqpKZxeCnYk8bQm6GWR+GqTuM9i2satVgqcax9ZHR84g/wHMR4iUYsyhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743678594; c=relaxed/simple;
	bh=cuu8umFIt2d7SCLozQBGibwFn4xSdwJvL9n1ehpSp9s=;
	h=To:Subject:From:Message-Id:Date; b=GLX89Ui+jtOt8xlcOX3KQ+GuDTuuT+7SXFqs2kkUdFMA6C8VgHJWScDfEViyQLYoWxJaqRry2+JM0E6msLhdzyugHTD99RG3U5idbz9cBulXyPk90JslHDo/2ZDuoaHRmJsmjE2dkbiQbWoTOvRfv9XZsGmiHntyFidQPzSUMXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyOiCjDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyOiCjDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBAAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743678593;
	bh=cuu8umFIt2d7SCLozQBGibwFn4xSdwJvL9n1ehpSp9s=;
	h=To:Subject:From:Date:From;
	b=pyOiCjDzQ6iHrtfVpAxq5zWK7Mza3urN2/X88+5e+QDfuEqVD4TnWqCGFC3vHYmN+
	 5sHsLO3h00FnrEtLaR12maD9bMWYaRTR4n3KBC9bK2cM4MnPkd5TCDqtlNnFXSjFBN
	 trSmGLamzVWDjQ5BRcc78kcceAzLClh7vupAXmKLufYKNVKiaXc43K6+VCgiFHhYLQ
	 wLv8WzNUMhBrP6tQz9OalG+KAK54lyubXlznNy3CS88nd7dxq5p3ZUvxSDPkY/n9Qw
	 4SVeG5VeLn0auKW1zmu5e5hvktYXwV2IaIKp4g+XQZsUSSIq8bSqkQlg9nfeW4Ky0c
	 Qkv42rqddmZVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8EEC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367859358.9619.13827377230126636125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a7d919e1f1ac9f0c77ee863bf6752c0bb808cd3f18d05bb881dd47ceb4f66e
Date: Thu, 03 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743678593
