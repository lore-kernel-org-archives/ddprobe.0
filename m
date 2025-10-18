Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D3B1339A4
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760815794; cv=none; b=kw0nJ3PwTtNN5DRl7xE7oeC/hUpDg7Ga6Vn7zdB0offZ51adHwtacwkJN+y2lQyJC613dOdHkTZ8maaSfjdSu0YKgvNXsbcrOtwyxPlpseHBEEEASnLlJOD3bWdysjzxwL6AuxnJ6HQg7dpQ0tHdxtLxOr8Fd1UgaQ8tmYrG/U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760815794; c=relaxed/simple;
	bh=4OQsCHjtuJdVWk7H8W4Hf4jtHy/QVB3wwlYRXbt0Wtk=;
	h=To:Subject:From:Message-Id:Date; b=EvvqBT8AzTfS9hyT66d/lS6Yal+jqO7T5DR0yheHVOWtUAdp+oN8Uv+lApFaSDy2su3UGXQ23hX9g953aUjJCFCa5745Nmbi5rS4sV5QAzMg8SN4KKnr9Pam2QJeEUwhD9ifUWfWHZEFCJUQSIP3IxH2Wl+Y4KhV324E/jDUyuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhTFgg8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhTFgg8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99B4C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760815793;
	bh=4OQsCHjtuJdVWk7H8W4Hf4jtHy/QVB3wwlYRXbt0Wtk=;
	h=To:Subject:From:Date:From;
	b=XhTFgg8ojGOrFEyzWwEBzszfGldeQrQ4QGVgmHeUZ1glWi4UIKmQQ81WlkpreUW+W
	 TsLN/XDj9x2fIcvPvgN4oPth0R/LCA2zilxPfOQxifULttaNuQ6NLroR8LjdhJdqsw
	 fg9D5DzY+pejP41VD0esyJIDe2uGT1aMYKOyIWAO4atK4axdr0yYEaki/ORmrej/+g
	 ZTJ4LtGmmKfWN3PIp0qrxPrF7Cjzj3z49CP+ooQ5R1eb3SsxS8ToUaC/7VWnL1jWlX
	 RKnOkUjnjnZlJeZCkC6++2LlRQeOa6fqZGmMnnAq1YJHljGoEEFI/Sel0xl06/qg9G
	 vvMpHHjIpJSOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F3CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081579358.21387.15729966480643741467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c6d27d28799ddb10e2857b7e7221fd2a718d4b73ce1ca43ab25d21d4f4850f
Date: Sat, 18 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760815793
