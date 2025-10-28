Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0DAB2877F6
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761630594; cv=none; b=A43m6cSTaEF7Y5JPY5tQRtyym6ZyTdDNCbV0zQk0ZZq8/RFJq1vfSc9Qzfytzm2L89nZj/kSfwM9OcCEV6tBOe7MYiwl/N0GG6vJKg564OVMkVgaZYSGYgh3WtjgBGFJPULQru36LmT1vTAinkMLuaXIQStQlEN9sY6Sfp6zZW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761630594; c=relaxed/simple;
	bh=PwA4IHh2hSjh9j3PsW762yL3U7IOS62E7dNn6tAPAUI=;
	h=To:Subject:From:Message-Id:Date; b=H7XOrtO9n0qDhCKsMkrfNgWaWV2QXMCT4RzHCUIKmNOGKWUWoBSwXEhiFGzbbGyHm66gMF8hJchtaaMMNzeNH7H4XTqPOj3Os3VX7GAU2bRZIASdn5Sda/03dYd/EaEzb4R7Bx1xxQ9bIs957oDCgEbEj5GhvIieZrRdZ2K4x/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcRCZa9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcRCZa9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A8AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761630593;
	bh=PwA4IHh2hSjh9j3PsW762yL3U7IOS62E7dNn6tAPAUI=;
	h=To:Subject:From:Date:From;
	b=BcRCZa9drE1Xb+Xd7XwHI2AxaGVD9TYMY+t3OiOYpe+S4kDgpkFTLYm9TqEgQjUtP
	 L9dAFZrD+vVGYCWOTgHAVFVYJMB27sCjNEt3MRV3RSL/dg3mmEeTYks0i4oozXhzTp
	 Ta1nyInJIEuTl+BZ6tFySprkmYW4jt5H2cgkm/7v1oglpCSuiz9X9eaVZmUt5Nv8lJ
	 kJCz29zimvzNheAJLZSrmd0LtstBul4+tTHPrhVHnDjD9Cvv3bA3KJ9nc8GwIDDykQ
	 O9be11s6BgKwqzGIdaGsE90shs/1g7f2jrpEsbAb4jqGOvNzmskdvgTODdkp7zQiZQ
	 OpKZV/oAKpa4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB5CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163059358.16992.11927134660045679675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896da30a4d4c7fb27e8e709198ed95621f3fecac6d9a028a537bd40180588b62
Date: Tue, 28 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761630593
