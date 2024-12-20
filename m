Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B64746434
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734669954; cv=none; b=Kdb7BzvRGPxc6M+0nbkNFmyibiaROI6YxSyE/j9MT7o+55AuyC6fyq55yXvbm2z1S7gSJQ/0lBAo6Tv24OMaNUkfYLbD9FCuxIOtUEP1VsJBrD5nfHk2WEuAvo6NpQSp9hdKfSEOvreE7qTe9iJOTHVuKfg4xpX5erzohENmozM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734669954; c=relaxed/simple;
	bh=FRU0EugGcRxjyUuo3/P4PDVWdif3xpnCVsRjXy8rA34=;
	h=To:Subject:From:Message-Id:Date; b=plcnJMmw5Owmhqs3wOHxJ5nRs/b2vzg2qhJl3JRcqsFdxW5WAGZ6NHyTEwCxL0SUqzBDjX9HpHyUkVp8fUaM+d8pRcZN/L8YLjJRLnyITUowVf3MoWhFCMZUgKARrOQJ0GhZOKyK25oIfi3UoiLiOUgAnItdc52kKV8KJIu5ZNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwK0y2ZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwK0y2ZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D71C4CED4
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734669953;
	bh=FRU0EugGcRxjyUuo3/P4PDVWdif3xpnCVsRjXy8rA34=;
	h=To:Subject:From:Date:From;
	b=YwK0y2ZZw+PlCEUnRvCVQiOuRJAp7/Y7oUZ0/gbfP2sg9AVfqaWXnbJ4ZO4fB3PD/
	 YMtcOGcTTBdiS18PtF83EOTLQcBkzw5vCxEcAC4tyMVQrlDRMf6VnDBNf1voe/CTKH
	 A0cGhQEx/pi8s7iIVeehJWC4fzVHTqukgOGyqczQZk4+U5u7yOHgflkYKhOtrYGTXa
	 6WfvphiGgxD48jRr/jXEp5GWD0XUWXofaBlTe8rHX3ugDjsm9w2DCJfocFo4RdgUfw
	 zyf/1IJFu+hDzcGVh6P8YZ3yYX2cblE9iN0MHPeS8j+jvCqEK+yAkVNCs7ka9LShcn
	 7s9FPehNd469g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A163BE7718A
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173466995365.2264.1728097296298104262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb05cf2ed6e56fcf1ea28940064028cafd6ff613cb504507b207600a01cd7c32
Date: Fri, 20 Dec 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734669953
