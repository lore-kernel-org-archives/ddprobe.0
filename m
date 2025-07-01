Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AF41B3937
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751348994; cv=none; b=IRfb6FbbzCiEuWvtt2y/lt3sxLrF8pIr1JVMap9DX7Kjc3Q/i7xmmfT9eaQSxMUB4utJ8BqqvXuA3YQkYuSL9UIjnYbkXSzb1DBSTDI4DfugfWmDEmnYoZcgis6C3O+eVMhXfOM7aR9am0wsBX26ArWcuOGOYWmr4PQRaEvahGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751348994; c=relaxed/simple;
	bh=/7LbmmbmHu4ZFZvNjl7CMrrt7rnC/1UK3xz5a3grd08=;
	h=To:Subject:From:Message-Id:Date; b=lu3WBPuApMEEehCM8ne7STYG6VclWgO6vrAqv/2W1oujl/TMiUN/AQRpx0umxLIWwo0dTjYfgvYABIA+eCz7Rymu/RfkwB/2vIiXS3zg7UfqENWen92qH1mLFWfvckwuwrZya1jFVQxKpEgorxd9oEpXqlR6kS8jUKVC7lhRuSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4V+JeIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4V+JeIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED64C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751348993;
	bh=/7LbmmbmHu4ZFZvNjl7CMrrt7rnC/1UK3xz5a3grd08=;
	h=To:Subject:From:Date:From;
	b=a4V+JeIgDAJuexXbCBRKN3jrHjqCT8auoDIyefPLpvgEaprIJPNiIEeWWSznX8IYW
	 ifrcMsrU/r2qfJD9Av3jQA1QKtXKCzFC7NiNSfQJIAMtwVBSRzmZ/UJVzdEF6j3WY0
	 1RmNptDBApYiOHtkswk7f2m7P01l04sD4YgBGa+nZxkNoeXid9kR0dBqQ8XmeBuDqK
	 tAWEF8D5yElztTtg6QJYtouX1eqtkVzU5J1dGhpEQN6A+s6WezbB7SHZjPM5DOMiw+
	 B8d+vr9vkQ7CNt7pXljkEppfs61ofh41OhckZDzr7N5cL2YT8uovOt4qHQUW6G9m5j
	 HvA0/lBUvVVLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903DEC8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134899358.9010.18436072394927611154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea69581219bd9e7a2312c68309ffb14112e10236c10fd8076ae6bd57910cd1cc
Date: Tue, 01 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751348993
