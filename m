Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E455235
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712117297; cv=none; b=dPZnhM9VY/j2FjMoZ2aAyaRpwp9Q6ECPzwqQcEL3ToH6CkM1AUxJBXzARsCYL8tLs5KNZMVC3SUdxBJuToImPhY97Wrepqv2B9VG4Vs/XwIBPL6LEbZ7YDdDxkRG9uGqG6mm8H4lbT/B7J+nWklb1NnwPhhkgnyBGtpzNSeDMr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712117297; c=relaxed/simple;
	bh=yw2n+dwnUGvrijqit23lI1yHIronpZ2VTTAOJx89Xyc=;
	h=To:Subject:From:Message-Id:Date; b=jAARJJTfr567PidxKrO9UjQNn8ukT+vmaa1ID6CqGKMr92O6o+ntWfnBnd4kH6D3dzQkhtDlDfZM2jDjsw3KAoQ6KOucTpUcPeB2iVN4gDW8bb4hsnbY96jB+g5tarBvI1XIC26KPsUS7JwwCiOXvLDYYELhlMGC2wz71bkpalQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrKS1EQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrKS1EQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77FFEC433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712117296;
	bh=yw2n+dwnUGvrijqit23lI1yHIronpZ2VTTAOJx89Xyc=;
	h=To:Subject:From:Date:From;
	b=ZrKS1EQ5YGyN4ksP/fm07tjFOuZ5AhkRe6ar79lJ1HnEr4nyvrbTW/skN/odNUd9f
	 zKV6q+kxEgakLUxKNR9XxQOwwBhakNY/Ist+QgNlOfZe1NJYCKMusMX0GV+Xg5TJno
	 lzE5XqJ6XjhTLnP5wl0l0S7Zzdv0oubEBRpiQnVGMCeYLCniqgC4dQt6/tupJhA8N9
	 dh2dnRHWf5Kt9wj1lxnZrFHrDGZxPK6I6PyucRMqkANJZpPItaok6V89amFwjR3Wyy
	 2NPvoUMbkzdxVT3iErYEELnJZ3tQqt62ywG0Jvn7yZm507+WiDRHYNI0ISeRCJQP/H
	 W2LyphBfX8hew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67648CD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171211729637.26556.12548279263731136035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054b30ed8e2823493252a75fd3c9b42b48ce2cbe0bf947697d1c8c8aef1907aa
Date: Wed, 03 Apr 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712117296
