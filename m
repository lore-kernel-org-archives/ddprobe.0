Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290F537C91A
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776336454; cv=none; b=jqrpd2udUSR0t7QAgQ8L9T4S5ujEvV7j//cngq9hhXEldRnmUdkcruwb0yHepG1HGUZutLdDbj5MVWf0G1zjw3pZDIDeqDzN5EBJhxQ9s4eIvXA250ZUnR9QnH5dei7c7gVzHZfpnNYaZY4IcLV32CwXqc1DkPqTv/9qIQS+5BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776336454; c=relaxed/simple;
	bh=ntk9kUONwWfp/+B8I9fw21ljXGHnx/VIzFbmnZBy0yU=;
	h=To:Subject:From:Message-Id:Date; b=WL0KwyKWVp3cvhbhHNHOTnwyow/jk3IeNM+ruR/4OotnHS7RDYViCbDmz80Baew2TJDpv2WdPKYcTQjRPzU2vTI1ZYFlJZ2j7TjdjtOlgsaWYOvUlx8HZgY1yoIsIPd1xNR76tnt8k0C7XVKrY0etXZF6yhb3emdGyFD/xQPcp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q457HLfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q457HLfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF3FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776336453;
	bh=ntk9kUONwWfp/+B8I9fw21ljXGHnx/VIzFbmnZBy0yU=;
	h=To:Subject:From:Date:From;
	b=Q457HLfLxMbK8lOng3AuczAl9mODUS4N9E4nnw1+PF4qGJfY219N8kyddvzvkPopE
	 xqTcTwiRUPyn1nisz5WJzdIHgw73oLvdNteX0bLSOH21J0AMH2zuKFLrOLv7lH389P
	 yCi9q30AFaORyVzCXTJqY7nttIZ26BPqHlNXiI66Z0JIyT2iD68p9odEeYC8PC2W7s
	 rpStJVBTOKPyFNt1p9CbK0RGCFmSAivFb8Z1aFCw0rgwFYNtqN36MtvtL2KYdEoD1n
	 j7dyVceDlTAJWp8v7X/Mru42KhXFbEBjveTqxb7CdFjHmmbXdZ7ACGEZQObkk+SMPA
	 NUGgA2LhD4SPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A928EF8A15B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633645368.6257.12630145337013603646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467713eadb39758c7f79a07c8462752d35b40f76f83daf1a290da03d0adebdf9
Date: Thu, 16 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776336453
