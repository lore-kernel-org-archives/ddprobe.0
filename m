Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164A425A2BB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763956314; cv=none; b=bpkops2s/B8+8pk8dPrfC3BTThOraBpvfdsPQxienbcKYliCgmpGfEp9WXRI+IqqLyjpy6M2mNx2PPq7Psbq5nf8TUWuhT/2ZTG64JS2s5RsFawvtByxcooQCCVqSW4oYiFAWJb38Fyi0NsEZgIsX9uXZ88XZ2EZ09/mcsK89Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763956314; c=relaxed/simple;
	bh=M4bu+CquqhhOUEv9Uq6se+kC0zp+wwrl12Cys7oG4/k=;
	h=To:Subject:From:Message-Id:Date; b=fqdBTvrqkprJpVfW/i2jFy+DE91JdHK8svoZMQQYoBUe/OkUhg2wnCAuo6otZ+uOpcw4/GoYTv507WlBJzEw+hdx/rzViN0xIQCAesPgRP7tf1U7pcc5YTrmx/n1VUel8kcc2Z10TdnICItsjItgmbuGUXZiAto3X19Wu2/X6h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhsN8rOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhsN8rOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10F1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763956313;
	bh=M4bu+CquqhhOUEv9Uq6se+kC0zp+wwrl12Cys7oG4/k=;
	h=To:Subject:From:Date:From;
	b=WhsN8rOTa+7xXDD8HzuAWzh8i+fvQ3qlXseB8PwhKDSiIqXYycK9XQ9bGeAu/uPXM
	 XrBN+4EgZnbUR+KFG7AMVLu01mZihETfRCEwLJKiwTQyMwT+tR+KiW0RtJZdRLeAX4
	 3WchCox1nLoEYnVp85hYTyBWyp2I6pqMQYd7bh17+HSUsany6f25Nw0zpWhdvyKjwZ
	 mkRNMcbTjUtM0EqzEjw+EfMtn//zY/yR8l1V2PuUE/LQJbvFJMcR5lMOvL0LNXb2rt
	 ZAsA5UV032F5RZZsxJgpMnh2MpXLcRwwb5dla0Fiv6/QRxL/vQc1ifdHpL9ZOXNvMA
	 TyYigDE4aX6wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD1DCFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395631358.27820.2849745511440847685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540dae5842f285463e126f1884a48a2fe06c3014812e01a0a2e50e000c105173
Date: Mon, 24 Nov 2025 03:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763956313
