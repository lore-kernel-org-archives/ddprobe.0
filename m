Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070D837BE90
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768382634; cv=none; b=pE5QHsxxpOd1WKkCvskajVhRV7LZkarFFwzvQnfhn3RDNrfPo1EcUxlJP9c65wo8QtI6lllMX27RJlHZK4IPOlLzmocE6qDHM5GmfqWL1EciNkRhffIP5L+5CeJaBGXF07UIBoQ80yE0rEyFixM8KX3JwT0uoOORwLbk39CdGvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768382634; c=relaxed/simple;
	bh=mQQ9N9u8P/72UWdWHUEXcL6eO3tab3Q0Pm4kFic6y0c=;
	h=To:Subject:From:Message-Id:Date; b=N4PZVDfuPr5dPDTeZ5jKZo5qReEgU7FuCvdETjmvfQEDNDBTb5Ocml1a13LoUkji3iWHX71DsnjuHKzogSAHqex31FuKCx09pZdWMoyGHVUxmpk+V9ZEwtKxt+VVk9WblxKn7mqmwj/acTz5ITFhgmgycxNrm2XOKjVso8gpUvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EK6q2Whv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EK6q2Whv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD1AC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768382633;
	bh=mQQ9N9u8P/72UWdWHUEXcL6eO3tab3Q0Pm4kFic6y0c=;
	h=To:Subject:From:Date:From;
	b=EK6q2WhvaAxtoQi7V12ZXwHD4Rq1THVmrg4aJ15AUmGLAEVI5rB/1h1G2SWpvUir1
	 UfK8K3g7Ek8Xde2pYRa0RkgSSeXufemLteQR7+iRBc65SLt4WtRdLRrKnJNaOwqIfE
	 klwzry+Y35vAGomJ5N8UaHPu4bu4BjoVy6//SvbkZvqu5ozgt508y52eaw/KvW5Bjx
	 L6T5jquYzdPaxLkqExud/EsiKsUsLJM9KyOpOA98Yb7bLmbK2Jrl6+SYM4oObH+YGW
	 x+nZ7fE4rexbYyhTH3mwBi3GgvJec/QzBQ3S20Zz5t/JbTXPtj4oC6Zz4qX7XuE2A4
	 hbN0ZITCZfr2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E2D31A2F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838263358.24125.6210995561805996354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40d4b9d73face6af5fdb0681d7fcbf772b6dec25061443736c6eaac6ecd8bdf
Date: Wed, 14 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768382633
