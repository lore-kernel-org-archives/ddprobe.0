Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F69216E37
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736426755; cv=none; b=COIaAXU5gIiPbnUU287AZ8U/IjX+Ph1L0ZE0+guraQ4SsD4+wRv+I7Nimf1QIl9gL57qy8hKE33yo8/G4m0AzIdfKAHTv193untw4g5DANbjWqKwyAKyfasycK2AJpkttGbOC82wmYSXjlQzOyDV4fYcbZIvV6/TIK1uiwy+Ka8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736426755; c=relaxed/simple;
	bh=V8uhesHwmN+XNhP6KMPF/vHCCf1Hnl2/7JuVMjtXRLo=;
	h=To:Subject:From:Message-Id:Date; b=KKjWrBiZpadPNTF7phtpDtk4zQJRf9yucylGgRzKAFYt01vlhgiG5CrX5fczHf6CC4QxyQnhgTBfnFOcU2dTiEnAoiW2JRfm3cNVKGRN8xKgzZ7CfLVwNpsJI7rH//jQbAcJ0UaaoRpLpndwAmD7O/Bw7UzXD9NQfJLw2fkSBc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLzLTxnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLzLTxnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E06C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736426753;
	bh=V8uhesHwmN+XNhP6KMPF/vHCCf1Hnl2/7JuVMjtXRLo=;
	h=To:Subject:From:Date:From;
	b=mLzLTxnuzpAEhZQwH8c2XvmIj1oSu9TWCEGQVBD+a/w7EYTSxT7PT0n+/IORkkqYu
	 MvniYv0d25PbBtKrg+bD3Yw+g1wTK3R8aL8w/dhdpl59BSDqYB79QgbQ6zgCiqn2Fl
	 Hs2jUkol3vBe+4sOH1YRMuXavnvtIerGbtRuILJiFa+P8tPox8iL5kWBfWONQndtIt
	 1Kpo50TIzVuTC4un3QOCU0HtPuzgIERbYp2jgLggjfWLgk+zmhbTBiS6GylomIDlXd
	 1ip37OPEJdntfUkM/4I/EG/eXzIeFC+dt6hBe+Fq3vUjkwOy2Fc9yR9tvHM/3/YF0m
	 v1saW8bVtRI6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A535AE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642675366.7295.481293411677650302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3270c571c28e88ecaf392a1f61c928f264ae6028c2e102f2e946f2c6e49b081a
Date: Thu, 09 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736426753
