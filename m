Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A023C1F
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763189994; cv=none; b=mi7mSaua1QlaDqcfYFEOvL/JvXQ5Xw/fwmcJytrfYSx/Wq32pY94ymFnA0DW3TpQC/226VFW20Py1JsWC8ADuyFXMqeteW8FKeLP2aNxO7P3mxd+/DhGkchjKcfBvN6TbU9fVRIJKyg+c6Aa0jpHncjdg8SfzD5v6mcxykeP/UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763189994; c=relaxed/simple;
	bh=LZqfsnACNELd9CxA+znVVqSpqnD9gZ6yDRhPpwnU0aE=;
	h=To:Subject:From:Message-Id:Date; b=tjGD3OAhwfifSlOGXVvCgpgqILH9G69UI85Pb8McvTQksShZoBr/CK8OV8pL+ltGbEguMvT3r83kHDGoL1pj0IjFwLJ/GDVst7+D7cSLgw8On9Yg/uDvTDx4vo2wT2+lLT0iV5ihkmSQlhmIKTj74Vo8XNZ9WuFbcQEWH5Dsh7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kE+F+/Bu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kE+F+/Bu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF69C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763189993;
	bh=LZqfsnACNELd9CxA+znVVqSpqnD9gZ6yDRhPpwnU0aE=;
	h=To:Subject:From:Date:From;
	b=kE+F+/BuzK2wtXmr1YUygrEGEh79ZMqBEiMQJo01uS/uySQ9uyJt/rdvAX8kSD31i
	 /HyebRjMwLcnyOs11r8CU/d7wmOa/XIlj/9gAbVXwxAkR5eLF2GOOYGOZ8wxfSHaGC
	 Adsk+lT5La/yAO6X8VTCp1wugX7G6Owf1O4dxEceil0LgrftkcsFLKVOq+dwQySBIH
	 vhWidR0r02cJH2zXnhlMi1eYSVYS1FNf78aTx8heYZSSwGVywQoFAwL+gDeIFDbIb9
	 FSfGXi1YCtdtIHEjHoKisaOrxLBHcKyn9KDk0h4wa8SA6ZGzZ72M7DiTEnH8mD6d/l
	 iWf2Zgf/OlavQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79FCEACFC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318999357.23459.14773449113994864498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf88fb6a5f96b15fa91f32aa464c11f2b9c2aca5b72f1997358c1f8ecf50973
Date: Sat, 15 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763189993
