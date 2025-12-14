Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5D2E55A
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765738374; cv=none; b=CC6ZeO9vXAR1/PSdIbQa/WTYOTxRC2sVgAfaY0MQ/N68LJwkm8VMrSyr1w3+k487SZgJRLRiRSPadlr8kSyq0VxJm8QgGLE69QSQNJb+2vqmjTRny+pCAyPDfckp2LcLtR4V/FgExvrYp+wqAef2qOX+IU72qVlimpE6AD5tWcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765738374; c=relaxed/simple;
	bh=pPT44zKX3UZTIOXnGZYZ3eTaZetWM6DEusruE6M63Rg=;
	h=To:Subject:From:Message-Id:Date; b=Lo919pHc+sHj1vmg8RxbLvcOXz7+V20f1NutBmrfye9LJMC4N0vFqXXv05dyaHyTmpYb0RrZIh7yzGSpXoDoiwkXdkkvFN9W3OJDtj8g01VqnSVxaElsoqAvM19GDV8BuRxR963j9CYKD3+GzQEGRHmf7oBmqv86d7HAGyRgYKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GywmHVVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GywmHVVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2BDC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765738373;
	bh=pPT44zKX3UZTIOXnGZYZ3eTaZetWM6DEusruE6M63Rg=;
	h=To:Subject:From:Date:From;
	b=GywmHVVaQcA2+PvwZu65UDj24kHz+oUXqpJ0vTzAHfUq0Tz80OqHI0v6UGvqHwG1U
	 gr39uZhFr6QIxKmsWGo5SrZsnDgKcIgga9HjN8V6RywDLJIAWfAztAJ0YYTlLHfaoV
	 oYm9eQAHFcyau7M8QPgmfMW8H4lsrW+v5MpOJJm7TIY/cyBUekDzJX8mzNvduOiCJb
	 VHCvfl8jH3I1bWhXZMQ/Q7rqpZHMlxPkDCnAq/Y8OBgWfFJjbqF9JQJZJrn5UWHf0X
	 Nw+FPVxUD0da7Gdy++1fjpQokUmKjbq75D+tlCgMOmduAioWMeGNNsqKKrSikFhtIf
	 ddeeVDAohR3Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97889D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573837358.6482.11734065895846510538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b1f8f13be715513f1425f3ff215386f6befaf6494356832c65a79b463a3003
Date: Sun, 14 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765738373
