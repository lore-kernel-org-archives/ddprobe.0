Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540961AB52D
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 05:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739942934; cv=none; b=jmfi4ToKMC3oQQx/VjsxTOX3mRzYFbRxE7/xfCLtILVGLfnBBQ90n8KzrKc1xfbFZE5mNrCzKqz4bCs2EDdcFgL5upU6OUdxRygNjOgo9cRiAg/eIUFPJ/P4kWxFRv47hN0fD9fFM53w9Scfmrwkr6bY/MpTmdXh78UfS7DIPus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739942934; c=relaxed/simple;
	bh=UNWPrtuakxxhK6b4XwfvgtZWcp4xyKvgpiwdt7L/BEg=;
	h=To:Subject:From:Message-Id:Date; b=flIIgoCUSCrtozXo3JPbb7+tzqJl//SUMszp25UPqMJlKDW7gM45N0FXWND2bqyHXO1P/ky0SPqmd7Uqgh29PrzIxzJeWd0uX8BbjIxK4E+y9CAL6f9bHxGYzH8tUWKKEnrh1GOMOnmb1CEX64x10wE8b+Eq8nUcpi943+XZTjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmGDErYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmGDErYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC9EC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 05:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739942933;
	bh=UNWPrtuakxxhK6b4XwfvgtZWcp4xyKvgpiwdt7L/BEg=;
	h=To:Subject:From:Date:From;
	b=YmGDErYwooeC6ganmilPvQAL/IIKZJp8gPvSmmX0Qo9I6ZHxsi6c0Mi4L+Nttm4cG
	 YR4slGZY2ZFXkGIivz1lgXvZFv1/VsIiVRws0xuV5t06Cl86mDRqtDDGiP41BzuKXd
	 0rquAQD1CwIFDTTsLwd8cJHkMGVUs2JVv1L8Qy1uBxoOWoxkkHlYcWCNXoejSistHH
	 DrFCpvZHUvr6iNrkkdgm5lcMA0r2w67KlmWx2r+Cc25BzxtMuV0v6O4KeVDQUSV2kj
	 9Awml4Ey7yMXUinWV3UbnJi+zdb/t5weSAf+JTNFwaz9zGlFUSxAF/YJKROvuuzttX
	 fMhvBhKbyTujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A618CC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 05:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173994293363.20160.16405449073543654025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ecb024a5ce959d94739b9122265c2eadb06145d7e05562982fc6bf1307e3cf5
Date: Wed, 19 Feb 2025 05:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739942933
