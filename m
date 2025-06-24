Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E1127A12C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750758594; cv=none; b=dt6Ku1eI90tbA7/pXkGSjfkDZcOOmu2rvJgJ8UCOAP+K3XjPd+Z8p1acx3ZotC/ZCQd+NhsL1K2yOpfqOmh7LAjKTvkn8L7ffu3KmNKCgGGvb7dv7O1xzWH0dR24qtGtjWLuKRKUGYircI5OFaUa8+tHo7dFUGbruVLea5ysvOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750758594; c=relaxed/simple;
	bh=dysVhrEG8OEBUULUbJXjQ2eFc7DmdQEKm7wwAcAClJc=;
	h=To:Subject:From:Message-Id:Date; b=Wovp6zhFjep4CKgRZTRBwav16MJ7PHDr1NLZRFwe9A9viwdOZY9XqBoCXyQFD2AbFdyV7zAAAOE6grf4uxZA6hkbNthRt9Nf5C8H2WsM6Mz+ds3U2zDo/kRVMnS3uL8JJKjPJ0zJcMAv4IFZQo90dqPigrq29OF9D2QEvYF0Nbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxkjwBTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxkjwBTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CF5C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750758593;
	bh=dysVhrEG8OEBUULUbJXjQ2eFc7DmdQEKm7wwAcAClJc=;
	h=To:Subject:From:Date:From;
	b=TxkjwBTH0jp/2kSqDhmMtC0CTbnU9bBCv9S6KmvNITdX5qU5b37cbIvCiXVQFss/6
	 mywRmPRWk6wTvh9TvEvGBDuQ8hj+QgacGVyQoGvGFF0LewzaSp7YTcsyEsxLn8/eia
	 maj48dd6nKZ1G9zwI/nePoH/bOgaMaBeQbOT26Tx/rIdP38Qom+gCaTeRBxPqVJyu0
	 36OWWciMEkn7kHPML0jSzWSlqmBIS0lXSpgm4igp7oAB99Anf4YSXyn0ShUky1wJlU
	 QqZVOcWB+tc/8ehq8AV8qnlovnXR9mNUkiRooh57cwfNLtltKmoyY0jkZjq46jK8Ou
	 Jcc1g13l9f+6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F125C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075859357.11931.3458764285280248335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f2f015fd2521b91bc612ca522e11c2f9af9dddf51c758c25a73e5531013cd21
Date: Tue, 24 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750758593
