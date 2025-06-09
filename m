Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017D08F40
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749508794; cv=none; b=LNCqURoX3asnMo1ww6N90yftMyun2cjdc0fE2rD7B20aoeR7+5kjV4CXIGLvj41bH1jeBj81bC6QZZo2SqEPjvRV3OentcV41rjV5jOajxOiik61NbFV6wgfU6xJntBRD+jdH1CIr0+ajPiO7WjdmHgveGq92RWsW3zJCkCCVEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749508794; c=relaxed/simple;
	bh=ebHiq3FG2nuxZ8g1jSrcsTd8BYQAlKJn2KTeWaeqQhQ=;
	h=To:Subject:From:Message-Id:Date; b=iiDTOoJ7vySVjvQ//nkjAGQKxjswhdKKlWqtxH1oYCfmTZM1tPXEN0cqt50Z8rh9/PYFnq/8xLmKdIJ4i11uCJqNUgscofmx2ugvOs58RzsT0yb1ncvaDz8Z7nY/OY55eFikTmRkCDcj+twVogr1V1HmVbU9dwrma8mpLucr24g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFoskI1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFoskI1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6F5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749508793;
	bh=ebHiq3FG2nuxZ8g1jSrcsTd8BYQAlKJn2KTeWaeqQhQ=;
	h=To:Subject:From:Date:From;
	b=RFoskI1n4WJtwFMNt4UmrzhAiupliFYhNqtqgPBVwjBp8oSVs90zwV78M2E0b+XQH
	 jWSoOJGZyCjWNDEjgX4wTp47u6zJ+0Hin7iJz5wVjoYdnvB/bIvYxgHivyJbBH6ufd
	 2BBZ9Z9GnjpaWLz6FpJGjhYHhbsBxYXpXKvRXEn5vwogvBCMuhk8iAIl08LBbUYHUP
	 BTuZ+0Ae6Pphhw4S5+MS3N8LNrwbyO0oLOe4NcqNWDZPuuz4G+ZCK/X0m/6PAKAM3o
	 3Et1qvo9M4h8PBokhWZzXu6NXvjbtq0X6bcHLDHGW5Mm6kERnDRPwJbed1mGRhz3zT
	 L7aQNgAFC+h+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE7C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950879357.22234.10070776090836046768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647b4e81f7639e71370499856051a04e0c87e372824b948dbabd0ed333c22d06
Date: Mon, 09 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749508793
