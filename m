Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729AC1607AD
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719845723; cv=none; b=E4LBuxG1pyDMS7SSca0d1wSkPs1aORSaRLfxH1LpmaiuhWRiMcsHEC9Ebjciiu1yViW5na8zKjttGxJH8sIRba+txR4hU70L43PilmcsgXrw/P6oCNI5XaNaggFTVRcvBQP3PWA1gpwXI0quMVj9yuROSSJ7JY1OtFvnx6zb0Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719845723; c=relaxed/simple;
	bh=jifOOG3a23YyxJo7J43XETCTKo651Dpn52KvhTtSQNA=;
	h=To:Subject:From:Message-Id:Date; b=YGSfSor6A0idBcD3IgHx2mbUq5b1uY1lU1IxGztW0DWgG+r6XWkF1ZkGXjiXfBcoT9jX0xe2wznVKqnZ7eNctKfXgIh+NLZ2P5FDy68Nz0SPvzoTaNHQS1QfFt1d+56chahd42xnR/HhDBgm7WEiA0S8Vja2d2xDMRqdkvBT9/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbbEzvW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbbEzvW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B79C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719845722;
	bh=jifOOG3a23YyxJo7J43XETCTKo651Dpn52KvhTtSQNA=;
	h=To:Subject:From:Date:From;
	b=jbbEzvW7G3eaup+fHiaVIUNCeTq19yzhtlyvgR8AG/rJW18Q7LfaCTVMqnugydwWu
	 kAoCyK3uyVGAmYJQCTKdTLUobdtz6PTLAFF8D3Ad9tVSvDlIrA5Jzniw6F1si9Dn7i
	 LmxOXXbjBzawxuEeqyyS3rc96UlhyR2ELUFnBqMPsQcIf5DAdug5rzdUc7YcyF65RE
	 dSOqBBKeMJkd+KfLHnYlTbpoJ9KvLKI/CYVVpU8zUnNoiCHCd7dPR5wlHxT3l/7L7e
	 RDwAAyUQ4byVy65jGwy3eL78ktfiahUF1+FzEC+I0DJ/44Ni4gbCUWc9gMG04OVDKG
	 ZF2f9RNQI1q5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67B4C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984572280.19243.14533574365272270610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd57d193ceddc96718267858f58b04096d2424dd97b143cd12161a952f6bf0d2
Date: Mon, 01 Jul 2024 14:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719845722
