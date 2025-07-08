Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0FC5383
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751938194; cv=none; b=KzjCBG/nzLWm74yeK9/+foH3/0a6/3PyS6EnXn95caKS2zQqYUR+u8Hh7wG279ZfOvDKq0tJicpSVoZ+knuPqMwJbuKBaNr+OsGRXxuiMDDV9kqHKa6j51SG8CkjTCIGL5THqd/ZhLG1cvrTEk666QzgYpK/RUjzcoXfenr+Cio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751938194; c=relaxed/simple;
	bh=RSF7oVtt9NIU4aVbiHmOXJs9sIanqUo+OtDy8K/ZIck=;
	h=To:Subject:From:Message-Id:Date; b=EgEXRQ+qOkHlmF6A9dMkMTtFZo3CKBwleV0QFlvfr9z6xlSPTbyTeSCeqGsd2uFfsJ7CkzxCEQdNzgAJ0hLY2U8UxmcH9UjkMGtG0c5IWXxc5RhgANGgqekUx46bXDtlnQvzdyZSFjkBVK/S4q5kmQDb20hrA90rveWX+92NZIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLkmYjMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLkmYjMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BF3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751938193;
	bh=RSF7oVtt9NIU4aVbiHmOXJs9sIanqUo+OtDy8K/ZIck=;
	h=To:Subject:From:Date:From;
	b=iLkmYjMi5gH5lAAk5hiOYtPUociIoYyN6tNJQnhGCcP8bFIxHxHqex7+sTRG0eaRq
	 +nz6ixDD2tAzCeYxlAzxNVWBgbAGQntv/O5PMnZQDjq4KbOXLg0m/PJuhGKXZ5IjKK
	 slxtEjbqw2cVRTFIySZV/qkKp0aV6aRBm5iWjap4wM4PdLCSGU4JGvauLX5HxkFBwX
	 zbJDSpqoj0s9T2hwtDcmvV925B+ok7VZi9kQdBzctBPFRWlX+YRjtfgGJ8Pw11koXU
	 BLv1dVrbAmuafE3O19CsTQNi9DIqVzai9Mq+xTXO57InK5+3v4/pJgQxB0mdQw0oib
	 umj+3HPEZrugg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92587C71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193819357.23964.11076782853948574265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28358a5553bd385a173aff671414d6617348a0a9745c88095093008d9097425
Date: Tue, 08 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751938193
