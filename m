Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C481A6817
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786913434; cv=none; b=QwKuGmuPDvePqX8goa0zZreRwY4U/rlrSPdgJOjvPXwto7OwtKLIDfnEWDCtlshqwVnW+lJZC50hK5+poFYFktgsaMZ3rhFXPDhAV38ifOjr4dZPYbjVtkLvFDpdIPZXaVeBR/u2D3fsmYrA/+gGqk7xGxQe4gFdYvm0iKtMxGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786913434; c=relaxed/simple;
	bh=TiQbE0Tmy7ACzpLg6gCvcVXEPhvx+VirQtgLxzjb/80=;
	h=To:Subject:From:Message-Id:Date; b=k6CpLJ8Iu7dwR+HstIdDyH62xrQd0nhWpkHUuIdDsINHSDS4lgOE+oL2qhKRHJc/EEy7oMp/wzvMh+gA8HHOAz6ytdD3QkXFq3LB+o7fM8kfFdGD9nbqjkB9mc2iIWfmfDbJPTNRT3NueG2s7cFpFuCo81riJCQF0hbhO5ex/JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/5M86YC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/5M86YC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F07C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786913433;
	bh=TiQbE0Tmy7ACzpLg6gCvcVXEPhvx+VirQtgLxzjb/80=;
	h=To:Subject:From:Date:From;
	b=a/5M86YCZDgJWDjuvFzyG1/svWPH1bgQupLOtZdjjkSXbB08rdgUwuDt5bWHTHRvJ
	 CbAHpwpZ5V1OQYIDmqgmXANUJStbkwSeoPUg2pHMxT9HNmVwGhkufl+OQLeBG3mJLe
	 D9+dub7pX6mpLU5zBFvsMkzc79tU8/UQ3+d0RBVrzC/fAFVc/qHx2QUAdNMv62ceJw
	 bd3+9kWDUfpbleQxlnsnTWB/sIJh+8nI5YAXmBVs8TblWk7OqDXJCLkkKmllEaafmo
	 TIgu5ysSu/kGoCSCGHZdJsi1kDjzkn3CN5mdt31E2FYIJc0V9trvtKB6if43QsM6Ui
	 5fjTztC/mp5OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9594C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691343368.16347.6120856056666741452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd031e72ec7195b05f1c82f0a989b732ccead15870f10a5ff10d9b03d516f77
Date: Sun, 16 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786913433
