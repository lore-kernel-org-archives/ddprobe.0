Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2D6277818
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784524714; cv=none; b=lUzjNcBLkETlmh8AGH7klIolcd8W0RkxeJreyJRYweImaz8o5EeJ56CAe/gUFkOybPl9CIPlCWftWZ2CNAjRZLnIuqySm+fhyCNBTiGkGdonnTKJvl0aGjzLjKdqA0cyUnDEaqqQi6bqwBD8rrsdO2w5EfxXpSyl9vD/sr43mh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784524714; c=relaxed/simple;
	bh=jzjUYLAvAPySJ37b+5racmLK448nmTS/4m7Jnt11rvY=;
	h=To:Subject:From:Message-Id:Date; b=BUm6WSKCIk6UYGohjSa2wds8K09Gozn+tOa2HyZ3XhN7wXDJQTr4xfJyQEEJiVrBuUZ8oUkjPdBgPlt20d2YHWPma0rnWZ4coYnWR2WEFkT2dtpjXtYjjFdQexJ0lvulKyvc/Mtf+u4iOsN+hUsA7B9WqL8HYWgEVyERc+AiO0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5ZnNOPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5ZnNOPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDB8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784524713;
	bh=jzjUYLAvAPySJ37b+5racmLK448nmTS/4m7Jnt11rvY=;
	h=To:Subject:From:Date:From;
	b=e5ZnNOPqAAPDfxYGdqcGqWagWO4IL25cYD8HemuGAHgxzfadMxIPybQ+jwiYk/DFU
	 mz7AbHJgiObN4Gt8qlLmMHzsNBqNXjj5GU7iu7sYIotm1CwEYbbVbtfdMT8aYKlGht
	 I2FACR9gNFrwPjHrXZpt/Xjf/8K053mNwkJRh8rrg190DxP0ZLZcImq88bEgK44L3F
	 CFLd011kw5JX6VD3MD8B/eHqRIr3WziIiDDqMptjrDvetDihvkNUEeqBBl/9u6o8IQ
	 5bzUvuxVoDC9S2/vXuFfvLbGJG5q5RIF9DSqqHsDLTEC2plwyddiILKvloRVrzo/9F
	 3UR6q0shIQCPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7C6C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452471368.7342.6304627804309990186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f4d064e4ddf26b5848dd284ee70f71ad6bee89948c10048dcf2caa1cc4aa2a
Date: Mon, 20 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784524713
