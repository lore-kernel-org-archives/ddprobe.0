Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283A9261B6D
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764067974; cv=none; b=gnIyXJZlPZwz2egF5beTibDiTS8GIIvit8RiC0AgwUP5Sa/1v1fG3XQBGgHdZ3quEWRDex7cPX3FRPuZDGOpgjmIr01CMPohchdKBERe1sjlIoFQ1Ca217+tPz3xhrhy6vpxw6jU8Mrk2gJR9/3Y7T4Fk9LtP9qj/BUV4K76Zdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764067974; c=relaxed/simple;
	bh=nRKwCSeKUUhHFpFarqlEL2Ia8U1uncHk+8DuUB/GqfE=;
	h=To:Subject:From:Message-Id:Date; b=NK76NrzC3izpDFv5sCXdILFiIZfopjAwk5CHwhz4H7n4mXh/KlTvntGZAzdaVc7q7/YikSWgikErVZQIkcjhRvu/CWb48BvlETklle6avkNkYPp9LV8O4ZVc/dF7cYuieEANfbal+L6kbVit4IgbQekA9I2QXww82zQfdrtXtz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHWikwml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHWikwml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCBBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764067973;
	bh=nRKwCSeKUUhHFpFarqlEL2Ia8U1uncHk+8DuUB/GqfE=;
	h=To:Subject:From:Date:From;
	b=NHWikwmlV/smHLXUr7RXmbk+KaE0yDaE8F+NF+Zt0MmqK/0+6TJUA9cS4p68nsRkl
	 27c3hsHipgwq+wkaUfDeyW1BnolCR1k/O33KZIHp0rteA6AGFztY9XLWe8kjwR8HnZ
	 QrgO8l3U+wOoAq4BxwIHQevW5La7xGzi3Ep0bwsPl0jFpubzT+iSadHkdeMlA3EzpT
	 nDZ17udmk15stkB2igXkT+5q+RkpZiRa8cldnCtX/LWRlUH74WM8KSZoLQ+wwE2t80
	 yVm2FBlY415Q02LKQsA1/kyCwtKJuNDV32lhYE78N65QzTwNulXkroh4WU1HYtr/bu
	 94PhZaFNttBRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911B4D0E6C3
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406797358.12637.13192257959847595333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e687323af25716e73a46baf35717b27eab1500c6a783ecf7a3afc205af0508bd
Date: Tue, 25 Nov 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764067973
