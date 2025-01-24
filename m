Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C365155726
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737749154; cv=none; b=BMrbc4VXVTShpWHWOLSmOq8qD4TvfOSuI0SF59To8arfZz0olc1pSOkS+s32ZHRL3u95vYQq9rFZWsZF3HrsN0diVhWh9+hbLHpOh5qHWIR+IDCeQQnvOpEU7zim5tsfLr7/uX0cNPUjoWGRCih9zDdte1r2ceHhwqXoGqaFQPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737749154; c=relaxed/simple;
	bh=vAsJlhGCBjdLLLhlG1CGnUyqwCtxMN+7cB6po4b4L7w=;
	h=To:Subject:From:Message-Id:Date; b=npW5EEy8JV9jYEcKS8XK+c7S18Ti2d+6vHnmJOx6HTLKkpVp0vaoXLRIUfTKcgoXRF4M4UtoFTIuTCamESc93ATJP/okR17l8j0CRNZC3TGLgWwPDGXE7uuEYm1Ol9sLT88V+qTj6uKyqQtaYF8ximOBj5vRCAbCDGH+UYG/Jlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eG+mVw37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eG+mVw37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5496C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737749153;
	bh=vAsJlhGCBjdLLLhlG1CGnUyqwCtxMN+7cB6po4b4L7w=;
	h=To:Subject:From:Date:From;
	b=eG+mVw37gTKiuhrQ8uR/gcJvByzJJefxYa0gjkqoQ4ryoY3xJZuCQCh3f/6sqasK+
	 7Hy3zJKrbkBuXBLm8pNXafNUEZ8/0eAjhtk2t+r5q6FOAQRoEeUxMkfzTk1rJ3Ymsy
	 Ih0MJKrf9iLuekXEQBvUTIORXevvdPyrQVLyhQztCmvr7vGjx46thWneShMJmqmvwM
	 Z84kTxU4mBNGjcNz99vsUfDvYlvjIteIfo9RTGzr1Oat5YHiJ0aAPo0JrsxRusQLCX
	 6fpBqjXQ4hKJL36bHk7tr4mRSWwH3cyCDjYjkoGk9ZqZnhYeBvOZ9x8+OSThEesT7D
	 WNoooRcs6L+MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9B1C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173774915363.30000.3978513442403650376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3370e7738fc1ec580b45a7adf3d105bc53d8e8a666bff349263ea017f82ca1
Date: Fri, 24 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737749153
