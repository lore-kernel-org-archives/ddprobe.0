Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298823B1AB
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761976194; cv=none; b=hij3cHr9SpZx4/UgI8aOGskKeH+cEB2GwyBiSrG0y3fVuT4ilQNLWQsm8W7vPXNQ5kroiVEgMg/eHCdN+WsSt/MQ2ZZ4lbvjh6axasP2fJcA42kRwJgz5wuQaB+oa1gfCDBAB1xGDYaz9kCCYQUzINuVFnyElGBiGXlESSW/GvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761976194; c=relaxed/simple;
	bh=AXAVQWi0OhaidugNnfNWd1XOsVz9xxPx6jWVTYZ+RjY=;
	h=To:Subject:From:Message-Id:Date; b=qV1nX8lSQc5D1vszBf/6QLgrMNmeYYu+HFLtHxyuRp/3ZnUFqCfZ6M8GP96pMxOOX7EFcuIkDABGJUSyr+xR4+ahY6yTIurQAh+XMQ61LYKc+8MQek7aYsC1aO0MzRjvxAVKPpk7K0Hcqca7XIrlW0Ffbs8/183DmnOYlLP672U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NByJ52Ho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NByJ52Ho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E69C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761976193;
	bh=AXAVQWi0OhaidugNnfNWd1XOsVz9xxPx6jWVTYZ+RjY=;
	h=To:Subject:From:Date:From;
	b=NByJ52Hoz2wS7hISRicnoZroMW0dUj9z/w4EwwWYHBzRg7KUVggBBlpNRE8X+z2So
	 IKT2TVSPLKLeLeEdjFYDqWiTMMnj/rbzRSfSC5KiaPNFPLh5IlJ2hhxET+3OMcFIRn
	 TVz87Jv7XhKF8LcbpgMakoY9xlGEWDC95wayWsffjY+v/QXSdvAMzUUSFgWtNRYGg7
	 0wkLJ3xPBPdZ6J7Ib0EXDPBbhYAWP13cGm/aKeU+TWu0vkWArwHjqOBO6GgV9VSTub
	 k8BbtRvME3IESMq6Ylu8LnUx7FifwPgDGQpa5HO2FbpDxYf2fEw9UyL31UkKX/aY4j
	 C0lTJYo543GYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96173CCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197619358.1051.2828192992993818357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb95821f91afb859cddb98c2669292f8269e0a9c7a3439a93b7c98e79af986a4
Date: Sat, 01 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761976193
