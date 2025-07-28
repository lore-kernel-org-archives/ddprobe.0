Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0501865FA
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753686594; cv=none; b=ujjiwTtjlIkqmXE4yfI1riLT6vwi0ig+1wyCol4reZphGQUuR/KQIAqX800FHeWrJJyIJ63ExKkF4JI7Ub3k35au4ajs7b4Gy5qL4v8dKNCDY2Y5IheOzYl82iT7x635sMXAy8+9UCvssJL2/ZrWeqClHX/PBQ+mchCzBwveOVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753686594; c=relaxed/simple;
	bh=F72OvI1Kungo3b6w8noZMwYDwXrhukkXLlsLsQiQfUo=;
	h=To:Subject:From:Message-Id:Date; b=ljQNTDeBhC/a67PQ55/FwkluS0H39QRfnkMDQeenDMm8dWzb/LsuypvjoP3VcqSQUbXBdXZ9cpG13Wv5ulZnKg1WeBEHlg9TWIpOy8IaTeiPwBLJjjWMUW6P3ixXEZuWuLzwK8rQ/3pie/p7plYPbM220jbzr2glZJSJHp9Y06M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxDqlIgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxDqlIgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23BEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753686593;
	bh=F72OvI1Kungo3b6w8noZMwYDwXrhukkXLlsLsQiQfUo=;
	h=To:Subject:From:Date:From;
	b=BxDqlIgo+i+TrqYmGfsA2eS1DJYtAEYrgaFH5FL1/fqvDzVqbxFIMNIHGbVyqu28o
	 wY7gW65F1HQ03uh8jJH4YHndOJECnudC7uJarutRql1D/5KaVit7n4MkiVYY92gxwE
	 BngLft4+ZWSY2z91DgyMFf8t9GPQFIROu6WB4wH1aY1VFjsfBbr4ipK4Ms+Ma8mBLh
	 F49Ds7CVDQdCiXVFpiYSyXCm8GXM/l1JvIv5nNbnGwnu//c7HG4P59XDFlicFxZa6f
	 TbGEsSuUEKgGIzUC5eOwzTQjYhsWVqW/zKf0HsU782M8cD30zM0v4aTZx/nUBygO8B
	 wmtgLOSZpRkHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F9C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368659358.12146.5776195775457869508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8c4a85147f36535a57cba559aa21ec939fe5a754ef61bf8b2ad35f390d6de6
Date: Mon, 28 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753686593
