Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AF1222585
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765019574; cv=none; b=NuvC7FLZSHw1v9pG4dQC/6F+he37RiMGgRHNP6ZyCRKKohfz6XilP3HITxr6sM21jCujpaQf5iSDaGo1X97eeSSkqOS771GSk+YQMRvD37v/cG4cFIz+tn1xwb7e427HbkBokJ5CWDq6hAZucrXRZ+q8zWGs4c0Jyy0Ui4UHV60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765019574; c=relaxed/simple;
	bh=Tv1rGkKOV8g1PMiRNliPBtNUQiZ9v7kDeDmq3ydN8fA=;
	h=To:Subject:From:Message-Id:Date; b=EItssJa9y/Ig1ZFnb+GrqNSAEgjgni++vzd2UqK1ob5UvlOXPNv+W+t80InsSISdfBbfoxDnbMkQChfwPW560oav1BBLxr+UAEHik2oH9kobfVwIptWHluiF5gWfPUvMgJA5sktCzA81cb9fVLBU6KDdmRnrse8wtwXiJlzXQj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ld107xds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ld107xds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E4AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765019573;
	bh=Tv1rGkKOV8g1PMiRNliPBtNUQiZ9v7kDeDmq3ydN8fA=;
	h=To:Subject:From:Date:From;
	b=Ld107xdsBCo9WtouMaIv0Gpaal3ylDKZbOyGLmK1NhMUeSypMxNDiGDiq/dcltJ3u
	 Ozh0sBgVaZ15hJ6BB7YU1qJ8cevghsp0XEsizB3EOHz9+HGU2h0oMhA/Wv1w0Qshiq
	 Fme683arxzASgwWOoobyuoCI6LagP4h1DjX+UcsawKzmDYxoTb5eejiKgmgF+n3kWa
	 7p4mLM9QRqvu5tI8RPZjKxBQ68Nrk48Tz6MEkIhVMDYAvx6OuUZ6IQk6JNM1Ow3ImE
	 N12wmVA2nGUoXPuJIhESLRy8+FXRzN/chAehgI+W48DSZ7igdN9d7LaNTDg1uOrXfo
	 sr0RL6JbVqsHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB2ED3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501957362.8405.16693345956380883076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85e7e069fc08b0b7e4c1a7a202d95baac14315e628a8cef1f93c06b02f95ccc
Date: Sat, 06 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765019573
