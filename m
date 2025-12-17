Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D907346AD1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988634; cv=none; b=LwkhhbTJWjj1emDoM0jVEQOpHGr4i40F9JYOryLrLVSKQE+VjoqiuGsRpt4UEnNGfk6cZ9+TRd5NUPKeEy9NbJ2DdWnnXG79uGz+g1atRYtIpLLxipxoKCc0f9lf47TCTXaIEyG0lUV1yp3KhMSGjntdGfPFRVr+SfEitMT4028=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988634; c=relaxed/simple;
	bh=pw1w9uwsTARMSx/d2C0Yi2fBUz/TLrcBy+TT3KAvBfA=;
	h=To:Subject:From:Message-Id:Date; b=iWcW7AhtrqtXuKAXi8W7KrFSlOw6SyqRJCeuACCKaovNzNM3cbt5tFR3Daf10s+kN4SFtcIb2gYSt9KIt/CfgEiTWOPVTmcpZJig38aFCySN6WG58B/yl8Ms4GrKRSJL/blEvp2iibE8FJhtRbquzBJx3LGaeQbRgR9zowexy0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiZxrSvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiZxrSvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E51C116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765988633;
	bh=pw1w9uwsTARMSx/d2C0Yi2fBUz/TLrcBy+TT3KAvBfA=;
	h=To:Subject:From:Date:From;
	b=LiZxrSvU0v1Z3GRY7c/Njhuv0o+T0o/j85RMvFBxqnJ19tX07KZsQVbVzdGlsmEyW
	 RDblAYe6AaEoiEtOvPbJP0GFOYscnnH9HLJqJkyeMXxOo+5CE75cRR0AYxHU6CvYcV
	 I/NfLXGH0krfStjgji0h5B/0REdU49rMN9+v7SsUdlApLJiWVMmcelpoNV9FZPiAXN
	 dpr+0VWmEEy6anDCp+7OXXz/wjLjHgFXc+EboP26IiIIphGvZXteUFYoHQQDNhhWWN
	 /5/EdV2y26yZy8CAZPFozGgPPRV5sHXSmQ3sAjDvY8ADIyb4luYbU8B3DzC7emluoZ
	 etx2AA6HG+BOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ADAD65C7D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598863359.12391.4425153217359716280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11205b68bebb4cd2584f155913bde4a25f9f2e0eb89a8ff927279e644154c28
Date: Wed, 17 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765988633
