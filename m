Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE2A21D3F5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788615634; cv=none; b=q7xXmr1i0tqwZkoUIF/mQTI2SlIZoHXAP4XzYAP85KjtX81F0RZNjSRuVg/jxfkzEjN/z6mzbembA3JheHGRKZDfSeW4iUGZRmtIQVhdkivxWCTl8OHMObKspUtd2GweEBBObu0xM7kdTTJXn6xZdZGAPDJUbe0mOF1NCzcBH7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788615634; c=relaxed/simple;
	bh=Hos/wBn631mAG4vOrxGUptsKyyi/q4xsP6TW03YURzY=;
	h=To:Subject:From:Message-Id:Date; b=ZWOd4vSzzxfu7WNaT6gnHKIs1aeDNaBny/3cbbbmABb+Ti0tvJHAmZHlMMapKaAncKPlKyZ7lXz70G4NEXuB9j56Wt/CTzuTEoEF+E2j0qhInKYA3lLXWMdv9vXpDHTOzgtVAxrhtmWfAs74gfbd7C9xC2/G3/FHxEasqWbzOBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZYdFiZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZYdFiZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC0FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788615633;
	bh=Hos/wBn631mAG4vOrxGUptsKyyi/q4xsP6TW03YURzY=;
	h=To:Subject:From:Date:From;
	b=DZYdFiZMw+DzWLbfqiPYbp29CdD/GIpiont3TJVliNd78QrhkV3aXPBfyWzw7AGCq
	 ju4UlvXY3JIHWQ0OB7FVCSvYN8IYjyaMXhHY72IOFSHaarNlFbVVX0jryDWs9L75YI
	 GQ2Wg18MkaQU2KN0ODnHFspTpjfZiEYr/w9BcsCChKUVGLXOeeDJiHyM0dWOTkuvQu
	 vgYszeRQE5PsaynJbbGzisRk9KV59zdtqOm5/w6KOvGOLXNDYzqe1pb9zo80xxCkgF
	 sI331Q1cuQcSY9dmZIDRGO6Tj911eGBA3Aok/8pHfxrVZsI0GU0J+hSg9Ex1MlOPP6
	 5nr9MU2ObJXGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0C1C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861563368.30188.3256063957240775323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219566fb6188a7334430863e92760185d8f53737e97ad72f5a644c90cf56c48f
Date: Sat, 05 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788615633
