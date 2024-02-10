Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3AE63C
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707527297; cv=none; b=RZE2UT7ir8HqLCG2jqbVrSLDl4dBmQlHS7shRVIvpxJyVYhOBtw2XBy4RunwHbgHiIfSeRS8OAheN0GNuwqrwNRmb0YSc6RLHWdWTTcdWb0aMMxWGxsQRWmkVIzUJpndwmUHSlD7fybvwcS2XDJ1gJtNhkZFuF45GPTHn3K8WoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707527297; c=relaxed/simple;
	bh=9YjiBUNVVXkCuwMKt7l3Y3LsGgKjjaQCVVHOrDmaVEs=;
	h=To:Subject:From:Message-Id:Date; b=VGA5TjwHwcYgA+/Fxo1aSlcy4YxzxfCTCSn3yc6QxuffiunqQT175z6w7pRAEJm7YyJqf5MQ4QnrjgvAUKs/tMhlV28FppQFjTgvm5sqFA96J5YA5lPvnyl+l4+EWpxT+/Fef8E9uOSVr/y2vqeL12CjZWIL0FbZ2PDVALDAx6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZL64wwpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZL64wwpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C355C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707527296;
	bh=9YjiBUNVVXkCuwMKt7l3Y3LsGgKjjaQCVVHOrDmaVEs=;
	h=To:Subject:From:Date:From;
	b=ZL64wwpXkbgurDuOqnhz9rgyp5MGPfIwQ+ainjpswdiLfjixZAkJCy+uA1FLi3iff
	 qAkiUjD9qTSQMrL+eL4sJ/Nlx2EVHMIgkkiqnsEtHkFaP48OS2nJEIUo/jhZgm9KCW
	 Ajo+rwjLZobMwXAC5PZ04cnGgD/0NW78IycqaIV9NJ5YrnasMcqcs+emv8I64Kcp+s
	 1EsgROBmOh40LWLykPPwCEh9T56GKVft8YfnJORXMZeBZ4bJx8cA7kKmONej8VHCOH
	 M9b9uf8ToAZ3RyQBIDhUw/vyp1sixQ8SDauRP7GhlpuspBBP+CMp5csHOdgwIgsjuH
	 nqKJTkmHW9kHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BBCC48297
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170752729637.21602.16320854857677453001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f812979fd70e81b746f906ba7a8df97cadfb15358d953ff516f213d9a1324f
Date: Sat, 10 Feb 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707527296
