Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295AD2F4311
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749795594; cv=none; b=U0UJ64A26k8iIogJU8Kbn75Ygzc2EcvvC3vA/IqTkF9M+ISXjfnHXTFNNlh7C6WsMp/2v3HIV4O4e1OIa2WvrFzggfvaGwXeSrehnMWjQ454NneriQyHEsRIWdME/+RaNiYKyEqTpzBnGPfpt2HZqBZtCR2EWhH0ItDmnkyr3u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749795594; c=relaxed/simple;
	bh=z9h01XGq4bI4Xogb37a5Htv1i048WtmfP+7OTIshNIc=;
	h=To:Subject:From:Message-Id:Date; b=UNGCpGukSeaDa3tvOGEhFMI3czA4bCEaDz1idA+AtIDMCAb9JDP+kzzHifYjeqwYFo498IwrNmBdCvPJS+Cig1BOwzOYTK+uS3qXlf2OR/ygdJDrENBR4ruwqEkrNtdaDPf9YXBMxW6Z+Hbzs+o9HE41erZ8zW9/H4zv8lbKmOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDqE1OWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDqE1OWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CB0C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749795593;
	bh=z9h01XGq4bI4Xogb37a5Htv1i048WtmfP+7OTIshNIc=;
	h=To:Subject:From:Date:From;
	b=JDqE1OWL80D7gApst2MbzNYomMW3ev9k7NJMnmqzi+FnFB1wlsHTV7exlVFzWhVZD
	 aORLVvW9Jr5XS3gYH5O7jJN2Bu67IM17RgS56hWc4v5GiDKQPsRA2/LMRC3ZAI7ffA
	 MbCGsnPuw+sOs/JpWxsPloKidZZzoDDrT24LeGxjba0WfTPzSl4FoC6tosrrgNUNf2
	 Untb8IGaBm58x8cetyb8n3tUJqVlL9993rVHgm8ti+i+m69qnWv9iTLRkV9lSsXePD
	 fFZ6YCVCRDvBWbiQhHKcO9HbbSSsiK1PMsCeyXdI6qGzy7DNSiVXCgeFgrxBn8BA/K
	 n+STvg1eexjlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B9C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979559358.15035.2514540860678232294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c6dba4d23df2d165762c201775d45132b8edc13c3b78a80e098ffc3ccf7373
Date: Fri, 13 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749795593
