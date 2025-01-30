Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B6C139B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738206954; cv=none; b=H7Sf81T64YSXGrWJWEk6VTWMJWsUAMsZYTN1111vdjTbRdk+Rxt80ht+sSwHmV+9c8CesclTY/NkHQWgtfAd1iZ4hfBz7GmB4nagx5pgmst7+E3v72QrN64Vqb7Gr0Wekni+4OIAk+9R3C+XrKxr9Kz9VQHno7qqSZy9blY6kek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738206954; c=relaxed/simple;
	bh=Pro9mxCZs55q35gjV5PK5XSs90xk82TTrPRkMMNcabU=;
	h=To:Subject:From:Message-Id:Date; b=pEUBi+QOyi0m9RYLNDVTx8/a5GOenR6fhHt4n+x47POCJQVqeeci0aBhTLyaZJCJWdK3ihtt2zMANLJaTLu1solY5r6BuYqbk2Dm2JnDUegl4Y4qJApT5K56HPjcCBTZqPfrrnOVM0VbrV47SWqSzkL6/Pa2d/ETrKJeZjZ0Yi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kM3j/3RN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kM3j/3RN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C766EC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738206953;
	bh=Pro9mxCZs55q35gjV5PK5XSs90xk82TTrPRkMMNcabU=;
	h=To:Subject:From:Date:From;
	b=kM3j/3RN5b/23dRZ2UAvGClkhVv3kW1lpiLBDdqGLYtkcyqZwY/SYb0jarwYSFDBY
	 XLP/snSWpNS82gpIVYfUz7b+bcwVP+eVpCYtd+IVs7YlmtNYYOwd0bMLWDXXYaUfgz
	 eui1l27HbxQ4+BxY+u3Tk3mzgMkWq1Uehbdgm2zaRZaDF4DSUPsgUzRzOl7s4qZgF1
	 uOQuHWC+JKusiOy+4Dr3U6/RlL6wnGNdjkOhfy++ijNF5J0jDF+JkjN9jYfCtMV/ig
	 ceQ0TDBfXjn5F/cHRIUNCNzsIJ20Gug65uYSABcPXla3gAu7i8nYY6YZD0UzKMKHox
	 b1A+xd4zkEY+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DDDC0218D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173820695368.16835.7484759280253782659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d8351a5848e72006f3f563650456f2077432ed2fc2293f542eebb493d24546
Date: Thu, 30 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738206953
