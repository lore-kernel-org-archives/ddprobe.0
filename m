Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174B6298CC7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758092394; cv=none; b=cljP9k4GxSwZEzmQsobLrh9RJ16XVEbswOpO0ZNkEikxdcokt642/OxNFdMOjEvCHsGqz61LIUImXK5zYN7LXZ6TwpprGQIPsXQgAAMqRvfcozZ+OywKQ2/ilR78IrXXQn/jiW80jlD+IfhCIe8IQr3jXCiwfTJqQjMIS9SOmxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758092394; c=relaxed/simple;
	bh=mjk239Y43TAQ7e11x3XDwUhgqkFix8vDHkEWaqucgTA=;
	h=To:Subject:From:Message-Id:Date; b=dNJU4rVNUv0EQxyn6khwhtjSoDTzlDPeF/dX6LwfgR+/ugEpVeuYKpCz0gD+QtHgQvova1smGiDf9ppj9/1n/vKNuk+guhDDbCXsqU1dixCVDSYaRWvs69ONr4Lz2V+GDpmcboRuRERuoyY9D+wJHh8BcQOmIBeTFtzJgKJgsXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPvEWXou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPvEWXou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A250AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758092393;
	bh=mjk239Y43TAQ7e11x3XDwUhgqkFix8vDHkEWaqucgTA=;
	h=To:Subject:From:Date:From;
	b=IPvEWXou/thwF0UjK7dXXJfAyxlxZjXrUrMgBud+bPjyLlyTEYDrGLmgj3JAYg+xU
	 f1Lzm0qvSVESfANvPunzSO49w5GJSyTjU44ci7Up5SsmRoPvVV2cNzHRXyKkrM6gsv
	 Yydle0pKUFuAMcLPmUxwMg6MsFxPi5X6O8XzK9gLhx9vgvCbUuS1hLPTYECMLlp3wg
	 Mbk7tHcs5C+7IcZp+M/ErevA2qX02rbth7TcMQhsqHJDU/RJ8bI5nt1yJUIt7T77Cm
	 6/0OqToBG6A7jkiJ2lIr4oQLUi3GRS6X0wJ6VVTKDVLhUaCLJvgQd1MDukosbxFamb
	 PiATZERfVKrsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91835CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809239357.1708.3525501840669830460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8faf53e52e998165075144ce307b830362fdfadb083ceadc721cb502f4b7c5
Date: Wed, 17 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758092393
