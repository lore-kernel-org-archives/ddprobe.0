Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8089F27F72C
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790988036; cv=none; b=ZnT+rY3KiebJXQdDTV4BnORSQ1u3gnDJg6l5hsgd58C5mPi+MQ4FyVggwKUapBbi0vTgou8VaXnb9GDbtzERXfqQ3iGI1o/l/QuUluTcS7aWeP2/2U5bUf3unlcmZZ/QvtOnY0LQA4tqz3+hNfqxZyX3PQLPcpvoY15wt53ESis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790988036; c=relaxed/simple;
	bh=X8TDdGerJ8BU6jF1rpZQKlltCJkrYIKX1LnvZ6uArOs=;
	h=To:Subject:From:Message-Id:Date; b=dvCaCYDEZJLLbzV9l6r6526qksBT/KDq9WaJHcoAJZuLpr1NncRHu/XNCpGEj9Z0kd6KLhjBjVCX55UABBqDpwhKvAR3lKLL4/mmD9+ZaK2HQtKKhWA37qptxuUlzVgQU/EtwZOztLXfXjN8e6g8yC+oIXJumvt7WGoAXqVI7Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArKBkz8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArKBkz8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CC6C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790988033;
	bh=X8TDdGerJ8BU6jF1rpZQKlltCJkrYIKX1LnvZ6uArOs=;
	h=To:Subject:From:Date:From;
	b=ArKBkz8AQGvfbMRPI1c9iFla7A+GXQF4IwaODnIPLoGXtti9cAf1l9aInjo3mlIW7
	 ZPo1dg1Q/4efu4IA7QFMztXx2gpjOYfHn6V1Txj+fdnZJymvnoqZo7O3ycmjF4cY8f
	 JQgmHIW8GGYzdCU24W/12igOCy9SXccd2s6IePQpbmVwmkFDwUYkzlpne3Ty3iQYhy
	 XIchmTe/+Ak7Nxik+v6QOcJZvCeAd1MGpqRanQQ+ULiCerCzJZhDlbm0uDOBKac6vN
	 JGxjVEu5c4ct01/f9ehaTP7V/4l8G/s/u65YuL9Tfv4bWO4NYKbyLmC/loTL2msAXx
	 ChVCHdOaxxyhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD806CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098803368.12053.4032155782607696408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1f2375354a8c518c5c07cd60db607060d310008bd637eba1741858526ca6bc
Date: Sat, 03 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790988033
