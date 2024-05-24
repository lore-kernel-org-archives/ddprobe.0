Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEF939FD4
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716573803; cv=none; b=V0lc0BftGoCCkCIwOuppv4D7dAf99OwTUzP0jMMHcjBgGoPuVtr2W8stadMVXPFudbz7yfUR5UrOcOM2H9Q6pxpqfQiA8rJMYlmtS8HTyjuzhaBXQX5WXVW+9DK0AqUdMWUmTeqmdZ0Jr320SbPu7t2eK4hZc/MUcT9Qt1lVQzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716573803; c=relaxed/simple;
	bh=msoEvTovSs8dquiRmuZS/PvmveAjswY9KK904cG0ZD4=;
	h=To:Subject:From:Message-Id:Date; b=lEFGWTexWwDm9wFrqeGXMx9TEmt4PNl4aFBUkUgDx2j0y4zY2YJEIZJ/6CAuFDTgfw17tQkqP7+53Eex2lwwPzQX+SslU3gq8JF0Ooo4FB1B7Wo/Ul6GRtR+su5FGKcRSNiUfsc9wuuujqp/OpjGcvwVxE7yJLAQgXTXhe2+iVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lT4DfDpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lT4DfDpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE55BC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716573802;
	bh=msoEvTovSs8dquiRmuZS/PvmveAjswY9KK904cG0ZD4=;
	h=To:Subject:From:Date:From;
	b=lT4DfDpv+eQKJdxk0ppJTBmHTyz4qAH4Uk8GbmPdmLjcjIukOvLz9zoRZRuhUGNmM
	 vpPSlJkHaNAwNXp44k1S6aCbL1WcgYPpioZi+YGLeG5TXafbOoaAw9dTAVfYFA8oC7
	 aAopwKVc9o9R2wJiZimBJi4zukkaU903368lqesTl9ERkyD0Xd5FzJFItqA1C2iOXY
	 U467xzT1Ma6zX7GfHLJ/Hvj5kz+iNQi7ZCCv/APch44//Jm6bkMWnB9MIQIQpPdPgx
	 0WErXK7K5s+wDwfmxVZc/f5MkBY8GNfIFyb8wnFZUJ/bHRMlJyT6jWYrHVa4P5vn5f
	 CwiZSa8Od6QUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B6CC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171657380276.31277.17410143411936838723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d773df604076352bfa0c1b1505f0d7a9bd33f8298517888baaf847f77284f51e
Date: Fri, 24 May 2024 18:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716573802
