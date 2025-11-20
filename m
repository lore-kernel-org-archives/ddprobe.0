Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2075F25A2A2
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763609514; cv=none; b=MzdCcBh9b8GDrz3DWgjfFTmPVmIID7jp0hxqnn272aZPvDBsMZpZz/anO1CfWsjsGsfmGAUBtbN+RzdFIW2hSrcao27qZOmsVVfm18WP3uOo2jHsuynZIIr5DwBIqFzYaGytVYmGlbXzmWy7hH8bBD1RGjcg0Icc99oDywgOczw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763609514; c=relaxed/simple;
	bh=go0RWC59dABinT0ScRtWJZh5z6YDp81B8R0TU+PIWqQ=;
	h=To:Subject:From:Message-Id:Date; b=s9UxllwksKbBtpgp7BiGOVBUlrY2RY0XQ9drXiyMMnpwZUEbrZDlxQ6TCBFlZfDXYnTrl2KIZwjBYhhHUk2rLUr7EKKrCOeZ6FC4kxGZgd9nufyqf5NiiQy3u8vJTFNctBXhP++V9bvdHUVXIRpXcMxBzRMoVnbp50V3xWd8npw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyJ78XtR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyJ78XtR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE60C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763609513;
	bh=go0RWC59dABinT0ScRtWJZh5z6YDp81B8R0TU+PIWqQ=;
	h=To:Subject:From:Date:From;
	b=MyJ78XtRh/I4ahzWzgny04/rP1TPwzCUJ0NThJfBiE5hVug4BILKedG1UofKR3gsE
	 WnNN1shMdvlHAGO9oo68cU4goWOPuqemSF5qSQ7r9Ga22Wxmp+tGBS2ML/CYgIZxeP
	 /l2CE/O2Y/P0JpfjFkp6oXBaj/Q7jN+C8U8tQK7vdfKDk+zp2+08ZW/YjBi8Gpwx6k
	 FqDpf8DAQzwt2HK5xV8mx42c2fHl+t7ppNHqTDG2t+H9fsbxWPMUWbb3k92def6YTd
	 KePPawOkEV80XMLYhaG9PWtuzGa8ZugX+wiVHa9mPdvw568Fy56yUA6OxeHnVTJS8v
	 fMjzH0Xki4Lkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0C6CF64B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360951359.30670.5143815379350143869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26069b8358b6258d10e80e05aff886c972d997e7fd64b68aa6f0da486a077ff7
Date: Thu, 20 Nov 2025 03:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763609513
