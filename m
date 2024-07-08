Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580B8140395
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720450583; cv=none; b=NoT746mTxD561T2Npd7xUnip0iEo9wE08PolwSUIgryYcP78blLUE08bk1f3NCRIzFERHO6MuzY4IDeTH2r7CL+W1MCWoQuyH2Q8Evf405rjwzfqLooCgn8mZpVHxhMh/MTF+V7nE7/FqQU94R7Zls7ZRJkeYSg7SqQzjYnoxNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720450583; c=relaxed/simple;
	bh=EvhfCzROGZqfG4ydDESCK4TgLM7aPMpOYKk1kLKkPcs=;
	h=To:Subject:From:Message-Id:Date; b=RdDO9eMtQIdfv4Zm08DV+kqHEVXuYaktWdBLDFgMP6k4q9gxSLxVe0etZYl2EjVg/J9lowQK3e366F2cgxzYaZX8QEAqQsvMWsbm+gbOXByw7bfib/zmzGVeNCB1jJFH0G6d8eHogIN15qL/8JmW9Pk6ZmCZkioSB/kpzHJKLNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hq8uETc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hq8uETc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74B4C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720450582;
	bh=EvhfCzROGZqfG4ydDESCK4TgLM7aPMpOYKk1kLKkPcs=;
	h=To:Subject:From:Date:From;
	b=hq8uETc0hUvPtRFicHY7IDz/hv54LuB05s9jWjcBBkcbA/L6bBORirf1fCdXTbSjn
	 TmgI+749GQKHAy/cDr6AnGHx93GIesBHlqFg/WkyIeiQTv/6xMwPC8GtCgZBeSN757
	 FsxCBe2xMolPDUbCBjp8PtG5kxWcWYN7Fozx4PQDvpNemZBttEMQse3vzRt+4DqmCk
	 sVM8ulG/FUFaFZx1L0lq/FgsaQ+X/5yUH1ZSVrXqFypiauzhDsLHi7+X16Aydvqtpo
	 VS0vty0fBeKl0S88Ucjg0sZ6Xj675xy/qr3AiDQAuHQ/HePV47bAsg5PHrSni3Tje/
	 AhB48tSZKmurA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C405CC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045058279.4034.5275615185921449656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b534dcbfcb16589cd97e9b4fea2b8969db8daae9e774a515bcea33e8c0502aaa
Date: Mon, 08 Jul 2024 14:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720450582
