Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025A76FB8
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710469697; cv=none; b=ZLQ3nPwu1+mEucnp6W+UtDXbtniCjmpmv69GvMH1XUzq2HqOosw79n5MNU2i08uEse7LYkGic6DlyQjEizZ+XrKIg5H7mdREHb9101NcRVL2YuoztobVRCJUbccXu14an0iM9Jo469MDDlJuVX/YkhArlAdJFU53nf7sF59dLUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710469697; c=relaxed/simple;
	bh=7lMVOwFrQsBN69KEBwF6mXxiaktSKsWImRkfvPSUt14=;
	h=To:Subject:From:Message-Id:Date; b=ZIGglCKHP1/rFwvcy7j9L2zL3Hdok+532QyMDjaJVX+jnsix7F7IHJ246wWQgHg1kNQd4fq8N0qCBpP1dhddCz9iYmbiIWNY39UeWb/wJJLN32J1toWuCa92P31Qu2XlxaAk5Jukd4DlSEatZeYJcuS8XYqD41DJFMuG6CLNVx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiuUJriS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiuUJriS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7522BC433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710469696;
	bh=7lMVOwFrQsBN69KEBwF6mXxiaktSKsWImRkfvPSUt14=;
	h=To:Subject:From:Date:From;
	b=EiuUJriSdfkSdtLHi+Bdd+JG0UT7t2EvV1SgLnc7hSA8IyfvvQEuoL4V88KABa6O8
	 3fodrT310eECKTtBCheSSPEDB70ssCSzvnKXCKT4SQXS8K1qrT5/Kv3LxFAAgFLGme
	 1Wp96QHPumwnYpqEeJPMYU5qwNEBEeA1zE2pwl7fTllYZi3FLOIUXUNJps8TGO+tod
	 WrvUgTRyQy3mfPbHzRf3RzcDL1yu3S+4qUe0efAmwvfH8ccgd9Ue5/2OfH3eFHBt+1
	 LQlAwCs+v42hPrKJPA+qpvvYGaBWCtUU1NzBQcyzZ1KMelZqBmRy/Lj5B3Bn2ce9n9
	 OCiIUJrHBBXSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645F1C54E5D
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171046969637.12675.4440030618805741114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f37ef846b0d529c1363b2fcdb08118b79b8fefc630a5ad5218019f3bbfee20
Date: Fri, 15 Mar 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710469696
