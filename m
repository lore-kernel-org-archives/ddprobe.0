Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE0B1ADFFB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747149594; cv=none; b=e78UIawh6trAYJD2By7uSG1ktwGeJHtGBjpv0l83vyM5PkdeAGWVQykZVAPxdj0Tk9Wbjfp3L8tmKFsiDUkbSZt0TPWHkULlWDZYDRFzk2zzLWO3PAlKNZVGZnyyHrxiUwnVx6JqvmpwP2tufGp0gT87rNmXILJRWzlGMeW1GIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747149594; c=relaxed/simple;
	bh=0mZ+jGGN2Q38RxaOViMS1vh5xrAEd8VL2PzWvZsc7s8=;
	h=To:Subject:From:Message-Id:Date; b=JWst7siYtQhYNLf90Ub+ymLBBsKPsHFzWcZ1crOwCDQ7E4m3HI9QPpbIalNU2mobdoRT1rZy6oFcdSYZ+s5Eqo0QDmWQMjK9FwK6F4hyDnZpulF6nol2VrCSazf0/jz3J0RVGRWy50oIA1NeE6CT+CXW5LtQJXZu+galdzAXjeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElJDIutu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElJDIutu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DEEC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747149593;
	bh=0mZ+jGGN2Q38RxaOViMS1vh5xrAEd8VL2PzWvZsc7s8=;
	h=To:Subject:From:Date:From;
	b=ElJDIutu55V6DHgpcqS1ISBQGTbv74MUL9HiwEY3QFVsQ4RfnZRIvb9EI8vlhZrwO
	 4mzfyKQwirn0FOI4m9tncBa/G1G2idcqai0cH8b6iPwcP+RUuykqwwpGevVVrgwp8N
	 UCG1nHvDWPza0BVNxfLYSngfJB8qY/jZ0wJAGfHkjJWhZoKCFkMrTVTkGMFAfCAfa+
	 vFSTGwHdVsujbkdcOKXfuvdA0NsCo7tRCslftZG90Dr55GOOTKhVSm5MzQR1ZplIcw
	 bY9WaOQ1WxOnTqjMsBTz9wsTO3QXOeW/v8iB2TL3OOBFYzl8O6i+jPAAM25yXqMMSf
	 wn8xu6RqyjFig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CCAC3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714959360.25801.1155289877410855626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c02aa92fdbbbfbea3c891685b744c21d979c7ea52f08097cbd1cf25bba137fb
Date: Tue, 13 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747149593
