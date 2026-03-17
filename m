Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077003E716B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773773094; cv=none; b=H+0Qc3E1xhTWTykZshoIWAq1SR41ea2ISc5yFvAVQtRdkwwLtTcNH4Mv7b/RkpV2I4vCj13galZMXrE6PIOqKBsNrurU0PS8FH5T4nsbOsN8jA4AMu98GNgGFNjy6UOY6w0GhdSwDIYVOHYidc5A4nqUnGapr+dgSMn/H66m0WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773773094; c=relaxed/simple;
	bh=DAbOqss83V/9qt52EGqYrD3zFoOGO/oE7ApT/7mrylg=;
	h=To:Subject:From:Message-Id:Date; b=IMkYPsO7GZLKgEMGQ82rwyPlRDffb1s+c3V9ZfBr1ifm+Xcr2q7+3vIUo5uY18rbueb/ldP/21chDavb6eNXjmeijJBf65pfk7XFMnrO/KuhMqTKZ0kEsbYpCY5Y3+QGfrmhsdv+tD//a4GgVHBh67TGZcL4PyKtR0CJGCyKm1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoTDnxLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoTDnxLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0944C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773773093;
	bh=DAbOqss83V/9qt52EGqYrD3zFoOGO/oE7ApT/7mrylg=;
	h=To:Subject:From:Date:From;
	b=eoTDnxLIcNmQiA3sLw2B4xupVLxbro4flYNlyO5pnxoeFXz+DK94668A91S2ZQvGs
	 tNu/6bYcnIWxMDVp0umY8yaVMAQEoItnB+QpWDrmeTpLgQV1Nb31Gk39Hue0V/i9mX
	 9mwS6sJidm+EiVV+6DX60St+b3YRta1M35p8/0N2DLRP50nfF3pNVzQ6MEhaNxoFis
	 FGtAVp5Qt2iYqqDAUvuxj+qJkob5BVKv8y0gyhEvXCBSj0JCsjTBXPhz0SRIWDSXUZ
	 4d/W35E8z0mnlHtK7OxPy934QQwGZ9XexLCPwtPBzKfOuhKG1U7wtCYPpMIJgtTS49
	 ZYXirqOHR7B6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F415FEDA07
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377309357.26319.13879802640063514578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce50d26721103d8c124f93a8527002a4f8603f6bced51bf8c51057ebcfc0208
Date: Tue, 17 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773773093
