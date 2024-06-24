Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6791D646
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719189143; cv=none; b=lb2pNDkMaJGNKJJywY8zkpnAodGknjWSGgc9i5KmFPxJWVnHb5mkCewVucMGTJy3AewvAVNTqAwfh5geYbZUty2ewKnp1wP0isdLEz0HCgVxDKqHn6cw7jmevnV8babxQwrNZOd6zS7shyf67Zsb7yo1wISdDj0y38xMx0fcpCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719189143; c=relaxed/simple;
	bh=CdqAZ9tZrohEMZsVW5+DJgreiw/VwaK+5MO6fWmCmj4=;
	h=To:Subject:From:Message-Id:Date; b=DgK5DSNES9xsCWrOB9Cg5KwpjvRkNv3H+pp6NQApVYEjoeVMyPoboIP/x5d+xtOxM+S8t/jX7i0rBrsQbqYHAO6HkX5My0fX5em5BQkhW/JdsWpkeP/GTcJFTKtWoUlKQSSq/ivjpXsdc6jfen3mOavKyyTIk5fyYKMcFkAl8Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aynEp9/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aynEp9/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6910C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719189142;
	bh=CdqAZ9tZrohEMZsVW5+DJgreiw/VwaK+5MO6fWmCmj4=;
	h=To:Subject:From:Date:From;
	b=aynEp9/w2ISTiowRsi1hSnIoDYACbvYOBAXgtw7vEjDU3+hGOQ1pOmaKXqkjGbkop
	 80WQSe1eGzP48AvFafoS6+pyRSYRVWcTleQwAUcuKeu9hwvGB2lwj1qA6ZYx5TFaG/
	 0YgRoXMAv7bWvAZwkiauzWeMDNHJMSYzq9MA8F+J2LBUkZEvJap55PPJx5YP9JcNdg
	 dD9g1fifoU8PduyA1I0SH34nmYf/kSk5HsnOoe2NLU8mk4DyOa/8FaFVzuiWycWFe8
	 0bbsLAa1+rIoiqviT4Uf7LsEy9dfTEunekh8pKhaXMsjkTqhlsEDyQccz2HGMYyIBZ
	 Netldc3GXPQWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EF1C2BBCA
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171918914276.9363.6909852016632672602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2891df3b70ce737904a1f80a042e1beee77ec42752b800c4861218a922d684d8
Date: Mon, 24 Jun 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719189142
