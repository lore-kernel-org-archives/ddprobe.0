Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1374672627
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764819174; cv=none; b=sOzQnH4emQzxx2qf/CZi1VTSKuRuYYJcXRd9/DO+PBrQvO8tC7saWzaMD8AW/Wy//PoC7Tckn7xUpR10q2YwzDegDdY1xsDvhNhXa+EZjORZwLepl5gx443QWTMIwLXh5eBQffTIPHeG8aVojTM8vdgYj8ErIL+Rovvq0ZKUg8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764819174; c=relaxed/simple;
	bh=XnY6/aW2+Zwh9UZfUbHUm060ghUamJ4mrxPqqAoxvGE=;
	h=To:Subject:From:Message-Id:Date; b=JGJ7BFcHgPxLjjC1IrK8Z1OlcSTk6asStPR3cxlxyVTYULomuFuSunzuq0xtqG8tiamUZio2iSfT7WmkJ1K/eHOXehnxatD9HXCmYv6rTHPZl5UorUg1QB0+1tpOgR6OnNC15VNXBY3uyIfiiRzJeF93xCl18zGDoHFwbAEtFag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgFDz4bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgFDz4bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6A6C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764819173;
	bh=XnY6/aW2+Zwh9UZfUbHUm060ghUamJ4mrxPqqAoxvGE=;
	h=To:Subject:From:Date:From;
	b=NgFDz4bbC8JmwSqLciAuWMU+Ise/mAoAO3+60k1kF38uWOxpNGjHB4l7eVYUAFYCz
	 QWDOSSISTWfmRxsAAK2AZz6b4fXmkImyfkQTWwnD3HaLk60ga/MD4rPtjtO9UtSOvB
	 nEtZOdtAYmOC6yZqw6auen5Tk2AM/T7LcQvSwUckZ1lz7WrCWW5RuZyRWCyceMGQ4r
	 gkESLqtAyg9Xppur1lsIUHWD9Rgd96UoEEJj+kLsri6ak05Ug9Q7wuaJw14w4yu/2P
	 EwYaLBxOImDJU3AGrTtw39CV9JHfnVAAGt9uu8vAdURTQ7xI012NqLb+wE6z1Fd3Vn
	 +sIvf/0YejKRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9888ED1CDC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481917358.7440.3568404101718725319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0179a7f08618a1b173da8f295b56be4ad714424aff552698dd86267e8bcda2
Date: Thu, 04 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764819173
