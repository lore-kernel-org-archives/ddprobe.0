Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A287131E4B
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722284154; cv=none; b=LcVEJEASqTLc8JHWuy+UmndLIQHj3rpNMasvmPDIOLWL7DI1NvFRZPtZ/94AqVewDkiNbTZsgOrmlcxXP5EWkxZVgLyz2QuX0pPScn+Xx/TnKKqs3stgFFYTpdHjfGHhGt/dzEHUOpKeFM/sPovL7PdGNJGRtuc/p4bNZkEiK+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722284154; c=relaxed/simple;
	bh=0HRz0PKN7BIoMv3vRkFxswt686REqMDRMQd3qRJ1Td8=;
	h=To:Subject:From:Message-Id:Date; b=m52xc+oReTzJO9zfcuRvwByvnIa+qk9f720qNzCSSH9Zx4cKCRkxVQtQVzpolZwOjImEN5rkXHqXGKLIGh9f5WDI79AXN3gYQWgq/admRrLAftTYRD9NmBqLYRUutm3S4p3uu5fmbppZl8t1XqhVo1R51fU8cZ1IfkirsHgmKXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcIguzlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcIguzlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2155C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722284153;
	bh=0HRz0PKN7BIoMv3vRkFxswt686REqMDRMQd3qRJ1Td8=;
	h=To:Subject:From:Date:From;
	b=DcIguzlR1c7HZUSB54//ERVsEtMVKf3wQA4S5lT+dNNJMrZ9Az3zPBHnaxj8Qn2Oi
	 p5bR+1H0BJLFdX7EuYvJDvxDevOK0tmrpuYhOfpMgfsTiWaG7zrTbPATXk81d/iQ71
	 T4/c6+zeYbe7NGOREW5eS1EwGlVEb54tm3LjrrSKwyabvzWoxIkSVz8Akz9L9EuXK5
	 psDHXo2cKAsXv1CfN4cKIkwTvMSVgKhML76CoLC91nHJ3sEyQE44zD0AvTiOGht6o7
	 +cPWScms/JCWXcWsBZ2Jb3uXApVfSV+YnGRa0kQ52ehQOOF/Kk23j0F6FkVmNsr7Z/
	 TbuEOXZfC70rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02FAC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172228415364.31639.5449414131599250451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb555a7054c641c0022520dffecf097eb2101e31edcf6657d474a4d064d5b0fb
Date: Mon, 29 Jul 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722284153
