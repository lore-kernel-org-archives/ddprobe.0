Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A691B641
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705555097; cv=none; b=plwuBNNfQ06DOQ1w+Q+1tTH6+0s1STjCZ8nCd2j5Sv7oe1g1fY9XYZxAfRk7Dt2W/OkHUpQk80jot+auF5EsgusErZHD9j30hORt2bFVO9/A4aBOMfXNQDBUPF4GhZb7rTjLbkRMbAPGePTDiLjQFevnIdLKOl8vOYtqykb8rGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705555097; c=relaxed/simple;
	bh=7TXTned83smMrkoMT3+fu8x2huQW5JWhA3ROoqN7YiI=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=envglW172ulfPHX4T3MqQLihVpLv2Jv9Bl/iAtQSgCuN6+pgF8o8aTC6vSqpEpCWj0VATchm8DgfY0WGAmMBlW3eGbEWavf9TdD06mgsVCbLkR6smEZhnHTKhbilSUCh6QnvDvwlgQcMCDcFZ0NTh6V5wHkz2ai8wRGKiJ3si8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2lC/NTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2lC/NTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8634AC433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705555096;
	bh=7TXTned83smMrkoMT3+fu8x2huQW5JWhA3ROoqN7YiI=;
	h=To:Subject:From:Date:From;
	b=P2lC/NThvhwZLdtAWlgcjEM9o9DPEWyDASJYP24L3R5ufKsSG7ohNwT9Kz3xxE4qH
	 cVOSUghE8Hd5E5yFclD9u/nWauexTnTLmkfFsi1dgOZfoK9MwgO3pwDiNLJSL0Spr6
	 TO+iuTk33FbBO1ucGEIIjpJ73nugETpB9rkWMvrVxzNrOZpP8wMFbHS1s4PPvReXm7
	 20bgfQ4DzdTuPSn7M9DH3cCdBexIiFSaYl9qOl3S7jojWFkaP0zJMOrBJPaBSf782c
	 KzcOkzpI0wddggDdMl3F8n2IuNmcVVMCF6eOlT/B/vWbgxu9G7cBXpd2QgSM5ccGk8
	 67QpqRMY3+7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F54C4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170555509640.20801.12948040349605243963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68af0e3ef7f29d374172037b3d935bc77e9fd7223fd508426cff5889efb305e
Date: Thu, 18 Jan 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705555096
