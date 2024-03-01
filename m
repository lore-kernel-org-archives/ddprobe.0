Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93036D528
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709306897; cv=none; b=pVfCnaGwhRIGJ34fjIciT45PdU2VJP1tGxPVI6LkPxGi+ad7k24UcKz7AZp7SSZCSopPHprpAb0DoiACBHQAYYmjy37iseBm5JzGpvqgXzn/gcyGMPNYpgv5NxXqdPJJhFztd16r5wkUp7EGBkS21ynbFHt/hM4aeOSlLJ/0jsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709306897; c=relaxed/simple;
	bh=zzkOHlFCPmtoEk1PG9OGJ21XCvhqTOG7RpI/mpebFbg=;
	h=To:Subject:From:Message-Id:Date; b=Ft90W0hTeB+thPPOa+xks+ydVz6lNprgfq3C7XDfllsaHlPZr8weKYp42Jl5DLMIATQETGB4OddxBaC7M50uBz5lZ0amB4N3SV6JH+sUGnQs7M6iWhFRMO0EuNJPggEGzNbm+OqeT3h/32UoeAvaVmuNqzhKSSXw/1KQS4JjSJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N58eDVqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N58eDVqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80296C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709306896;
	bh=zzkOHlFCPmtoEk1PG9OGJ21XCvhqTOG7RpI/mpebFbg=;
	h=To:Subject:From:Date:From;
	b=N58eDVqo8/UX6WFt0lPK7vXQu9d/Ip601kM/aRUxQTdjYk9jcZ/RggPsYuniUoMZV
	 ALAqLeavRF32jte9AUblsbYuF1Pr9PUd/exvtsEgsT6Gr9TDro0ZGk8FshmZWhUXFJ
	 aWyPIae9iP/dZilflH1uolUq2+NgVEUsy7ZKu8pnlvf2exBqNanRYuFtt7nOQiQ4an
	 rSan+HcEs34Wdn/e72ru/PbyjpkJlPCBv1fkn0uSpdsr8LBO3YzvJJtE4SL2kUCAxN
	 eBC1I9Lx1PlgOn8S3yWBNzsOQfSgPLn/G+3ll5K0qDTpwqmTH1XxzHNQ9uuGByVblQ
	 7QvoOvlN/0+zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6806DC5478C
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170930689641.1804.4675591531426484918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 032021d9f16092c7680503d19ed58ee0f6cda062696299edc90cd1f97d052893
Date: Fri, 01 Mar 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709306896
