Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C13298CD7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761344994; cv=none; b=b/zISgAeRisx3OB/TtbQDLzWQhsEQRZnJIZQZR6kdjQrPZFVTGPCQPiXSvHKFcR665stTCXMAzM/1Z9gohg8T5kC77RjHP9uoVE0FFH6XVXhyYV6rHez5Ky4sDpkJ+Hc0XrgNTmGxHiKP6tG5u/+o8TRJ9F85bnSYRMmiQ+OGkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761344994; c=relaxed/simple;
	bh=QMlqEqab0MlQKWjF/l0E45SoXEXppS5Ejt/oZDJQWFc=;
	h=To:Subject:From:Message-Id:Date; b=SJJf0fgEfNHdaZau8WQH8DqX3u5hK0BElwBhTlCocemoZ1uYptzQyNHELi5zOSwnrUGvDtxrnK31UQYOqgMKYoh9Cp2R0YJfx9QRmV+9aHLLkNYxMafpmouBeR48FHR0koC6g7Tyk0vXhGIVsIfWFcDfuw7xoyy2TACBGX7UuaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q93DxkFQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q93DxkFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D6BC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761344993;
	bh=QMlqEqab0MlQKWjF/l0E45SoXEXppS5Ejt/oZDJQWFc=;
	h=To:Subject:From:Date:From;
	b=q93DxkFQL/PZIN7SPSe01TE8EaLhbwUQb7EJdlPW1npdP53pq0XtAa/wW//yJCGIa
	 gwAX2BVrUviFWJiXtIYt2a2R3p4s8WmoLszfKvy6Ev7uPEc4BVlkiQdi4xArqjB+q0
	 Ww4BFc7EAA88RpzPAKY4615NNPMa2V9isT6h58JNbtAoEkFU/DkXUBwf/LKdEQHFno
	 P6Ug2yrZCD4GU3fA788YskS/6czzFt6wCDOzZKfRHLMK4/Fa+YuMrM+Zgb1Dvx3WRT
	 PDP1mVYrX5h974vrYtNC7AEF/UDPJb14sZz022nc75vs5Zvz9shFQvwtE/v6H07nrA
	 Zku5myjIT47sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA7CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134499358.26500.6918862114252921787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6174197a167b394f40228a6c2478ad44cd34565e9e4a5ce8d9ebb60242f9585
Date: Fri, 24 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761344993
