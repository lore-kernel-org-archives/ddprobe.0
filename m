Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D602857C6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746730195; cv=none; b=VIWuyER2XVAro8+frZ6+MkHV8Sh3qn3a4BdjIQIkgdb+mdAuaZaNURoLwtrt6DqNI5iQ9IMlNBKQVsrYPtCj+R0ODc6wxvrZGOH0hhGEW4g+oI19Cloz3K+8J1ZAgMnwoaEvVQXb42GKMi57/iaoucfe6BIwFbYvrWPELCXdXXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746730195; c=relaxed/simple;
	bh=4/zQv4+K56nwpfNxv5DTy1045TM20ur7HqQImBLS6v8=;
	h=To:Subject:From:Message-Id:Date; b=ABnp11/ifGlNh5zO0G+9HqRBw1XFI8e1A7lfkfcc4FWA//juLy82n43D8Xrg8sLfrb9NuUceLq3FlGNlhvYdWSdzOZch4Jr/a418gUXEGxGlpVTpdotVGlcOB34OGay1xyzlWoWLXNjREqj8B3Oks73FWk/cYVmBr3OyXn86G6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKma9kwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKma9kwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7353C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746730193;
	bh=4/zQv4+K56nwpfNxv5DTy1045TM20ur7HqQImBLS6v8=;
	h=To:Subject:From:Date:From;
	b=pKma9kwUph+sew6PQVpJmYIM5DsgQmzcqQboo45yxI/Oi5fxqZadbp/bdWdsek1/f
	 6Jhp8lybfscHxvHrmExeqkOeMerfkp1oVg82Zvd9B8qdemQMtLt/yBEUuj0CLjAUu1
	 N6q50XkzOmoijtHUBNyZkDXR0gyKWfodpXwoAgCQKhd613nGXMaLXt6gMWuh8G5Ud9
	 j8TJl7TobFwVPIsX+PZSVR2bJLqiuxG9OvvTLwfa7O7pa+pfBCwjQNtcuJsrcG9eGC
	 x2CC2obq83NgVD5yUPryh2kIKtSYsD8furDCk/NBIyBN1SjlC/sVPFtckv1kpjz5Ri
	 DMLpqoAeMhgCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950E2C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673019357.5768.10546040399200196846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2dd2289a1460f051e4d74625877533fa3efb6a55b9cf64f89f5218034c5c481
Date: Thu, 08 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746730193
