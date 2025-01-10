Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31102206F33
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736543154; cv=none; b=t3KQQCnyvkKBSM4octo6mrTpoDg7aJl963blSnrQXbzdlkFN3oBhyhxR5HYWRUcGBldmLQ1PjBNYvXs9WVlt7ynpYkEGZ8KW1OzLS2/4GA//g1XncH+4U+SJ31Zmjq6r4kjAQlsW/qvxnyRgIrtCNjqwYJ3SHpcqb6MVWwZRbNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736543154; c=relaxed/simple;
	bh=5w6hBZjqo925mczOL5Qhv4IVhFBjIrmjYd9eUdCHbG4=;
	h=To:Subject:From:Message-Id:Date; b=pjYfiJ+Pi+ckTLs5Rb43mNsmoJMA/mnDPzCWXESJg6yQowQByoVzVvgMNLQ3ph8DB2uJfOzr61XhB62/a3vKe5pBZhRokmg/2qlFOxu6InTJBJg3K47B1CbPJGgFdTaR/Srnm8+wE/2HBckDcoH0ixE5kkYgwLF8tuxTQBCuEKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDbUj6Mu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDbUj6Mu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B7CC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736543153;
	bh=5w6hBZjqo925mczOL5Qhv4IVhFBjIrmjYd9eUdCHbG4=;
	h=To:Subject:From:Date:From;
	b=BDbUj6MupNWt35ub9XY3NXpICZbWIXeVAGSvwl0pD/N7QIY5/JaOXjg6AWbdqNsbC
	 MS4TUNtsUCEo6gTi5d+0t9UVnutBr8guqeCG6Vna4JPf8NxdBeumRwcLqe0rbqKsA6
	 10oTLIagNAnK8b9w7IT//WWzXgQV3LkVqZZK/WtzjWGwjXW6gZ6tzjelwvPZOL0DV0
	 rTRkRlv+iOREi0hbovEc6d4KNYQMpj7stEa9wUaAgGp0K7SGZmSQFIvJzJckMf4bgv
	 pHMOITUTmOLdyxjrhCUOI+u4E1n5zMKb9K3ZUzJsKVqRFstWslzxR/UJiKJ04TdRsk
	 EfpRYxD5sSI0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1183E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654315364.32396.7348475296512843219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915dd984d7c3e9277eb259b01a574302b0722c242305f652a86b664253c71ba5
Date: Fri, 10 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736543153
