Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3991B1AF0B7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735828554; cv=none; b=bKn5/ih1oHGDhY0GiDCgIyG9Hwzpkq1SlXiY5ncm1o9guq4zaOZ6PrtxnJmDnivbZzVzG7fT3JXU/h0WXCKWFg4LgIEOpWgMtILV2S+bJZUjiS/QQd7UyN95JyeQUhdtwzID6V0MPOwrm8H3EVAcEWSFcU1w3UUlKhacQzuFogk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735828554; c=relaxed/simple;
	bh=nDc6mlidffO7C9lZ7dkTVGIP27krL+2Jf+vAwdVXtsE=;
	h=To:Subject:From:Message-Id:Date; b=Lv9tlbP/TtnFB98elBW4ouBnWzOmbllmnbIGvzMe2aTa3vfSHekTAbu6rCiVpOagbraNYD9dpkcFi2HVkMQOLJCgCDbBjr5VurkwKUcEfWz1mH1ba2a0EtrgF+hbKk2HdUFNkPlk34hAYlfsElMxxMEBQNFupEahyjDgFfBXzVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XECChaG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XECChaG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1770C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735828553;
	bh=nDc6mlidffO7C9lZ7dkTVGIP27krL+2Jf+vAwdVXtsE=;
	h=To:Subject:From:Date:From;
	b=XECChaG69NH/1fKnnBFf1Eku2VhywWue71PXIi3JVx5gl6mrU4RsS5rtkvEumfUG4
	 lrAiJsagUZa0JZ9h+yc1LIiu539f/ph/H+vseg+/joPLva3k8ld1tsp/3J8WwWOo7D
	 ZFeioPyjA+TXs75m7gIGyIOg+8P7qoOrHzjsqwXXRd3IVBVSfuBcaFn0nHSGLx3hUA
	 0TtCwS8wtvkpVwTsjOaY96WLojipaz0YURmXLxFYQlE9sLHg878ZSyQTjBl+Fy3aIV
	 TD7zDOl8I9I9LupGfcj3XVfFXVC9wY0AGBSHBlFCQZZ+5YmbZzs4ab7L6XjJy71VwV
	 hHTF1BRwv+qKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4D6E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173582855359.4508.4795764876317204287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f18b1f5af1118e241d5b3314dde9afab41b0e85dba3fd423d0b4b81bb09bde
Date: Thu, 02 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735828553
