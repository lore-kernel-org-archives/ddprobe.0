Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F26D30649C
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788315634; cv=none; b=ufI4oD39RHA9hvdpJoLAATp0zM+AiltGLL/WkR5PHorr4V10VsgNHjr9dA15d5ReUE5UexP9WqwpK8Q0Ugx23scPYOgJTSfQtTAH5olJ6GrP5QFEvg7+SD6BP0zc6fyXgA+qGVcBxLB5WRCRpdZ+ydS70k5VDG1nKOSk2tPyzlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788315634; c=relaxed/simple;
	bh=7D6zTo+69LKp+Sr8P3A7HCLFZhx3Ydqu1pKirk7pI34=;
	h=To:Subject:From:Message-Id:Date; b=d3RUhURlpkryYWVr6ojvgufl60brFHYB7b2J3dulEPIvRspKCl9ENtUQx7coBFREG+qzadOgJ8hSSnBx1O3LhYsqAl6IDoF773qadjhOUlgHWFhUM+qL6po1qBUP57h9Yt9IgkTc48gdIOvSuL+5KRGb96iASQJurL7yjXeteI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNx0hh5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNx0hh5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0C7C2BCFA
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788315633;
	bh=7D6zTo+69LKp+Sr8P3A7HCLFZhx3Ydqu1pKirk7pI34=;
	h=To:Subject:From:Date:From;
	b=DNx0hh5IjHuLTJT/hJESbfmjymdL5LDMMf6eMnVA02557fhgVJP9nxh36ppn4c06K
	 erFj6Qp4Rxm0U+LMY4mFtzMqRdrTRThJdAtObEyfhOnCbOXe5leK8jFsyC798aWmmv
	 oQLqVs4PUUVIb1EhFSXm6HtvFW+1RX5i0ki6QZGwpWokjdyXZCt5NiZiI0fwHnDg8g
	 Bll8rvggcCaYrgzrGswP9HtkaQInu6nHyTdfkayvYXduZtg2sa1ytt3AQ24BlEyWhE
	 e8g3vCPsDEm6+yaO7W+GSq/+Huxv8h8ArtOdeRWl+f0W2iqzFQlY4c2wqL6eb5Omx3
	 Hg74UXBW7roMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD44C61DD3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831563368.6366.16255620683099482887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de87e2ae175a7e4777774ae05489db4f651549a979d0f0180eddb83e13531f60
Date: Wed, 02 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788315633
