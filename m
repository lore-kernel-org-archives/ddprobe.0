Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6138D337BA4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781110594; cv=none; b=A74eAma5yKy+gnJllSivh9wx4f/qXbvupPduRdDcUm2DVosdQWdMP0yV9/hdrlGl8B1Hu/gy6qtDjb7LsS6pp2wjOlatL24MhbQCr1JLow0qct+evbftHsnd6272AzkD6Cx+JR5qX4oKMw5/pWwcJRN/agzlSMDEbMRrL2Uy/YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781110594; c=relaxed/simple;
	bh=tD0tbP7hqJ7my2OVZAySstRlGsguS3XnAgSNroNgwjM=;
	h=To:Subject:From:Message-Id:Date; b=Q4hdKSmh/ifUXc+vHhj+FlOLd4Ae5jQ21Clxr3CYQuroqWy5J96QGlQEfW5QuKOq3oIjoXyTwmV44HSYrLWNuj1og+n83qqdDEbvcbbE26rhkOXjNw0WmBWLm2Q8MZ+CqvFJ8gUud//ynUH746HvGM+b/axvwUP63UaM+FMoo4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn/aF7SL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn/aF7SL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEE7C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781110593;
	bh=tD0tbP7hqJ7my2OVZAySstRlGsguS3XnAgSNroNgwjM=;
	h=To:Subject:From:Date:From;
	b=Bn/aF7SL8ERkoXa/aenPhM5MPGiGOjIJsOeEPFFWub+OGdYhnqZ1HZE5NxVlR+PnP
	 aGatEeHnGXGxEJ2Q+niKyW9SuTftNl3zQkwB71GogzKyMI7i/jMOyXK1cxIOK6xkkN
	 rKQAXtXIgadjJoPH16bpy1FuUKtt87IWOp48/SE3YcJz71euMVxYgUUmmieuK5wEmm
	 Tr1nGXwWNZlojyPNoQQldx0wz6nowbN7g+QkxIkojxwQ1lB8AG5z/4tAuz4yalRi0T
	 1IUOzmTKKAhTBdMNVXjB1Jk2QAOZ5WgXUsbOvKcqtqUpDcCRYHf8o6Q6/b22uoGMVE
	 4R2fOIjBee21w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC88CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111059370.15068.17203972019449957349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e87be1f940321e87fb0200ff1df59f6ec27364872329a3c6e0534eb2e185a12
Date: Wed, 10 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781110593
