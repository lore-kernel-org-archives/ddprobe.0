Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269B83559DC
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762471194; cv=none; b=HdC47pgXsUxyzNsqpM/aTWi5WHFenyo5fjqktyzHF9kN06p/ZWDSBEp92FNEn3869LPRUcVaW9NKRxTsLge3WQnD/OfWxmXAqNympzsznvAY3/byNksriDKy4j3kP2f6c8HgYsFyBB/5MDOsYW6rN7xjJ8udP8kHM1B+DFPwK/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762471194; c=relaxed/simple;
	bh=/Non/IgggacH3Z+NFFDJzdX+qaVEfJK2/eDmVr3So/U=;
	h=To:Subject:From:Message-Id:Date; b=WMtOUQYTo6FxEik8GVojAYztdH9Ixy2R9g5nZQnnJRO+yhdsxeOt7gnfIHJeIMa2xuRaD6q6JtPDBc06XHr+FlCr67LBg3jGIa1bnN50xAa4Z++d600YZsVNg7phiLiKgMHHGqLsLHSYx9DbzCeAPFAawt3zadDRolDyEylWZrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/vDxdqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/vDxdqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59D9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762471193;
	bh=/Non/IgggacH3Z+NFFDJzdX+qaVEfJK2/eDmVr3So/U=;
	h=To:Subject:From:Date:From;
	b=s/vDxdqT3k11ZTbpqlmTBwuWQrWRQsJnAiFviYQEGWZ4ElgAl/8bxHAbOK5c7rFpY
	 rC9QfQHFhMKjvtrAeqPMFkdFq/t7UAp7kRoTQXWmVaIthVtVnj8EiAUKNpnvXsitVu
	 ojocGIyEXwxIrTC2AGi7WVZcsN5sHDizMcRW7CKCOLwGx2icnBkcztKMlXSuSZ5gU4
	 cvVVk1XDVjZnZlx4y/NqGdP+qpm5c8mHqoUuCfT682zfkTXfEpwIGvDnjqcbKHR+w3
	 WMhnn8BYdvogD7km8mmBOGW0CVhK0jCetRiBnrTnd0iB9mtaKAhag6UNicrDLwfgyA
	 p7HPcLh218kng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4D6CCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247119363.18919.5953589434575799865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861928e859085d48158a44e3776f9dcd3044f7e42decb41cdf0b2626ef3407e6
Date: Thu, 06 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762471193
