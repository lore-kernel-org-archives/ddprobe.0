Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2084B1D79BE
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756172394; cv=none; b=sasUJdJSyt8EMtr2SNo+uzc2upAQvBoRhuApiQWp6+K5PTddAjzswTgqxj6OBQjDNYqcszSnr6lt/qYEX8ywMxwYtPVXSmmfjK8fp8HN33caW7NAlpe+o+f4mmZ3x2Rzjq7zgVbGwb9jFHvwf+7cIx/JWluBj7ZHLAWY6pzT7gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756172394; c=relaxed/simple;
	bh=Jxe+lfnVh8OpUxDlZHCDp42kbgtwB5mCK1YbnIatSwI=;
	h=To:Subject:From:Message-Id:Date; b=TTivJqLKchLOe+Yj19QGtJkn6v448FWzsCcqCZkq66AE30xKALmCb4XB4qslqvi2galIbN8GJ1IeglEHTBB935EY04w185b/g7/xBPUuj4RKwVfFEyVUMHPXZ6wrZjo3XeerSM6g5ygemfr9JzmpvdqxNKRh4ZqSJlXCWbRMkT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obZGPdZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obZGPdZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA7CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756172393;
	bh=Jxe+lfnVh8OpUxDlZHCDp42kbgtwB5mCK1YbnIatSwI=;
	h=To:Subject:From:Date:From;
	b=obZGPdZN2NIy8bf83566z9qJw+GBa9CjlioxxH8QsWaO+KbxUFc6D0TzLeytAsvaV
	 gZZbWsv31WVAW2bWyOSF+5TsNRyXK6KN9PjjTmQ3/41Q816CLZTJq6qRheMV0FeYkP
	 /LG0/mPSCTk0jhhD7sOwNXmAXa+KJfilfbo/S8gaje7nu3MS7LGCl3iqXVjjMeFq5m
	 FWgHVVG86wWTLKsun5a0EsfoM4HgKHuK8c6lD7bNMee4uc/5s83cTNXgaCwCkbNYir
	 5s7nJmrf7pBy1tZoJKewy5I3dtEtV8lIgTmpDqXFbaDxQiCqjGxk9Hc1xIjJd1MxTH
	 xvChAl4UXdPVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E59CC8303F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617239357.8128.6863293166693422558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc21f351b10afd0a10be91b8dd9ef273428ad8c2e9bfffa75c2aee467c8cc8a
Date: Tue, 26 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756172393
