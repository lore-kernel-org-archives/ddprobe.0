Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20277471248
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787664035; cv=none; b=TLcyHujdWDbhRgHSxaY+UG0nH8mj6YhgJWjM3btNZ5ZXj3c19uKJly3cMwpHVe/UavzmzLVCmjEl9wT13S/V/dH/ctW+h3YX4HZ6rqieVetwAbJUprBudy9vAv+yhzE2F2X96h2V0Jr4OeAUrcRzxbxHOd9Mje2lVKP6dGyZIuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787664035; c=relaxed/simple;
	bh=neP5OXThEDFEqGto/t6ma5HhLJNMNTojhmR8Jmi3dOo=;
	h=To:Subject:From:Message-Id:Date; b=XyWWpZCN6VQ+NH+MHqnG79wjhD7YoY/BQB8GfKK5ckCXuDe9yqIIgGr6mMb+opfvUiBiu4RYFcrH2yuhbHEoyvdIRrItb7/6ySh037At4C5DZHNYXU1L0OVxmYXY3qfZNo5wdJdU5TbU6StLuQRW/EIgyI2b6uR6QTizSZOBhVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJIAukRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJIAukRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE904C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787664033;
	bh=neP5OXThEDFEqGto/t6ma5HhLJNMNTojhmR8Jmi3dOo=;
	h=To:Subject:From:Date:From;
	b=hJIAukRFnUOCUIW5EjSTP5D5eiyveviJE6WWT3TTSRJIhc8jzE+QqfYQYrCRn46R7
	 KKo++WqJOVCMSOMGkv0FQS2Vn0WlXEnxLkd1aeNsdGwcKraF9IWGG2UsBJJEKaBRFz
	 a2R+p56JAFyn99CNErfevgkyvcc6BIsm/k2rvu8B4Nelorq+bFC0a3nxFZZOaTkXwS
	 4YSE5+X+4RU72MZkbQ1N/8x2/QasH62Br6o9Ha9+nDMU58KkrYZHFiWH9h1bUh4xPp
	 +RqKRwp03lktuvTxwd/IGl0sAxZ2rhi4m6gBXeynbQXRo+r4m87ThuPVpVHKdqJjh3
	 3U5GOSxQSULzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFBBC61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766403369.7486.13620001535080902418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ad55627a8143cccad0a9f7cff2a61580cf1a73a70597da4c6ddd31335bbf56
Date: Tue, 25 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787664033
