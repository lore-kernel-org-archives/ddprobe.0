Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AF54F883
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718870363; cv=none; b=uuXYqElsun99aCNSMdVma/HCRjZUCIw133jtfXL/Stc8N0e5S8WJHwZLqx8EHRtG8JNLzs75MRRqFu7gWL8w3sMaHSi3XUBIm3xOUco5Ds6dr8y1ihskceF3M5H2PRxpaxDucMt80J+rJTxahIIiXDnDOY32SlEMOXksLMJ2bDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718870363; c=relaxed/simple;
	bh=EnD8yke9+YM5lE0zCJ7sbIanuaLxSyTOtZLOlOlI2zo=;
	h=To:Subject:From:Message-Id:Date; b=S2B9HqQ/xdhcPhbMsPNXacc3bqs8SYZe+EQtfW9T9TnR4Ci9r1Bs3OBdIVKGZfoxixZlJjkU+ZFaAJ1gY4Z+l42Fiiv3DyiEY3Gi5nDgKQUxIrnghZw+diTat+XVjLAII2AYgEIRUg5/bA3CdAvnLLAjMVd8GQVftzU7ET7nVT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGDBJK1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGDBJK1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B1FC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718870362;
	bh=EnD8yke9+YM5lE0zCJ7sbIanuaLxSyTOtZLOlOlI2zo=;
	h=To:Subject:From:Date:From;
	b=TGDBJK1jJ+/SPyIRYoDeILxXTd2+ra4nTyxSYnFIfNzh2tKkFNa3ZifUyhYcmXZXI
	 3IKrl8CiQcz4iNb+36qqAvq4tnderU1d6iyDDDa/k+3N2hK2g8Ob8CzI/J8lw5Vh6+
	 svZiOhxQUD/p80ultCjIlQOc1WSP75rBBeHI0QjVCDVRP7pdcpkM5iPSyyBotOXQ4W
	 0EdHIEwRoBaMYp7hayxXflfzmoU/Mdn1nZfngp+ajNQoByt43fYj0CLwtp4uYcsx9H
	 Ek13K2o7XLfm3I2QPoLQr2ffzQ2U8VCeOye6FIxsTeq8aV+oBrqN4huTdlwVajc/nw
	 GDq0/bBYMjH1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF889C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887036277.9267.9300764055284879493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07cf771254a0c79a0644a60202da30429716be2f5b76abb023dc513d4564721
Date: Thu, 20 Jun 2024 07:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718870362
