Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F8E22EEF
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726822554; cv=none; b=ldudbGPzeuMM66g6TSMAbTXiA3Mhu7qby9g3av7jsbQGp86FMWvWq1oaG0fiJxwC4ccOMNI9Pai5uq3gnLZGo5uGzHM8revnvbkv5Zl8ib4vnCgnba0f+FP7c+EOWnvm+54fPQdvv9LUgd9F9Pm0oafsOMRaHir78WiQpuEynKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726822554; c=relaxed/simple;
	bh=e8xcSem32YNmwMs4e9UXXUJKCzd6k+UcOJJO3xJSMss=;
	h=To:Subject:From:Message-Id:Date; b=X0B3oJKj5k0+pEJg3DoOLO9tMxZcgfqb4qrNLSTQhlzp4sqQ9cnH+l8LmbJSjqiK+GF0U+zBteA1i33TsIPuPJdNN3KhbPy5tRA8DIhI7O7j5QVDGquFX84518ONV9Hjh1dzq46j0BRPO1qv900orP4UOz33myu9luOEgOFIjQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdF8NbVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdF8NbVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2216C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726822553;
	bh=e8xcSem32YNmwMs4e9UXXUJKCzd6k+UcOJJO3xJSMss=;
	h=To:Subject:From:Date:From;
	b=OdF8NbVyfcbsl4mw9JFe5dWbrk+KvLQtH4eydZWMhk72yRVDiVNN9safZCtPvheKt
	 TdDYIY+IjlqL/zDAnmQvenzgtJmt0V0qOiBhcFb4xBRr8HuhQ76OKINx7M0di74bas
	 VTuDr4jfZzBwig10Ea9Gh8OWYaU/cqNWK5LMKUS3ESNamnnZsCBVV+YsS7rFBOuGCC
	 bskzD9+L1wh4qGLGIURf8TohwonTUXKcaOKnYL7AsB/K6IpljDqMWFvH2AueVW7UVz
	 pva+dRVNAsVis3NymeQnhZEggApIpDzT6oZrfAOdkn9SaMLM3xRggnrHS5jFKb5e/F
	 gj8eGBj0l2+hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C186CF58F4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682255362.26728.2946046601764648422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f535f4554a33b8be95b7fc955894de751cff663e8041d25b86fa668a02e53a11
Date: Fri, 20 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726822553
