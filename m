Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38691201017
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744722594; cv=none; b=S57fpt6dLYRtn+YZeuVNeAtpN/VSMybPlAGaCfoD3Y0Sl2slvw/+S1wuStw60AaLkDhAdHfFgOSwWZ2Z4Zb1PebOgWjdQspb5JJKE7l3JLFezb3ZCKtADUop7So8uPPzkcumyjPa6Km19zO3B8nlqpdg2tY2tlp+HMUEPzq1Y7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744722594; c=relaxed/simple;
	bh=0V8ZkZxfaD/2D6W6nmBIurPWtYxUrE8+x0o09nerPSE=;
	h=To:Subject:From:Message-Id:Date; b=ppYQ96D1UeozunmbW0Zy4QWqKyF81TgUoI/iX61y9bcLS75YuOZsaPkpsYULcNkwDFBPZf7euVBNaEW52u5Ab0axQgWQEG+fVoj2pLGQ/g3PkGFpKybdLTReTq07c1JGkrO3CJ06poCM0uex3tpKxek61C7GzRZ9TmsJHJYPf5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xa9xTeBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xa9xTeBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F0BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744722593;
	bh=0V8ZkZxfaD/2D6W6nmBIurPWtYxUrE8+x0o09nerPSE=;
	h=To:Subject:From:Date:From;
	b=Xa9xTeBfv5Rx9YbFlduiF8apDiBM0ZA9BJAQi7GzJ6lJqjhpYuG8VY53oMFN74dMI
	 W3Y2yMPEo0KMiTvZJVkD8qyeHQfa8UasIshlcd0cwZN7qKkZ5Iyq3luXiDauK1Eq0J
	 F9VzuNLjz9lHKWbG3F3JwW5CCSd8tZ8ZWZkUM1zrsyknnKKWzDgwup1n2NKX+HRBVA
	 oUWvpsTHq4524BYCKN1fOi1buR6pcH3V2D/aKV6VkJezZELzcVs+7VbQVOgtA7jely
	 39DPj1EA2jmbAEmbwhTQlNOMZYFeI78EcolH+FFAvKcAQrmwt/iJsoY4/qqsNLc18Y
	 EbHEZ8GxbO4xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9352EC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472259359.7842.8163974627056850188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c92cf259990ae608dd9c43720f28093cb1145e95ea2b4f85f63c8b99151a181c
Date: Tue, 15 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744722593
