Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE2C17798F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 22:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714428743; cv=none; b=kK+H5es/MsvXSjnGGCArnvDnAzRC450fMOVLrbSr/M5X7pJqe9deo+b3bEbN2eOozi4jYbYTd4hXdzU6KzWkTFyxizZNeYGzmWd8bTTRRg/IKS2JT6Y4iNwbqyyDWZNNOLT1cWKwcNmBVEtWWP8Y1FvVcVkCwQxM6ld69N5ToOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714428743; c=relaxed/simple;
	bh=o8hmEX/RYi0dSgQNX4dofwcIF/YJtGa263Q1aAjkU1g=;
	h=To:Subject:From:Message-Id:Date; b=FqndShhYPXztVGn/0RqzxMbQaKkeQl2ejpKLgEaUyF0JuX9tEWzbd2znYg+YqKc2IG3mZqJF5y7T0xIuRSr/B3UV1CNAIMB4cPUfvGcfL+UZ5SdScDczad8EIf1/wXs/0XUod24C2FJcuFExhfMTNkzyvpdvIDJv27JbzALx3aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mM2wKDhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mM2wKDhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D863AC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714428742;
	bh=o8hmEX/RYi0dSgQNX4dofwcIF/YJtGa263Q1aAjkU1g=;
	h=To:Subject:From:Date:From;
	b=mM2wKDhvPhdKczuiVYSrzn3C4ZXStD8h6o5g7EsEJitvofu77nj76myyZwyRq2AxX
	 bojJ7p4g+MaE8IiWiI2erhh0/DGQa3JNeQ2bYWRLSDZmNlQMnejffxkYnFEChIDVkW
	 vhZIyYQJoyfltGZDvLSYTLH/ZXGnYCWFTS6fnP/I8SD/dXbzUx6j7eix2RDUQICIK7
	 CNAl8ZnD2s7MXhWINbLbRY0E+wzXuX/qo+UZ1gbBt4kFq4i5Ik4eZE7T1QbLwDyXGU
	 RT9iX2G8txvND5lvEqAYqyAIN4kyji8CB+ONy27+0PCsfZl9YdYndohQlNYwS0rP4b
	 1Eu8b+WAph6eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5290C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171442874278.5383.9757131185520780448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0468e4a5b4bce87f767f09b02560eaed255806e6c3998ff2de8cd13067fd927
Date: Mon, 29 Apr 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714428742
