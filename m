Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC8F33123D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781189794; cv=none; b=chcM/YAp2JZ6d1vfQhHaNnrYVYlFybHkGl7KldOMPsVCvmB28WLU+VGBw3mAK15zCJSOm4mMlmMEs0pOPNkdrQlrpCXhggN9rG46WulcoBsYqSAbJzNOLfkfE0ObqULFwQNb+e3TwwjkTQ+/oHrz+S95U4wrKvAyNww4nFsPqY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781189794; c=relaxed/simple;
	bh=382KuqUwiy1ci2ItU2IFsgLtFS/xhWbtbuh+uvhumlw=;
	h=To:Subject:From:Message-Id:Date; b=HkcRtEDKHByJA3rwTdqXLyo6z0HdwsPdwXJWl9jxBCpb4EoqE6u5urQCMk9rIR3mU8+zLUaWdXMTNvw7mJX6d0pu4Xp1BRYsEtVM5chZC2IoXLW6Qjuh+ex3/uJ6eyxyWSb4oBV/cyZullMrYyntEk/p4rh4RZQTG9D9Ixo99Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYktsInu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYktsInu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E98BCC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781189793;
	bh=382KuqUwiy1ci2ItU2IFsgLtFS/xhWbtbuh+uvhumlw=;
	h=To:Subject:From:Date:From;
	b=HYktsInuOCK8eX6cItoCB7WeB1hOp8iKV25ht/rr3K/QtIW3zj2k3+9KJKUT+aB3A
	 DRXKa+1nca7hCHSz499wovSCLMYcoeKoa8sF4nNU0274fc2AbYKqGLWfjqQ30NEdCh
	 6Mn7FieU2OFpd6jGQYX4GgUdCtdpaJcBFGy/rtxg548oPLA+GfpxPXN2GTh7DK2GEU
	 6uXrsE9fR9R3JEKUQoTySoXvgzeNsdLD94a/sC3vXV4CnF0LLthYie16xdpvAWPfaY
	 oRd1Nqo0vhrykWMgOI3K9Lu70EIsLLi6c7OLtDEc7fc3dEADoD89gRypugTwPdvdrA
	 CawSeRgD2n31g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C69CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118979378.30499.4287821733878586464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77aa6f84d28d6cf7e3a0325395624250e35e6aa9e3996b01b9eaf8ebe848ccbf
Date: Thu, 11 Jun 2026 14:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781189793
