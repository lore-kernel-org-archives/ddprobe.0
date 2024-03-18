Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC51056B77
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 19:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710791897; cv=none; b=fvoA77cXzgM2UsxIDV1xSXn2X50llL5hQkfS6fdT0A49knebRKHEdcUoh0Sk7hFPniXeZPamlRlmBA0pb0BFohscSOZbDvqMe+RKwGnxoPVZp59Z5lLUaY2TQT+JtNOhvcZvSff12mV+8Awpg9hgcZjsn0om5JrY9DLzKE5SbIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710791897; c=relaxed/simple;
	bh=fNzpEPA3Pj2wxBt2UiMLNTvDjXGt6wQVH4Sn6OwTOi8=;
	h=To:Subject:From:Message-Id:Date; b=CK0B48lZJh8yTOQLCGqPDpcd4xlzMHFS//mEwdzrmfc646XmAjtK6rtXKu4f7NNyq+GUuaBt6yrOfRv+ZWONt67OQ1AQ6GdbC/Aj2pUiLwZNT6v20S+6LGCVU8dkm5OvtIH+Z027Whnp4YHBqXJehSOukAgs4teZl0pr9ssXwr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhazfsTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhazfsTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71008C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710791897;
	bh=fNzpEPA3Pj2wxBt2UiMLNTvDjXGt6wQVH4Sn6OwTOi8=;
	h=To:Subject:From:Date:From;
	b=lhazfsTIkzYy8oftxLnr8DB84taGSDrPbD4dsq1jWqWL0w9hnvbASnDGuHi5o/07H
	 QGbAhgppIP/iJX4sTQ5IqjfFDeyqeEdUEjK96+w7beKG8s6IVoza6oWrPpGXe4Flov
	 +pqc9Wxh4UNiwOtqkvdMi6mcbgdDWZcJK1JGm7vtw/d8S0q/7OoIHIkSsjaKm4MwDP
	 WqixzsTrn9r7IDMZAJg/3kPEuWGbHB0M0Shitpf1WHBudlb5sj2wpQQW2jDZRzfiPJ
	 wuJHpMhMBGyTwVGnQTazavaK83tG5dgSJdKJaUzMMthYjvz5HQk++90ObvL+FLlK0L
	 fNJxXnmhYcEVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 628AAC54E5D
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171079189638.13795.15455390765836242412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8959547f36eddcd991b3345ca12662d6e5f4ff7e5f08777cf9d69d437fdc7a01
Date: Mon, 18 Mar 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710791896
