Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3487B236451
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740596334; cv=none; b=TRgdjyQz7dVn8+J7iRE83Hys+7M4DoARglZvMzk23+UIhGKKntgCYe8DROZ4N4fQA4UhmwUumA9zkHcNC95TiLvrYGZ0L/j2Q6uktGPa72ETRv/m0vIqSGJwLm++Xv1lRzGWTze1oUBcpR9BrQ+P9MfwTe+18cCQZoFVLkjEgPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740596334; c=relaxed/simple;
	bh=gPAYOD/NjNssPkNkWSbgphmlzgUcW3TyVlHZQTeXFRc=;
	h=To:Subject:From:Message-Id:Date; b=TSY3GrLbXkj45qxXtqeh49kD/p5TL0kk7oUCaRK9r348QgJk8gY9Q7kqBY8DcpbhwiY6cNLOl7Cib01sTpgRQV1F0DjY0Z1iw0Eq7YdoSziH7sNzMIzPSJkLXXw6pVWvNbcEnX9vV7A2IOo8bYC4q/RMeuZPbV4zuZv5EY6sMCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adNepJtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adNepJtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAC2C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740596333;
	bh=gPAYOD/NjNssPkNkWSbgphmlzgUcW3TyVlHZQTeXFRc=;
	h=To:Subject:From:Date:From;
	b=adNepJtm/xMy+2/M+lrCF/OioHSaML3AqfZFcK4oUJTYgNwi2We3tr/mI95RkQYTN
	 rBMsahIzTAacc5SYzPjeIBPVQgG5LTNNepn65/ec3/yeT1n3E1jZWnhLQ1PfV5hCkt
	 /2QlUGrh0fz4Exk58bHtY+CgniF96xrycSvM3TodXcubduvk4Owu1RFV/Z8q6Zm0ue
	 jQ/Z16MGuLBDbAZm3Qja1mq4jVvuOCC4zPlBTNcxi/oxuU055Ry6iqoWWbBTdJV7cS
	 p123r35XoTaoCLrafuA6WgtG1eM6XgseoyPTMQ5e1u6oq7Nmlib7/CnxQQNEatoPvq
	 tjCyTc0TqIZiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A26CC021BC
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174059633362.13890.5251613864584767572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee6d5cc70d20373cff68ca251f1e6c7d754afab203f44991d617e1e97e5386a
Date: Wed, 26 Feb 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740596333
