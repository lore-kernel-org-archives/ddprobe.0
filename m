Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430F91A0BF1
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783600714; cv=none; b=Kr4Bs39fJYFyEAJKNvWALLsvTB0LOtf4xBieN++mZhZPom3WWSsb45Y/tveCLmvIRb8wXAaKXU6gYNbf6ZRKLVqCUD4UQ1ddnAYtZ0OczNYn3Thtl+Ok+hlwpYpiZqeH5MaufaCviabLpw1O5Err56NzUHbKs+q81jrCBGgjK6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783600714; c=relaxed/simple;
	bh=KzFKekSVAyxWmMe8i6I0PVOkef9sQqNpNRRBq4C8P/s=;
	h=To:Subject:From:Message-Id:Date; b=FJ8wry8WMv+RHt5uPC9BF61yhaunsQ70A9oD8MyOQHZlQdqPjv07pZ0LscFnEtKSvMve/wY6XHeE7QX0mFw6OY+ddlizx1vDiyH6awPTk2LrvjIFR+PYuFfOmorfRayaIBPKUL/5qyH7uMouvTYJzQXTTNncOwcW7y2Yy51nj2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIoMsaf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIoMsaf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABEDC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783600713;
	bh=KzFKekSVAyxWmMe8i6I0PVOkef9sQqNpNRRBq4C8P/s=;
	h=To:Subject:From:Date:From;
	b=SIoMsaf2JwnhnlkAkCOANWu3ZXEDxKAL3QDOYYq7VDYNSplBEngs6AT8aLBvMgPDD
	 wNcGt33ji8RcKJpz6L9OQLScyvU4e6W/cANGfqWOJOulqFkGcWNsGsSTsxlPyackMY
	 FfvzPZd9ibFBlX86FwOCQjd4gGASHFFbajz5Gw1/txGqWpZYlqQHVW+cK14lxiex2X
	 oD5eEYxp2QiKxCounneNDe70XR+Vl1KpSMinBMO7h+6Stfhfr6rSJz26Evp6bUnq69
	 P7aBt/SdjArOzYQtrclilrtu1GCISrlp340zX+P5BzcbOx0GtwH7RvTW6LyZ2F1wEa
	 C6ZIH/OzzeEzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82D8C44501
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360071368.27471.5930674237652067941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ba71b8c31f0d3d9317144e0663e3f94b903531321de64fe031c64487be5dfa
Date: Thu, 09 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783600713
