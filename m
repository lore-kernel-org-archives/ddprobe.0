Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392628F5A
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725111954; cv=none; b=kQ4l+GLatzDCyyd8K1BU3d2NoVuVnObo/CucvC3Au/dhc7IeLVFIJsAvhovxUey+8mxGyLzHpPhVTLr2YIsOp4PDmvqj4asVlzwm8jAL7ROKRCU7TlKkMq5BwheJ2k+MoLBBilwSWFG6D5fUx3YXc8uC29jzEfyOXcP1Zgpkpj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725111954; c=relaxed/simple;
	bh=oRzjePnhq6ueu6SshXXsPHvBEQapqFYbppayh0AKesM=;
	h=To:Subject:From:Message-Id:Date; b=FP4QkDmsNMfWNMBeaw2JbT6343X56xT2VL5kuEL2Wv37oNvkJE/ljn0lUcS+dL8tair943otPfhCg8k/mmRvuoMkxvBbNRN1NeERTLkys67AZ8GhhSfyTC5MA1DtZRrg/XWnn+a30i7d7lT7MHQa7hFjoKZHtjxfrZlX0EzNzGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbDDRnMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbDDRnMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF30AC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725111953;
	bh=oRzjePnhq6ueu6SshXXsPHvBEQapqFYbppayh0AKesM=;
	h=To:Subject:From:Date:From;
	b=TbDDRnMhfTkUqKh77jocCAsCG3zxLRTn7yzmD3oGAJyV9C5HOFfDyGbom8+zbKprp
	 0z5k7+AD/40i2jXtzrd06uOxITQB9rXvbOqOm8nIZJMfVxeEYeex/38B83vA+jzrlM
	 St3j5owMW0VgUkrjChhHtrY6c2OP5rvjLZ9URw/nSesIxf6cUrZ+M4QKcIuVCxRdvr
	 mTwUJyU7BtPgAjiE8J28S1uXidSF8sdA59SCLiH1tZpaWE3OFgJpwv8WL7EcBd4TH6
	 uqj7gvTlmrTUO5DBnRRqCce+WzF9I48PM5y64D0bjz9/GpIxCezPO2ypHPtJXTJy27
	 qmJeN3HFkANxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AADECD13D8
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172511195359.5602.11503041026645685021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94e19ca5720112f95f732f40a5ec0ebc6d8ec9a84c5572798a729e9ad300de00
Date: Sat, 31 Aug 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725111953
