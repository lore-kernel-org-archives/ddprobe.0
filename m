Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8343AC0C7
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778147254; cv=none; b=WKeQMC9B7+++g82O4qqgS3I3ozlKzZfCe4TIokNJLvImcjVAUjc/0utAMUrJoIfg4xNUvxoSxeNxuBn2BbApk6H/Jzoylf4F1TCLapOaahI7kBsbNidO9J11vCQuZ2cL1FqfNDRwloxuWpGQnqrOeSNbjyCIIe4k1tAa8KGGXgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778147254; c=relaxed/simple;
	bh=xCxSoXRA6oLqrtiTSwTSwD/7TibP12IbWCu32AIdIGo=;
	h=To:Subject:From:Message-Id:Date; b=A7CxW2kj9M0E9Q2OJAkmZqmnaESNG4K89d6FD3K5DR94tK8hOnaC662OKMoMOGdGFBai5iUv6J5kahMSUTlkC49XELB+fVL2iSJ7qJu4lOfbnLaCQMzMJaIN4Kvk5u0A0jlfDphhvjerhugH/RCS8Kz/kx91Ds84OoiIwmg08+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PI+K8uda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PI+K8uda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA9FC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778147253;
	bh=xCxSoXRA6oLqrtiTSwTSwD/7TibP12IbWCu32AIdIGo=;
	h=To:Subject:From:Date:From;
	b=PI+K8udaDM0JXWaaWpaAPmdu4GUW9fDQtMZdFK0tr/7P/JL5OSgWRJrXTxIlRvXsH
	 A7y1NedgD+oflhrK8PBzOkn9LUJwfbfQgxR/daK0hZLtuChwYVKJgD7YCZ7n/Uy7oH
	 cQj1qYiPzQVrXxgYlp5a8RN7XlVbxFy3k4gjpFCovEl4VOoboguIF4HQS3tPovE2E+
	 PWXAlZ2ME0JGQ91hJkjvna2sZHhU5O+ogaOIUtNi6ugU+Cxkc5oy0tLGfH4TvRDu77
	 CsLYhPoo48gCZLEr8OQCtDQaXwMFT4mXCdzCrC89XhVZ9++Jw0Qp2TR5SzGSBfjhKa
	 MsEzp+faSO1kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB66ECD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814725369.22059.6764762570820910745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068a1748f3d7e33a8e89d2c58016e3f1883d5636a92efa5e53b1730b9d2c47ec
Date: Thu, 07 May 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778147253
