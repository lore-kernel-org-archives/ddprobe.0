Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2472730748F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750822794; cv=none; b=gAhwJ0Ic4Yq9zw8tk3s4kmWQVK0dQybeBEYluO7lC40l/s7rE8qdA/BYVRri/1pPbDgE1LMA0I3wsqXwWJpKgeFQmCQk4qCFVb06IuxhzIgZtuYVj/wP2ePGgctZPCbTBNu7BMRYpU8ZFuv63GVh6jUErP9/pUCgTyau45ziS9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750822794; c=relaxed/simple;
	bh=enfM0p6b2nqEA7zOPDN30+aMm2UxRNsGUKgu+JfflAQ=;
	h=To:Subject:From:Message-Id:Date; b=Ug4OhoGJjgURhH38MeV4OKjTmkQjVnIsz90bKP/hXpcEiUJfObqtXYQ3WMPXbTa/X6KtPlyuyQ4UovM25qASklY37yFot3WQKIRiJPPYCOJOQkXsQR9JIHJlCRT7xyl/3XhZGMDGUbeFVSVYUYrN64l0lI5VzPsE8gcKJxc9DFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVzVQaMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVzVQaMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6F3C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750822793;
	bh=enfM0p6b2nqEA7zOPDN30+aMm2UxRNsGUKgu+JfflAQ=;
	h=To:Subject:From:Date:From;
	b=LVzVQaMmjOuMIvNlYeF1jeW4RfubkZdQn55Wyb/dJFUCnSAYhMqPA0grAjNOpZlch
	 e6+8ot8pugcgg0LEJRk+vL6lmsWp8ZTbY1KyxHGQv3pYFnm2dN19uMvUsXmHEEWC0P
	 K/g4dVncCSrEGqVFpcaTjEmqg7Bk7RQQo3k6SIA9M86S2Qt+scwTq9pFLZG4WPzoDx
	 Wf7OcrPuNi/mx+WPzNlKeYBR/mPya4zKEpn866EysjmEZAthq+9iqHj26oorAGplyB
	 kCwMacWyTz9t1udaQZXW5ep6vokhUW2aEVoHhaE3EPGS5ugOXv2ML3ijKC8fJSzO0h
	 weLyFYJ1nyJrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A8FC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082279359.555.15261075455197698829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948c934bfc290e675a363bde771c01ba181901da17e01156931c59550f2282b3
Date: Wed, 25 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750822793
