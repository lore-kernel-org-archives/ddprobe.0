Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7BC13C3F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742823594; cv=none; b=A9t3u/u4RsArxWR+iudGqbp6sobs4lBXsMtHVR5FT5dGba+9zwAo0cQKKypVrVnEX85r4jh3t7i/C+Ws9iep25+f/Hw9NMxWJAvnGp1m1thYLQpTeYSjph8WFWmAq87V8DVBGHKtBuDYSJbtsf3sf66zy2s9PNsP18Gif3/2rFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742823594; c=relaxed/simple;
	bh=XaNOkvCyA1ilUxWV6C6usRd9WuhNX+z+0xPCklCN2fk=;
	h=To:Subject:From:Message-Id:Date; b=ZLAceTmNkoKn7r93nOeVGCNIWRgPT23zDR3tRNemKWTNrc4/QlOXfSYY/ijke7VZkd9ul0Kkpzum7QN7K2w/BD9Uti6qdXskKYFkgU/tWHtAjxcpfdOAjychehquYvvaPXICuKJimy2kFx4dzEA3gC/Xp3ZdNvoHETQUYpZxRHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOpQHA3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOpQHA3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A236BC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742823593;
	bh=XaNOkvCyA1ilUxWV6C6usRd9WuhNX+z+0xPCklCN2fk=;
	h=To:Subject:From:Date:From;
	b=jOpQHA3pYJhVIuUTpjS3XdOv1oZVdzZoMnT7OatLzbW1xAa3cozpkB6JNbf/Zw731
	 ZpzkjVEq+SnZPZxPzTU5CWGMBzSoqpPCm/9k/w42wl4m50V0BxpRKNwIuWTFRGS/s8
	 7J1YITUAHVeHiGpBFZiHKTNyiTDojXMpE96E0harUvorkzuNvpPGemZUs8KtAwiho5
	 XmtXAJEVMKF9XEviePGUGrh7gtlqawXHtOjrNbW4d/BuPIclfjlTnne8S3ySjP+MKH
	 TYQPYx6X8qt89Ami8/9aigPXaw2iDkIs9BnMgW5Po/QIE5ofYe5WoYuGxI9V9vibWu
	 nS02cQVuIfImw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CAAC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174282359358.14557.15395784925842412851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc9852f03917908b56d90e9076c144ed368f45566893dafe07fbd2a8bc8de01
Date: Mon, 24 Mar 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742823593
