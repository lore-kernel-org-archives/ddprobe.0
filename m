Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9E4218AB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748385594; cv=none; b=rXsvjHsYwoxxd+lgIkfcdQGmM/xCCioXlY+4FGWeUTI9lvpU1uHUUj2srKsvv/AmdYxSZpA04AjeyuMYCSO1WNxbKZMSZtYx6o1/M+0ZOvEdapGu7/QFXhWNqcv9BaoNg83Z7+7xfBnqNx4jAgXQ4GJ1GvwqGgOU50JyH8yn+as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748385594; c=relaxed/simple;
	bh=rO8ElnszOxqMbzVIbSlfTXlkv7sIgT4lCo+SlI0oRAg=;
	h=To:Subject:From:Message-Id:Date; b=mb1dobLw5ERfaP2pMFVtki9S7HvwQkjG/nTV9OaSjdii4zxTyAP+nzysAJkciu7or4cxxRp1MW3yZDYMuYP8okRM344iu1MFMIVZzQir0etlxlnTV0609zBl3NRSZpNRt3/3j3bbRWUQYAr4dG6ee8ncYZbcRgVzOlqOTxTi9ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqAzqlgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqAzqlgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1752C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748385593;
	bh=rO8ElnszOxqMbzVIbSlfTXlkv7sIgT4lCo+SlI0oRAg=;
	h=To:Subject:From:Date:From;
	b=jqAzqlgYzD/x6q5E7KZcgOc0tiWMkmQm5Hif0Sfnd5geSR5ZLdcFFUqN7+QN1dGP1
	 tLsCKyFHJe6BzrQKR9Zz3zhpVsFkqJSQ6cpzBHeyk5bbZepueWrEpiAO0slxLtrk0l
	 IjGr77+srIfOHUfOxFraUjNTgMQGYdWjSh4Y2a80NFcSLvUt1b2fHUNk6ejv5FEytc
	 uPR4LOEZgaDpRGLpJB7aZQEQ6J0V8mMZ33DzDRub9dYXAK9TXZYwkHsWH8h0IwW1uI
	 5XnCeWTsE8WgeOti6sk1y48DrUoPyxA244/80V11M61hjkFYRYejJ3pG+Uw5OOxF7R
	 A5H6iPHVzt67A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E0C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838559357.6335.16792126369688511381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d03fb3169c0e9fdb98ea2ca073fb429839fe40ffa36b5875da0be520dc81d0
Date: Tue, 27 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748385593
