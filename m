Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149913B1AB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762993794; cv=none; b=Gx24FT3KUrLfd0tnqo9/DbLe+1BhGXhHiAnSTUv6ogxMkQCGkn8yp0tswbVuIlt7t1DvCtakbOPtL13+VLSWxr119it5NQdQw+UDqnFyB7bBENTB1TAcp9HzFGufi8JTQFvAYSv4UATi1IfZofpyMYc2rovLxKpIqz/twnVmOYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762993794; c=relaxed/simple;
	bh=dyOUhLEU9fgPRryhSCSeko+Fehtj/siX+WL0LRPiA9E=;
	h=To:Subject:From:Message-Id:Date; b=lD9W82dF9Od8b1k9uUPrhnictRrnQ0dUKA2sZwA6Ef9wLw8zDPWBLpYycNjCvJWCrW8mwWAq5SzwCxUQrNS3CU0VSkq6i/JlgLsqoEuXDrJssbrslS9hPG/jz3/c9LiTuNl4obqiFFDGTW5dX91CwFyV3KJa5vJp8eJmbygsPJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2Qk+NJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2Qk+NJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF71AC116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762993793;
	bh=dyOUhLEU9fgPRryhSCSeko+Fehtj/siX+WL0LRPiA9E=;
	h=To:Subject:From:Date:From;
	b=p2Qk+NJXbkCJ0y9waevQhSHcqytnzFQHd6FkD3QZ0peLNyb0q9n4RcOPKZy2A6bL1
	 bISBiuFy8P1FtEJLa382aNMKgX8iOzgn6bbY7aDSZoFVLvBrBU0sgiuGlOYvTJaHg7
	 C4K/EroTI66zZSUMpdejuyXfR/IXw9juzQJ45dIqkqiD1nNgYC1R2zIJH0+RKLgBUh
	 4i8EpZOz00VHauifsRMY/fmTr3egUCDakn63xYSOir1kY5GLFYtKAsYKYhJzBjSkAm
	 Xg7p84qImzklPwAffK35cAmrJvKu0XMH+TvG9YgBUNNPuFW3UNCJD1IB8A6emMu+QZ
	 k7SlOIBNqJOBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91698CD4F24
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299379358.20265.3592558882333773906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0a4b8f472eaf93f4d0975eea1e53e4ff1bc8701fc1f54fe4b4c456a15f4e8e
Date: Thu, 13 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762993793
