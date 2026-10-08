Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580EC4854FE
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791453034; cv=none; b=huqMPS70NUIOHQWLz7nJIHjfn6HXzqNNZTWIY/GBEAf1yr2WsLqsBU+84PuCKB9CWhOvi1argZd05inTe5ZEAfIoscaIsohl/xu7WjxYjp9sDsBX+FPt2FN3ZplUlYTBNVcGEljaRMylbM0hzBJme7OU0MM7roLYF9YnGICvDVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791453034; c=relaxed/simple;
	bh=RgUIvJSZClBTJYAhOkPnH/L3x6WxDBuhb2pj/49trYw=;
	h=To:Subject:From:Message-Id:Date; b=Kkhz/3HsbqM4EKxGK0GPSBA0yplWFm1rOWnl/SdlZNIM06PwhuYxNy6OEWwT43K+KA0eMCIokniJ5oQi0GoN+a09Z1HSa0mRLtfvKxhLUwikgO+5ousD2xcFfN8CtvDCbJiqT+B+FcYoSTV8n0uvbUXyIsFxR4uMtfvUN3A8Yfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzbj+KOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzbj+KOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D190DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791453033;
	bh=RgUIvJSZClBTJYAhOkPnH/L3x6WxDBuhb2pj/49trYw=;
	h=To:Subject:From:Date:From;
	b=rzbj+KOir/o4nXaT5FcBRYYodJAnEFrz8XbfSys8STcIVlkwpEhFfsxhR7wbyUdiq
	 W8eNw9wKhdyd9QX5U3CtR2/BfZ869j35DcOj2MeGLfgxYtVUyKuXBJUsEqkX2/EWSc
	 nLI+TOsEn/h2N7TpbUaAlIQG94qVwspnwu6x+NSfPZr0kHTcCoEt5ZrXt7YJvwa2p3
	 q9Y6GJPUbGbzfOnjiIs9bxZ25rk7RXahFP6Z8j/+7do4+3IIS4tF/+YL+FiHn/24i4
	 4j57oIlzScILSyeuxgMZESNt9ZC93SM7yj96yI1Vtth+QGG9QnTgWUMDmpywlhK7z+
	 sHAQPFrK9K4FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9A0CA600E
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145303369.5682.15828376294856238803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befb90728ec11bc8fbdb3adb58dc666509f7d27a47c3d19395af78ac2ca49a4d
Date: Thu, 08 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791453033
