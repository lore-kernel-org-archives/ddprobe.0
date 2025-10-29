Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494AC31A55B
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761768594; cv=none; b=QMgS+vsUpahMwuJAxeRCIWERiFmkYFPFqCOnfwPRFBjzjcLyE30vLb9ZWBq+DlmGQbEW3O6QiBSXci+wHftUok4/of/cK58hIi7A8dXt1CX88j5Li0AY3EOimYi8Eay3FoNt9zUMxIQ+DKfGynAZoWqBZ1pjh+8mRsagOtZQr24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761768594; c=relaxed/simple;
	bh=Vc7h4A5Tz/5B4OtkpI9AflNRqFrJ9h1RtcLTUBB3ozc=;
	h=To:Subject:From:Message-Id:Date; b=i54Fmkq2BsVF0L1CM2j7RjbEXm0AX5Jo7TFJd77qfOssYEOyXMhfIm7PKNBGPYW27pYGxWAX3KwqqTgNVaTdxrS5qpSsHCUREstodhcJIXWpbSh+4FUl69mrkDNxY9fUnAIQ/TcjqmfoUe0++/gox9MLbU23MxjBS+eryeBFcnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+w2qvXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+w2qvXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF36C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761768593;
	bh=Vc7h4A5Tz/5B4OtkpI9AflNRqFrJ9h1RtcLTUBB3ozc=;
	h=To:Subject:From:Date:From;
	b=W+w2qvXT5kKn5mr/4JRdqvrMsWXp1oNDOQT7x43zldrxRuV6AMgycdpjVMtiVZywT
	 lP63IQN8Wzw8nIJm/Wo3ZwC7iV5J0dUWzvRLrfEZIfjDLb1howzqPx+AkXfaTXzYb8
	 e7e5Rgm9e6LmSs/2kYiYpkG8CZjU8E5Hj+wH2XB6r0Ji2koM1v0gyDSZ2uZx3ya1v0
	 kCMBLX54xIFZa9ZS0hRcLlJQA2ecO4M34cE5RGcRN9rGUySj5FNL3E8UpFpBIjtc17
	 cwv0GjTCdBsDwF7oXW9C+ZH4KtxVUgXrsQ9ebHLnWWYTTrEgwisizw9yAT9Z+4p7+G
	 ueasv8J0xMu6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947CBCCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176859359.9091.10936519040872634412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935fcbf3cad9f5e6fa85a6198343073e32a5ea2d986d50a6be2c35c0e0e03a27
Date: Wed, 29 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761768593
