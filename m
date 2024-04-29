Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4A217B503
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714433543; cv=none; b=PMCuHvaZytt7nLR0QD8k0/AjzvrviZ4pMK5NJg1YNllsJeIS2wW6RzR+3ZMoK/sGeDiXu2EpMFSXxYUHUd7NITpqHi2lG5HAHBdkZq+PVyEQPykf9b18imiVR/6c8dBuZE25uQD453OepBC2PEN4DLxYWGik/m4luRtUGLqNPfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714433543; c=relaxed/simple;
	bh=uu3ztUxXUkJGBbKcirN+9X01lhx1P6GGJOqZs/MYH5g=;
	h=To:Subject:From:Message-Id:Date; b=ZLFQlQkoTfHNZcfBhVaGWTKLDN+TGyogTPUx8isK4ghGralWNo3BFrm630KUfDkCVt9Qf84fxluFHvPyNBGmrGneg/AIdW3xnQoo5X8dw5S171yE7gLn9k/+5wylx85vWndQyklhZaNn5On82W8g++BYCN0r63dkwefgbXLTAgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUFFvXVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUFFvXVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9A44C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714433542;
	bh=uu3ztUxXUkJGBbKcirN+9X01lhx1P6GGJOqZs/MYH5g=;
	h=To:Subject:From:Date:From;
	b=sUFFvXVktNFOm5hQgV2oMQk4AemnBt6rS/eqm/RdG0W+PRrvQ2e1EhS5d2MeYMuJV
	 56M+zGF815g0nIOeQoGnLG2/zXk7NrprxnXk5/DoxRrbt4P0AtBimdTpHKYP0tIu/q
	 YatOhQmtIq8FzRF9OqhUt0bszQ2Aj4TSOHZZuJU6zHFc1ZtXXtHtgoVoqFrrN8haFF
	 0tswG2tfJDSZ5veRLmYiHbGJNe1I4I8jedm16WX7InL4wX1P2scDdn7q+g72xlm6Q5
	 D9IDrqLoOO/EaG5PN0jIjmHvtu5DWZJyxDZ9XzAJdyu8xD74MhmJMupAUIBS4DNba+
	 bYT519D7NUpbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D27A3C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171443354283.26290.7300751131526763083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f1163cec6519c1be634aee079efd23979ca35ef19a5e7ff670d7be7a467164
Date: Mon, 29 Apr 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714433542
