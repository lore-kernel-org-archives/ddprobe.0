Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70A525A331
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755247193; cv=none; b=BeawSNiBI5C7aTdsowssS/YXzP+WlI5/inP8j33W+obUKzVD1HJBNcHqf14I7ewKChbjvYuQpCRf20effuxhGu/N17QIQ8olMez73/Q+hRKCrhwPZLJjb7Emjai70xZY4zqsYGpDTuD1CR76LgGgg5Y/FJEmzS4ZymMD3TK2d10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755247193; c=relaxed/simple;
	bh=JZXdo8fwWNQMR9puCwOnXt+DQSYWQhnak/IhALlrfRA=;
	h=To:Subject:From:Message-Id:Date; b=SVrNpvU+uReYIE5VjVLr3lKyY1meDJt6FkqJERcJuKitn29y2L4233H23TGo3LX+Z48QDENgXvPd4fkQ6DWHTOZbvFaMDYLCuKYBZ8KpEbNPlog46rIWxCQ8tYLvPma4Ok40WtpzhkMr869YYs9Y+iMQEVrG35ODYjOEl51WNVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BV1quNTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BV1quNTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10A6C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755247193;
	bh=JZXdo8fwWNQMR9puCwOnXt+DQSYWQhnak/IhALlrfRA=;
	h=To:Subject:From:Date:From;
	b=BV1quNTOPTgT1IjoyP3J/pekWZRuP5zdm4RNjOTeuwufgETcJOp7lqT+GdtaDhkh1
	 wrj6MLhJzV/m8C4361dS4WVFe9Sq68O3tmYR0aXrlwN4b37KuTF4CXioLc+s7hdKop
	 F0aGiFffmkkrTL1oqYlqG3Y1GGPo1rtr01To8ResbXdLS0Eee5TJZs4YHI2SGFBHj+
	 9wJtHxg/W1kUKV+YwhdT+3fY68t1ac5+yOMaRkIqtyJ6LJ6tZv/BbtQcrIQmCfbUqs
	 eYetqamj8U29qwL9pzxk/swq0GjvPsqLYDq4vXBvtJNfE8QgEVa/UglGgO/ukfu9iE
	 YoiEK3c6x6GMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F41CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524719358.24349.4367065403955989770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a545cc2ac0d29e5c9244121059c31be82ed3cc89dc7564a306d73f7bb83de19e
Date: Fri, 15 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755247193
