Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446EE1E7C3B
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742486394; cv=none; b=tIZi8VOnLnIjjAkPu+tOMAJ7dcmQjhfacaUnIUhO/sEl2OjE9tKwtgS8jAHfRZ9ucrZFd+Y8K7/X65fAxN2asPv+I0wBQtESBoL62zGL5Jy2HSI/0lhMBbJNPNNiDGiin1W8Jpj8Tmk9g/RoxHuhUUAF2b2TZdM0OObMw5xbaGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742486394; c=relaxed/simple;
	bh=d1GNG8BknT4Ymmc4JN/l/gIJgAcLm3iPyVTihh4n6SA=;
	h=To:Subject:From:Message-Id:Date; b=CIQcKFMCNPKWQIGNcGprMsTK/CGKIxPWQOQrb+mjNiuyYYGMgDcb4AFUEn4SAKGt3v/mKRw7ZE8hbEMNbc7Tx+NhJv79j48YTheAaRrnBWU2ycfVmh+sqb/ACCWyq+UUVwXX1gOgLxwrLTI3To2OxoJKGqAUXX8ourknMR7GeNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmwyBIH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmwyBIH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B031BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742486393;
	bh=d1GNG8BknT4Ymmc4JN/l/gIJgAcLm3iPyVTihh4n6SA=;
	h=To:Subject:From:Date:From;
	b=FmwyBIH+ukQePsp3wr00TJIKmq6+hxzuK3TWXtJ7Z1k5sLYODbsu+pe1q/GCGs7kq
	 ajN5dSv8vQEfGlPrf7+Dbl+hQFC8s97p+FazVTQWIPHeUgqO6RjoH5qP2qkfcTwKnd
	 n91elZBrXK4fBSQVemMFou2B3bE5wlq5Nmm3qSg5RcJujYHMC82qe8DEIn5sm1Vci4
	 8eQ5a5+ALnJPDNmar7zDtIsYcye0G7Dtsm8mptlQvAfVpmyWiFak0ujx4HADYmiP0Y
	 74ymdVzp/Inu+1FhlW7oddX7xQNRrjGPxhsETSvoVdIH6tFMcUqPv32ipAGDFopaza
	 qNpjbhuKkexxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC5FC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174248639363.4253.1435178787094208875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea3d1953b4b864ff4f09d57bdd4f0bed1cbf1ee08f7b63c906bc9aa9f000a40
Date: Thu, 20 Mar 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742486393
