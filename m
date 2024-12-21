Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3765A1DF27A
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734788154; cv=none; b=pYHYunih6kmtqAWb8lGId3yrfh89auPXrSEZsXVhoHtszRLJZoPY92kwQPiZH+rKhK3z+z5zXBfaZL8H4ZCEIQngL9LZl61s9luTACmd6xT6/4ePMIYcZmGjFgOJSJpf7o5qLq0sJsUEpjcQzNVETcD0EskEdEMKUFdd9MNJQ8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734788154; c=relaxed/simple;
	bh=uK+F9ZatbXWuFs/kYn0Xx2IDgWrCMjIF+yMwVQCOfRA=;
	h=To:Subject:From:Message-Id:Date; b=eCvcDA/NVVAHfH4PlDrOubczPSdH2ZZuGIH0d3ngTPLi9+9UE8/nUNsTABfo25tVMCZO8OTYBgDj/mVxAiT7uUiXShSLfnIf5TwfrCNu7ZJ+DvWU5uRIyPHwxFa5ROwmYcEMruWE8HWFRwQFsfXOq7CkhhRNfz9QDLX8Qfr1M1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jx18KptY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jx18KptY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BADC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734788153;
	bh=uK+F9ZatbXWuFs/kYn0Xx2IDgWrCMjIF+yMwVQCOfRA=;
	h=To:Subject:From:Date:From;
	b=jx18KptYYVsbJL5y0vEbbPyTlEBbL1AQxQ9kn6bINJk9RAGD9P8qGCRBVLcuH4yB1
	 A4onnOTqNBsklCiNnnAp6CHgnBdbywNEpUhKMi8AAI/x1I0xLI0dOyDj73KJ6SY9t8
	 HqxChNeAq9pW0Q1TWCSwbLMbBlxeMTcKPC4wWtpH3PrzG5Kz7rAzgF0Tk7ZdtGzFhT
	 5oGteq2aAwd4giZjlDVuMmY0CuTjAjVUppgZa+8TNVra73gKI0AQGUTnYSVPCixKPu
	 60Y+YvzkPdNTgGIgY9oc5ASVp/uzDFstxqtJcUGJlbfEMsC44Ptgct2GrwCbIbOsnG
	 FkXAqhIKneoCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D27E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478815360.23050.6236869399142280044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ae5176dc1b48ca4aba498fe04a7ffc16199e964c437ae442adce5dcfb97b04
Date: Sat, 21 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734788153
