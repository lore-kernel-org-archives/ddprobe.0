Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537B957C70B
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789064434; cv=none; b=aGxUTfnKX+TPMK2bAgaasG8RMaeM/ZwRJSBaRRB1Rxtt9Gd8oUbh6Q53+H9S8/dupMb8uJCy9+2LtCn60BP0qRXAiDqOUDBh4jNDASzTProV+p+D1DuGw6pzqN7EoNF5cUOqGEdtEqFUBup54FR6/bq8HC12eBewZ5SGt3q4afg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789064434; c=relaxed/simple;
	bh=py6KtUlbiZBgEYQ+1DGcnjbLzTKwaa+2K2SD3eYZfhU=;
	h=To:Subject:From:Message-Id:Date; b=hPWJDbkEZFwmiJjFiu2rmrZTMruuNdrTGtB37j4zI5ZlJKv7uuziAatpzVXPXATiOLYNTHXnwqSQjQrRrGxv8P3xfC3lVKG6NY+BVcm+WTWOqTPojeZ4bJR0Bh1qQLL6lQ0A+rgihHneCO27m78Ls67505DXQykTccvIDS318ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuawWYAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuawWYAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FDDC2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789064433;
	bh=py6KtUlbiZBgEYQ+1DGcnjbLzTKwaa+2K2SD3eYZfhU=;
	h=To:Subject:From:Date:From;
	b=KuawWYAr8Ox/7M7iPpyQ5Ml3ZsF6Af54RpT2o0LIk2REtB+SFv4KvGGgVcWgtOP9e
	 4KdOpIYRjsfN9+qgMXv//L73QU74i+P6yVse6P++8EK0j7DxJ/H1UMY/Uzv//H89cu
	 dyp6PAL2uosQr2+aiZmhZo8AaxF+etF4dgZ8EWekXb18nv+5qDgrZa0XrStvFM004H
	 lihCghZlEsVqRU5OVilvSDEAL3g+KauCv60is70AylmjTAcmRkOiBCPrQwHo35dquL
	 SrLOcJ1S/aJPzrmTweG2ABK4idD8v6jxFI7OeT0gdku2qV+CIIV3x6EkZPZ2BeFuqv
	 jSDaduj4TdIVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB222C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906443369.14105.14493285357060381307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cde75273ef223e541767b006c2e7ffef2fe35b773d3f669bdc4a52b12e65746
Date: Thu, 10 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789064433
