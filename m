Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B41C1DE4E0
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753014595; cv=none; b=O4ZQ93mn4TipvF5Rmz/dzYlH08HhSFrrg2DIV6G8jLkVaWi+5EaAz0t3pV/aN7Nq0I87TodiSR3ckeg2yF0HJoG+66L4oGWcBDzx8fcWuYjSVVz+h4jjES1EvVLBjEvJ2mKaaLDGG43LDiwHTkeAkwBE/Kh3SvG9WhGQu479Dzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753014595; c=relaxed/simple;
	bh=mjEt5iE16avbYRiOHw7estw3Okx0Gc+sjPRoD9uSOeE=;
	h=To:Subject:From:Message-Id:Date; b=YHVo9XIwuI3Zet14gbBl+RNeq1Sh4zRwU337dhn7LPIFRRoDYkcYO1EWc30uHiIY7iGqXoU3giZ5Y/cs/DYxxGvhMhXtJu0TEqeGnqW88XQAYjZzl03sdkO67ACa0EArwto0Wttp7Rehu/1hw/gDePY0O1K4ryGYJXaluMprZis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqU0J2vz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqU0J2vz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0F7C4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753014593;
	bh=mjEt5iE16avbYRiOHw7estw3Okx0Gc+sjPRoD9uSOeE=;
	h=To:Subject:From:Date:From;
	b=fqU0J2vzMAND+AvAIpQpDBm0g79wheMWEcgOjImtwCCYZB1RmOZe+R/8ZrBiFMHKj
	 X4olw/egBsZIABPawjZUgtSs2S505fRTttG+rLLG3jfMqyPxEfRb50thPCRqKD1vJU
	 5kgEq/YRVkB8lawegyvBBxlqXMXcfEruSmEA6DFjlGAD45Llw80GwcoXTBx5kX+1jO
	 2Fzx4KmTK0KuHRJOE1QxCcikizqdKv+sDzqfMHOLQfYJGbIMl7WW5fLElm/3VodkvX
	 RsUkaxlRlnZpZnWrXAxU4qnnGAjljL1j/Q1OR7ubbS705DK7WSEBKCs+25tzAnhnTM
	 QuEC8c4wv/j8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B5FC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301459358.16415.5533643064082162073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dda54239963031ea2f8a5fd8d66c9a4ca7ac44b36128497593b6522efd0ba77
Date: Sun, 20 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753014593
