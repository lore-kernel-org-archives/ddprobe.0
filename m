Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28739354AF5
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760819994; cv=none; b=Idh4dSYLCc1TYyWsUQmXQJ/fxcts9iSyFKtq1UriUUIY+45q9XOUL4gzVJzkmH8W8shQE7LB46EfsdQOt8rtwiGnhubxnFWVZqZKr3aew+OHbRDJTzg937+u4dPH9eGmqI4JLb8REqwswcaN2gBNZOOrg6wEjoIzEJ3xWPD+X4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760819994; c=relaxed/simple;
	bh=ae+ygs4v9LWNxOyHnMbUNMpEFZkkXsgtjESms7WdGy4=;
	h=To:Subject:From:Message-Id:Date; b=hP7Ye2SFiRjlEJVZflAiUJqUZQh/i7+RicYk1ECjhQ3tGlPDsqYcGrYi9wJ3P791vj8EoMox2IJohC8C2O57YnnZBXsiza5E4oKTju6OA54484QwoYfzksGj8dmh81NKijKTssx4zXfGmPLiiuVD5GXY4TvXcY3Phufg9mV2Nrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPQh1XzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPQh1XzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E12C4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760819993;
	bh=ae+ygs4v9LWNxOyHnMbUNMpEFZkkXsgtjESms7WdGy4=;
	h=To:Subject:From:Date:From;
	b=BPQh1XzHi9t1bOM+kNord4Cf5oH6YeB+vclu9pyAFejqX4bmwyAGsjoT0nqzxish8
	 2eRKyL0/KdedeKclYuVgoHZKOHEEZoqLwXP06td/OxjmBqFb5LdVuAunKgYgZ8YwkT
	 xG5Zt25FS/gealLncy/WrtUwRKEpVqBqH3qyLBdOryQHuNBOMzMDe+rzTLoLrIYin8
	 sshtVDab4QhuI959qAT8mVuY95yVrQPe/VMEMg5XFAWn8Xs95YAsBTODtK/JMUe8Pb
	 RTd0x49SZSOQyF4ObqF1QRLBtZWTwJYA5Hn35Bn6mXWrAMSKrIYhvw4oiKCyaMf3lo
	 BX4QOLsiXHq0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF7FCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081999358.18652.10597466212071541527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9c3c77f4e4cf0a0b45229924c3147e69bd7840ac6fdd66ea96c2e004dc3a8d
Date: Sat, 18 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760819993
