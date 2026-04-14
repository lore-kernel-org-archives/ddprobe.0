Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFCA381B0B
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776152854; cv=none; b=QxV0H413VGuL08KP4yVkiN7ckBYib/ZrGEUorQT2CE29/bUfDbGCa0ourbUpM7gyX0GGUszkZocw8CoziViN8yHxlktCsFj8FeRJzbMzGc9H9Y5taZ9RfatX+3PoUSkRtXH6Gk96+rCL8Tqa1CUYugxpsoH9bDF+zPEeq0ea120=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776152854; c=relaxed/simple;
	bh=o/QG/UqIZWSBU0oj/3nWJ2ff+c8QhGmfnWmKG8hVT/Y=;
	h=To:Subject:From:Message-Id:Date; b=DWDafoAAcDitUnWhgF/vL+3L4lEkdGVDlYXvEygFyScMKQKI4Ux4TeArUUftl8hKGmcCAY+xrviO16EoiJczYDWOXJZoGhrEtDI/WuM4xpoxgw/6YIyAhQnXTfZ+m9utdMsSTlZtkGSSfeN0n1Zq1247mb6PB8tkStKNDpXFggg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEFw0v5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEFw0v5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DE1C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776152853;
	bh=o/QG/UqIZWSBU0oj/3nWJ2ff+c8QhGmfnWmKG8hVT/Y=;
	h=To:Subject:From:Date:From;
	b=VEFw0v5WRdU8X9t2KKi7SHErjWEsG9rouUB3NTod2/CQf+q7luoblE/p3em6BslR2
	 b7HEVAsa80RB6vOA9hNoLYXqgFMUzSrX/JALrWseTmrIifnjOdDjbxaZdW5Uj6BbiV
	 e+t8n2pEvdjTEqOxcSi6w1a9z5ASxDOVpGhBDik9UdMVkImCguQkYXAJmZkzrq338R
	 qUc3TpeGi3YzrBQLSX0PmAVDdFnXd554bS85OoKzBmuiMjLA8I8D9cuVrj+/qohdoZ
	 VeU1//cTvCc+Oojrl7lzORmEsF20M1fAK86z1YCDkBWE/wYFaVEjnQv/4RsEiK8/Fi
	 MugnbF7i36N1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEADF531FA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615285369.27657.7019449231255687062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2c00bc65b2d74aab4e438a91b8f823bfb6407f8dd9b13881d04e63bb69f5b9
Date: Tue, 14 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776152853
