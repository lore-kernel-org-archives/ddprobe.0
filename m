Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3FC1FAA
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737518154; cv=none; b=mU4brUQhG96hg0nZNQlLryPyaFv0DqTOs5Jv55wfms3ZC0PJWIISsals5fZ6GkegogLwLHwxlRajfjxIklWhruawlr8tekRt9EA7sbj0p5EWOfwhI6NbpaC8/n/QeLNUJd8eUeoXTkM0V7xDNm7b9JP5WwoYWh4/Jf093qto5oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737518154; c=relaxed/simple;
	bh=FNRL6bLLBEeOsF+isatDv1ScH8hW2IuE8FffSKNb6gQ=;
	h=To:Subject:From:Message-Id:Date; b=DUk9d/xBCeAyEeeYTcLkncTQ/GeIyoJAqNpe9obNxq/w6qkGY3JaxmAdc43OWYlqnaWcd0MB/3MEscYrjc2Hc++1XfXaULJnaRmIEKowK8+8saYedFXOSDp9sNcG4VMY0uTbAHP4rcjy/xE412pJR7MYoXr45lC9NS7D9t623D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPvCF1uo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPvCF1uo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC93BC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737518153;
	bh=FNRL6bLLBEeOsF+isatDv1ScH8hW2IuE8FffSKNb6gQ=;
	h=To:Subject:From:Date:From;
	b=FPvCF1uol5XFjhtawqpc2z93r36tGZjreyIP5ARBv9wR6tRwdBnuEy/4mS+Zzcki7
	 0RLlXBp1Njv/Y2XCbgbqvKQ821Rq8GvNgPrwhZh5m9NhE0+lT228DaICvntEpj9XJx
	 E2Y4JJRS05RnuzZm9sMEG3mxTgbQGMIOvDluJln/Rf5t2/6BgHZH/kAVd4Ke5aX3Hu
	 HtsAc8v3ADZIv7kJLwTk9K3lw0SkPBY74olocz+0jIYeHHUWs207qoLy56BznubuyC
	 x2KcdLmOQNV+GrTuh5d83ALyAkIYJAhtLQKkPEea6BqqbNJ/5Z5PEgbD+ktrPL+5Gl
	 NxNYlmDziN3QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A35C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173751815359.6943.16172469540404612057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4f0ebbc7e38875c188b9cb90f1dd581aa8ff22a058ecfd723c4393e8ad3c40
Date: Wed, 22 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737518153
