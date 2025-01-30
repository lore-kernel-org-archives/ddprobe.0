Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0A11E8855
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738247154; cv=none; b=j1iESHh47OU54itEZQ+KK6Sy0CEeYvsZOy479dzwoiOcKD082sJHEiQtpoH6OcpaNQtx5tNS/RdnnzCCVFPHOUVKUx3ZSAlG751Dm46BCkmUEQCFa1P4SnzEJ198iQSOXHxBlRafpK7nYxoQw1ssNbR1D50Rx7LQv0d7+RbT6ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738247154; c=relaxed/simple;
	bh=Kp0uaGMH+A3L8O7iQXLQP0jXdri1bm15X2zSlG0Rgqw=;
	h=To:Subject:From:Message-Id:Date; b=K6qaJM8JLapjNEoEK8vr91rWuU76oac2Zi8ASU4d+56kHDyVt+NJUMn9+x5n2yUSuZxNHYbsmat/xOlukVmjcZrTKjkZb2tkcZQ10r4kLaCLbjTq6cattloHlxtUyKnbExV+Gg0koF5ZDSmMSfLUIPKS1YcAfAKz+ena8vIOYso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHc3Im3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHc3Im3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0590C4CEE0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738247153;
	bh=Kp0uaGMH+A3L8O7iQXLQP0jXdri1bm15X2zSlG0Rgqw=;
	h=To:Subject:From:Date:From;
	b=vHc3Im3aOguwfUcy6RYchw3fYLeXLnBapze1RXzUmRtYJVUXaA0ZstDdK+HVMSrjH
	 QtLS3sIjpTBzY56UD0n72hPjqDSctX/u6go9hJbeHRcL3g0V08SD5Qlb2M6xFJ7i4X
	 opoYffDYCl3KHydEO9mewXYw/MWfaIm9ac+DZCfEnubPHzbAtEhaJGgSkpvhSSCQg7
	 mDK2Gy3j6oyz8QlXZ6bouWZdqzZmACrDYmkQ4cRukq7etr3gqLvrv69t9fT4p3GDWn
	 IltZ1aAZUvS1FbUY1d4FAYbbQXnuZZ2WNFDKtKYhkvb/xSUFphL+ifTgB99XvH1HUJ
	 whvhpAdWjtdaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA89EC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173824715368.9730.1842160350165854421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb465a008807c89902230f1ab06944ee2ddba419723a02ab6a258065046add45
Date: Thu, 30 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738247153
