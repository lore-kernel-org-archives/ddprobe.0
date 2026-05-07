Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EDFF9D9
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778112454; cv=none; b=tp6OQ+MOanCjwhJg85vvFpb77mrT8DlNlY7CePejK9Oh2Zk+fX2A5m6P4suI4+fNEdiSV5LzvPLmYaIciTkkYmD6JzuzyK12RDN79+/OFwu9sIqXiSJ7KjR4G/Oh5kQJZILacNbiqY14xyblTXwFBrOLfVy7c9MObp6fVRMCCuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778112454; c=relaxed/simple;
	bh=QjDmNFAIq9PgnINH2ZkOpv2m110q/eE3NGr7sQ60i+Q=;
	h=To:Subject:From:Message-Id:Date; b=nB4QVjb78lWutIJELKw/H4yodsCTeDKzObfvWQ0mduZD1D05GPQiu8qibB0sJMbmTEPrdrUubT2K7SDspPspbQAFt8XGuq0ReBZZj3sqJjjqzT3koAV4e7YisjwFGGl388ZdLT6xFaoR1zvi3FkTHzrtVkoXVlX3E+qcz7fJgjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9reP/rP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9reP/rP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF77C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778112453;
	bh=QjDmNFAIq9PgnINH2ZkOpv2m110q/eE3NGr7sQ60i+Q=;
	h=To:Subject:From:Date:From;
	b=t9reP/rPbM+UwIbTdti5dfmcpN1cL2xuaTy4PhUFljvyXPYVqPcM1iVe0qh7QV4qE
	 jJBoKZEyTM44DaYmm15M23VLCXvrWuZii7rTtK2NRThHyzHtG0EONKODHo/cLwFbuP
	 V6hsSyVTE6beZfXaXn+ORZmvY67nUhJxWN+CHBEwN7Nrxnh2hAh0TFviBS8lUMThFl
	 SGDsgJTARcwBz6bPUydzqkMPLk0/rw3vBsHWFCEU6vuY3V/1urNo7IfC0ICPlPAjvE
	 /G0t0Sl/3DUSEvZjIGKJ5VHajBriiFdS19Bg+Jcf3IXX9yt8wUgkvgYF1vSzo4uIaH
	 l9BDyIMmYjtHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA222CD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811245368.26604.3909713208194902580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f165c56d26048bbcc88357d107996f75effd381b5aff7674887719734cea781
Date: Thu, 07 May 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778112453
