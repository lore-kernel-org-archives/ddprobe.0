Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB712746A
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760231394; cv=none; b=OkJzRgLu7PMNY3bnaZAjfUrcLA6N4/QWXqCYgf8Meg980rDufOqkzhZe2Ln8eeh7YoV4w+0Xa945Xum47Pvmn4X51wAgaUt8/3C70JMypIIRrk8kJVt4NXiWHLRa12lUZz02p80TYINgmTcaBJ7Lk9CCTOrXXZxwUZfTKKhEQvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760231394; c=relaxed/simple;
	bh=BLQkzshjSVAwDe2cgmwzNeTv7+Dmj0wR0LNUYfrc6Yg=;
	h=To:Subject:From:Message-Id:Date; b=hh/N5L0TWjn7SaQd81L2Osz30G23t/asWu/3M5gbrraYu0jnbLQlXmlIpN5E+5roatUG7PqcGrZMCy8+O8kmCt9qELzxrdaIH4CLGbpgBLOqooAhEnMwCYPBOeg3HgM8rRNJC6ZDEMfokMV9FCOma8Lps7YihyrKR5Z0MXyK2KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtFaM3VM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtFaM3VM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3ABC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760231393;
	bh=BLQkzshjSVAwDe2cgmwzNeTv7+Dmj0wR0LNUYfrc6Yg=;
	h=To:Subject:From:Date:From;
	b=NtFaM3VMMA/9JA3yJkttfgR067wIzPy+tvLk/YUR7LXnOqltlLbsNAShIhgHFg+6P
	 3+Ez/BJu6ItGzEOs7Em/nhwuyfJQ9fZPDGRBKLOgXByL/pcC6875PuuvrBjP/GxNYT
	 1Whp+ELLW7UY7RPScTfUDN7/u7+KfxZnPDBIm7ZFZu11JKm7qhMbyYbOUn8q+pPlq8
	 NEfulmaOKhfY+BwziWj1a5AgpMx0o5W4wYsa+XQhqFB+3Yo3Ycs9PXCkXSyg3xvoHg
	 pjxTOxo31jyZKSBm4KjbmQntaDHR6qWte8zYEf1wTtStTqK6U9pAFnEp2+OhDWjqnx
	 3g9c2TzmjXQpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95450CCA476
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023139359.12601.6149230695440160433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ecf6878f7d68440245f383bbb0724f5be5cd19210eb06f5cd5e936f9e16616
Date: Sun, 12 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760231393
