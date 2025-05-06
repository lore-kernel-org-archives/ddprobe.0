Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AE720FAA9
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746502195; cv=none; b=AnhMxTi+I3Bk2nDMNERjPg+J0X7vqXltCs+9NGRZ200JHiDruD0/RqiK0/941vSbrqsFHDTheZZT1rDt+GHeuwmSmtdHaet+UElQtK3DyCZNie4LSk9uAFTh5roUcWp+lYe+6PsMK9YlHCr5zUj6M52lFnopS8D9vPjOzUl09k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746502195; c=relaxed/simple;
	bh=ahhSiED+ajjMxFe0AUoBq0CbzN5Tn4jX4xgHsX9907M=;
	h=To:Subject:From:Message-Id:Date; b=AQpetKovVnv8gfLGacF3JK9FeOe+3FVJZd+5OQiPF7LZaB2jOM1X0Y2lk25tsgjN7R4Z1v14DH9Uuy9Ue3StyMTo0r/aQcZBijX2z3c1lJI5qwleOJinA0ttqjtxUZKHnH/yAuvWk7sCSvpEnlYlvsM7gdyBD9ROf4yMlpPcrAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOXLs+19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOXLs+19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A351AC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746502193;
	bh=ahhSiED+ajjMxFe0AUoBq0CbzN5Tn4jX4xgHsX9907M=;
	h=To:Subject:From:Date:From;
	b=pOXLs+19PB0LLsWkGrj19CFP2IPegQBPp4k011b6Vf8kYwvj6QQ4bek9MNEXe7IwR
	 FMjitP4tf/7gE9PaOaZi0sl851xyv6po7ZNnT/GAvpp3VVgRR86F1R4518V/kbFugA
	 gsf+C6SHeS97SVT0RQFCGquNMBXu+T1FBuOtBE2KCPFD3524L0cZLvrGVZS8dXpOX9
	 PBZrpx9QTRzjEzjXntKlBW7ofkcfr8ldj7n6da90yiSWlt3+5hr4tPQ/demEe4VDM1
	 ptHvqgKx3dU8mjmRYMs5L77e+zyqa5KcAgSX24sRGdgjt9v6oooT4hr3WXjS2qFy9s
	 8bgVbvhgAVGbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9056AC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650219358.27616.4013218542681672554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc64143f5accdbaf1d44b11f49e038ae867d0de4e90fd4cc721cc9cb0c6ad69
Date: Tue, 06 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746502193
