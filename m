Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B8E183CD9
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724415954; cv=none; b=Bkw9Yu03T6etXschTO7QV3GLVhTdTL9pHSXMDq4bTrWie4rPNqmojcX4mq9KEPpZ66ZdM1WuGsK0qHv2J1nOArdkquumP5TaGyxNWU2MGyEVuenx0s4k754UUVhnoylOU0qhUruBy5b+JXxwMTyu+KRm5kq9HoLwKyS3di3up+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724415954; c=relaxed/simple;
	bh=cE1v7R7psMnJEvcoLH9ZHm+KT+nPcLxJpKfVY892SNA=;
	h=To:Subject:From:Message-Id:Date; b=Vzhg1a+0h2joEmOTOLGX45K3HmU7FSeCdUhFJgQ2O/V4gNOZzpn1wBllXeFZv7LPMClhT8o9qhnwpkr7G0tvzXI2fl9TGsHZE2aVF5bu0UmdEji/X6pErQ7YDQCd+t1QuN3Q8b4jhZwCDNOfIVEH+jCACGbM+kWeKw36Y8zs+cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LatnRfzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LatnRfzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5193C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724415953;
	bh=cE1v7R7psMnJEvcoLH9ZHm+KT+nPcLxJpKfVY892SNA=;
	h=To:Subject:From:Date:From;
	b=LatnRfzklRFZM6oZeXy/jKmRrSZbHphLIkwybW0+MRUcyx0npkTB4jCnqK9fYKxjH
	 9eimyce3/03SZtAX6LwRqDCAwevQK97tzyAQEVX8soGG9xxtlfGBRInYTOymerHti4
	 ya2AeIxEhoTd8CAqtlQN1MLaEshpYRdeYoPu4Yo+5E+VWU/s4/bg4yItE/JeSnWEfL
	 mt2Xo2vO4ycvcMsV4B3qAwTUmdbdtjV4HG6UFomstpP8goAs+MP9lnnG3S2pZ+ibtJ
	 e/HYD1sae1BWvBMvj+q7SYut9Ct/9ij8IfWqtYycNalClWneZJlStwClk5mKjAnwnH
	 0yfn2oj1f9kjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BF5C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172441595365.5948.5103589134408568068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850873e001bd977f7d2c323202876ad3cc15e337598d41f5d47c07f5b33fb56a
Date: Fri, 23 Aug 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724415953
