Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DC340DFA5
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776302254; cv=none; b=ags1CYDf7Az1slLKwit7xc8FbLAzz62PeB1VQKOnwxdvt+dhrGjy3BWU/flGdLs+B8z9dzW+GdCAR8dPODuMKSiZwKgar92eJq3SApMIzija0lXQDlrP3sV35wpk8LFoQEaI74bkfiyAli9nO/R87MS9aRGGrTllIEEZ5kcq1RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776302254; c=relaxed/simple;
	bh=w2+NEfYcHn9DTpLpgGjswk+3ZwQwbnRUZgZMbUC51+0=;
	h=To:Subject:From:Message-Id:Date; b=Bl1w30hu/QFNLUZqz7riNdVUXZI9tUZ8ILk2b53711a77J2xDZdPM9hXhyiTogwnIRraSFSE1fp++Qrs58xojGbJJxFYJ8n2hEqFhINPt/ETOWEXdf1VNhhL4dSuG/UrdoC5m7SszFBGg4HT8Zqy0h+xgYiZBZd76jiUVPXvWxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4FVJ2vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4FVJ2vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10CCC19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776302253;
	bh=w2+NEfYcHn9DTpLpgGjswk+3ZwQwbnRUZgZMbUC51+0=;
	h=To:Subject:From:Date:From;
	b=u4FVJ2vxrfGPloG5CZ5GAsF3tq60JOYc8qPfoYPSuog0zO2wlXaWtkab0KAW2IFGu
	 R0y1y6jMS4r4DHyeq5zJsoEoByuF8sKa77VlIpwpXwXQXgozhOHpPe5pI85VLwDODp
	 B8Yvn71RYJ0N50L438Mo9Tis0qomD9hTfcj3+smk6imaudBdCG3b/ju+Ioz4unbWSL
	 kVxcYC3eLpsb0PLgaY5knMCX6r760+p3OFVv3NCyBOXpel9VwAmPKb2HUQyaSB0gvF
	 87O3fb2dHNnDsYmQLebfQPEHNwz/+S3TpeZHa7hH+N8dRP1bvxooUH45Qyte469tf6
	 SFsrQAwVXZ7qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA90F433D4
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630225368.26048.7822306151969248330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b81622bd3c15ea0b19e3a4e7657523ab4f589701956b81fa569c22ee4c3340
Date: Thu, 16 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776302253
