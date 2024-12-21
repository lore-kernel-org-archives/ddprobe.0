Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3317D188917
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734810354; cv=none; b=qc0hDt2zXkVNojdhGECkZMv7eUGKq1pMurwEMeDG15gm60/1xVRq60CKDuDjh9+0eVJ6PtDOo9Wt9nUDnmmm+fGKTnYRYVNPNkWWUz/NUO5wY4SJazJvZHvnuAkrxALrAlwX/IgFVUFgwmQ25jIAUHstjEr6I8nQFN9yL48p9eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734810354; c=relaxed/simple;
	bh=S+Lf1IN07ZYnBQHoVa94GZLKxjXLE00WM+Rl76y+nx8=;
	h=To:Subject:From:Message-Id:Date; b=YgeniBSyB15giKdXzEyt0xqF/YXKHonWW41qsdPP5DTmbLwrfGi5bZVkNQz6uzF7Z3Al5ouce77lFp/W/a9rBxKgQDLiSM+gg9rubHQaznnF1a+A4P5YOiYY8H1gIbAJfe7308UEKCQjWWKl12KHcKTWLpdmgWKGv/79U7+VxCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWKAZiJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWKAZiJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F14C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734810353;
	bh=S+Lf1IN07ZYnBQHoVa94GZLKxjXLE00WM+Rl76y+nx8=;
	h=To:Subject:From:Date:From;
	b=MWKAZiJrdr5DoeSXem4Tp+R8Uzy0SRWTulIK4OBDgRknmCzLzyZqwhL7S1GY3MT5h
	 Be/GzfRcybaiVK9OVVehk2KQ4yitz+oYPedF5sdn76cAUu/7+jPuM88j2rLSyxKfTu
	 Rfne0E4zXp2CRvmbpuq2QDtS1MiTeYX1aNihtbYWl6W1OAH4L2uEws7veS178lEZy0
	 ygztVkel4t8yDq+8t7r0+HjNnW9lopP231RLlSn3q33H+aIa4j89J1HdEb9B3zmFJD
	 fu8jzBSUdbSpADAo5IIFkpnWPylFVjvBJqYiydrVr2bAHFa9duWLrT10kbxlfmmIJ0
	 hx7nKUQE8V6MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA0E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173481035360.31439.11238710582740686904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b3437e4562efcc2c51c24c1c64cc9eed28fa17a29aecd2d22fa534be1d1e00
Date: Sat, 21 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734810353
