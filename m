Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307EA13A86C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770916494; cv=none; b=qafOH1IWvIUloyvv92wHm3NFtAkkJulTZrRLKyFda7LYz+b1EfTwAsa+vJzMHtDJtJTuQAcOguzHS2CTZoG9i8t4ayLdI/nk0dPigaoC1heRrFlgKRewbgS/ORg28g4mhF0Ln6Er2Ltm4u9hd8HG13HLZpwhGuNg+YKIhyyBxx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770916494; c=relaxed/simple;
	bh=d+beQOmgDaEmO51LN9paL6k/7HfpSEud+vrfHdyEBmY=;
	h=To:Subject:From:Message-Id:Date; b=lkEiW3NeiWxitAWd39NGCoIVXZ7tMfHANFkfLUedehYR7KQiujb1itF4j22NCjDdXapm9Gp2jdEC7gAsSz0s0ROFN3c7SsbcXJSrp8UXh6vOeB9TNNNB2RJEz0n1jFbfwDobNM5uyi1YKvxh8c4RdAE+wEiDGRKP8yvfUfkPv00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAUdDAoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAUdDAoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3B6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770916493;
	bh=d+beQOmgDaEmO51LN9paL6k/7HfpSEud+vrfHdyEBmY=;
	h=To:Subject:From:Date:From;
	b=aAUdDAoPph7VGjosUehG5ifmG0BckgNIHgvlIeoyxW2kAJw57aZATbsscNmwFOeGe
	 1Czh3a9xnNlh/k6q1AAKPNG831h3fc4mJTxN/yzt5GIOA/zJ2BcKA7KpIgSPk0D8HR
	 o1cbSwWa5ta/4aJzt11SB7Oh6CsVPzff6hMeU84UE6FXVQRHLAiFUxIiaHNB5qr3s8
	 /O/t5BbAlP3KyWX6m9z6fYlzRu3EsmXT3odycakSh6ZNANWQsoiCbMCPA3kSuM0L/t
	 Ab+B/j7Asd/IDKMXC3P6t9xm6oiIp03hX0brr+ZsHxRIW4fVe5Z/z3vR7KtpcjDv4a
	 OLUFx8MebMBCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B4EEE36AC
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091649366.17578.14550004524905435207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361b264c1ba82a7b0aff0e36750ede4a603b17c5f5f6ee754468fc285f7be183
Date: Thu, 12 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770916493
