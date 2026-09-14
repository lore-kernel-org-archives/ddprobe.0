Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2040247ECD3
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789395634; cv=none; b=dAEnBq3Tglj6cVAL8g7luxk+ZaXhb22boXgR+epQolyDkqfDzV8c01yM1yg/akHQ7l7LmM3R6108dZbPTjocYZ3vNhONwluAAyxxPJTw31vNMQa/r5FA37H/UeoengtMMo9a1O8O4WUrmRlict5AANanm+j0hgoLIF+IBQsxEmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789395634; c=relaxed/simple;
	bh=5q/H0A/Ji3wQ6jm4jZioLbDOTNjVf6kJJF8uPoC2qyM=;
	h=To:Subject:From:Message-Id:Date; b=M288mZ0QiNBNv4+Cwo5d9L0SMJXtqnkUsNKNMhs2i/Drzy1zf6gfTXGfxt5OtKD459EwZE3hwbJQlPd9XaOBvy0elwdWw5x20P6403gJ3zhHLEIhblOtCVVPoC/VrLF7K31BUTzJYA0DagcfPJr8GT+kHo1QyudvqeMy4E4zn/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdbdznff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdbdznff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98C8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789395633;
	bh=5q/H0A/Ji3wQ6jm4jZioLbDOTNjVf6kJJF8uPoC2qyM=;
	h=To:Subject:From:Date:From;
	b=gdbdznffDJWHlayW92HtBbYXJfgUgKRqv0YNIff7m0WtAePql88vsB4fDmpSiT1I/
	 wf4SSuPYnc0Y7Q27n8+UMKrdEuv8vTFb2GHKFdP67YMEHxT8q8ZnwxxTNKnSCrcr0E
	 kADzgEhhUzonHq0liHsk/eHzfFM2+l9UJp63rkiWPPdwG+s5+fCsg8e8BGFmGac939
	 bohAt/UMQMeFBEZSSgBN6hcrQ4da/V3FdPNI9KcChl9qV25yZMcxxO98vyPYGhI8pW
	 BJa4/oWeSAHQY1uGy7f5aSx15xvjr6xP8BN77hMcBInXwXq2jGjCWhRboFxbJOpYtr
	 gRreWB1AoK2Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6084C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939563373.30246.170363900578013822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86552c3e1ea0b12b782a1fb0678380f55e1df4b0962e084fcf57e7fd20cc5558
Date: Mon, 14 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789395633
