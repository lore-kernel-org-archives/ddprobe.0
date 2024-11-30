Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294791448F2
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732959354; cv=none; b=JfABFvlJX8zbgl53MI+ysb26lv7wr9e/JP6xPMN/1JaCZT3SF/IRgqIVW7+gF0SN2csplHHXu45H6SjwZaOKwlPlKlMyiZhd23+O6ge6WKe0Zxr9+5h0WpwcuJKb/723jUB/kldsTbKfbgIhd3vsv9HvlIOlhQpXyHFULMZ7PX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732959354; c=relaxed/simple;
	bh=IVQKdzzI7vR5WjReaBUTn7PGgOSUDIwKhBRs3k/QG1Y=;
	h=To:Subject:From:Message-Id:Date; b=uWu20MmpYr1+hmt0Pn6cDa53xcGyLnuHfkpSLgJfdlKs6CjDhPVUV2KjVB5KbvBptZ/Fy6UBsSh2J4MFfFu4Yd+VN4K7ORqZ079ygqWx1d+0clwmF/h8tp3hbF2SivnkQVBjS2D8gSsnptgke5AbX6SalOxce6QAIlSywNsHOzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kf8k8T/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kf8k8T/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBCFC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732959353;
	bh=IVQKdzzI7vR5WjReaBUTn7PGgOSUDIwKhBRs3k/QG1Y=;
	h=To:Subject:From:Date:From;
	b=kf8k8T/t6YIMIDqoNoWEBkIAbPDBwPbZhb7ufzVkC4IIQGdU+JZMhKNa2W0a2mfW0
	 rnTe++aVp0C+rycpMvtGH7WYHK5p6sQtUwL4c71SKnKFSrJT/7QlE2JVg3mbhmFGHo
	 VS9vUO2faZ4h3XjjbPrSbwyLJnc90inYf6PySYz3aClg2w+eGofC2XqvQcTVzXwPEk
	 Y+nV3Edgo8VjQFtfz8a+CUZnSF8i5VAJuoDdc4b3ZUcse96dd8QBRorchwBNjHPJEZ
	 uxftz9pnyQbwddib9TX8wYx+IdTu2vjElo/xExvABR3Pf/GTiqk+WdGN0oyf+ZiL7B
	 ClL7yRHitYEvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96600D735FC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295935360.23034.8921018276528559588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ffc9dfa891c183cb20c0f1fca671f5f6a54eff49be4f19b11a646f675feed6
Date: Sat, 30 Nov 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732959353
