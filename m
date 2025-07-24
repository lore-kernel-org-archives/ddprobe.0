Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBB91E9B3A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753339194; cv=none; b=CoFlqnPsD4+4QfAEUyIWAUMypdbQId40kNSEw1KfTxcVNZ5ASwrkSmSfQBSBILqxVYWoxs4RIG3MBhV/01fWC9ZZPxonM6JdxuWtUdOOlLgvS+TzdHEOnjUkPoWKw/LJq4ksa0kNcsrsNsnR46nMpoXydfrnU+y300+Uapim36k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753339194; c=relaxed/simple;
	bh=/Z/aohOxhLSrtjhLdFToLw/6wD3pEokDHS/AJKMQVr4=;
	h=To:Subject:From:Message-Id:Date; b=VXo3D22iWjKCnZSd+wRArJZqSrIo3qrC9+mVYTWJ0pgw1tBNo+4/EEmM2AifB0LtPYf33cIetfE9osK/0OZEZrtZPWpIVYLIeC5dfqIzQXCeONe87umQxyKp3ZonmYGjG2i7liqD1TOIBSIujZ8dfx+TlyqeZzueQVAJ1/IYbY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvmn3Csx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvmn3Csx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE65C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753339193;
	bh=/Z/aohOxhLSrtjhLdFToLw/6wD3pEokDHS/AJKMQVr4=;
	h=To:Subject:From:Date:From;
	b=cvmn3Csxj6tuZLaVNyo8/5m3ndOlx4aWl7lMBCvDYZC/OEHagyM6rSP4vohRYT0AZ
	 66VD0o4x0eFuuXO9zT2jK2clUpdTC6kst1lm9hr8ibj41Rso1DpsP9nSNa3rb+Tg+5
	 4qbIIeDyG5fY+H1cnhdnN0JufDGdKMuZLHrukZGgv68u7BHO2xwgiHtFzpKKqd2Ucs
	 6jGcBUwDXcVdmJ417+eGyVCSkp9H2CVuePSCAHPJHzYyOTIaayLVykqH7feU9I/K8c
	 wYGjSEjuRigzVw+BoYOr8MMue0G45q2mWzATd64wWy7rSHdLlnkbuYUasveCyC46t7
	 xNpHszVHpgjhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDBBC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333919357.25891.7470643784551244102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3cf424c333c43ba196faa779b73205cbe5bdd3aa67b06028303ae4dd086cb6
Date: Thu, 24 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753339193
