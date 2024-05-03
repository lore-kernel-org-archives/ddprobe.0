Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5998A15820E
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 18:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714759343; cv=none; b=j9w8DYNdHp8auDcKJ9a5GXIr1EZHxmkA4gGjXPJjnMA5FHDwW3nSuYGUguIkKaftZrn7E6kpIGwl2Uk2/6vqKxkq2lgKbtxklBYz/wFzQnnVrNfyNVYQkvzJHX6rq8pwRS7vI/2pWjyM1J9i3L5MlJ4qnoB1/6/8vrtsdIpChAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714759343; c=relaxed/simple;
	bh=ZgON+rFVG5k/Ne/2OLesCzaqCapMH9ElX6qvX06IYQk=;
	h=To:Subject:From:Message-Id:Date; b=tXJyYozRXqMrjyo1sDbVEZUKlFrMZKyr0VjcKoQsERL20XOfufjZfgURYq/zRMaCipmL3JEHHIq2bY18sVq4G9HmIUE4r/ugLzBn0b67ws0SHNjczyLhfbTTv/yNPyYy6j4QZaFnTTFdY6WIHGpguUeYoj//Hn7aGy6GQa7gWvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJTM76sO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJTM76sO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4D1C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714759342;
	bh=ZgON+rFVG5k/Ne/2OLesCzaqCapMH9ElX6qvX06IYQk=;
	h=To:Subject:From:Date:From;
	b=vJTM76sOzM3l6foEevAwmUZ5qgx9XseZcJY39Fllm80s5snKJtWKHC9TLC5Y+5XG2
	 RkrajgwDul61xsB/Y7OOJhtCZ6YVXsnA6/gny3CIA4IUbH47u2Ji5UWH3mR0jmmMhn
	 MtPDuedzx+cogcXA9+twGb8b6FKikicJpOZ6hON1gB6bR+mDK7tvqvYZaqAEj/XkJ5
	 tYhVrv6PtNBwYm9tvxv5hIIlfWMgc+95jEsgC8r3pZVFGz6tursQepzDb+v8RBGv+H
	 O/h7EcOe4TG7d0rMRv4wfgNgF6tjb4XSJR8FnSPwyizire4018VUKMUpk5VBhrc9dB
	 tUdFAhtC+4qtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9DC6C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 18:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171475934281.29699.8564050392941964482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5210d43da47ee17963f3b74e8a0aba7571c54bfcdf9bf500aaab057bdd77baaa
Date: Fri, 03 May 2024 18:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714759342
