Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2280725948B
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734033354; cv=none; b=nj2bSLvGRtgKC8SFYKP4tckQSbsJznsnnjMIIFT0k0lOr6Dfa66Z8JfrK7CoIIDGT5vRfJptU78OskJewxeiaNBB8NG/myKN3lWMSMkoKbujGnuw0wwgjqrsQ6WmQ7uKHrSOrjxU4WzseANDxjdYdfHux5wVaHwlHSTufc1OOsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734033354; c=relaxed/simple;
	bh=sJJdgFr31ckXudI/eZtY9LM+xy6BpqfnbvIAjbOxzMc=;
	h=To:Subject:From:Message-Id:Date; b=XaUpvkTgOY96MfUd8GEer7X0seSy0CJmAg/ec9AZsrgCn+9X9AA8gAHYcqMg0jxXnfDoIauK8wUjp3iwjnoX7B7IDOuD2lwdyqCQVnI33DgiJAJ1dWlEHf/41fq9MykjcyVi9jzF7zg5i3IDpw1vdj7izBXUHUZeuW88P2L3tKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVNURLAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVNURLAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE4EC4CED0
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734033353;
	bh=sJJdgFr31ckXudI/eZtY9LM+xy6BpqfnbvIAjbOxzMc=;
	h=To:Subject:From:Date:From;
	b=uVNURLAdhPkPmqiarHX4FcXMVDegBOvgo5X7MYC3ne4+/jb30jHpZhw5a6U53buvF
	 t7DQN0G2ijpFiVf27OFyuzySxIy3VmaMZwR+wVSH8Xj0ey0/SXeF2NkABu/R7v8pJ3
	 XacMW9oKGKwaEGjP1HI6SGbbjEmRnkLBwmjYtaI3Xpk5nLW5CN8v6BYbdgo1TeLvy0
	 cx8cIsor7gys0Hwi1yFhvbGZKu79v7YG9MhOnTMJlSW3fp3aO+SEVH4cBXXMsKI+Yt
	 kc1JZOa+jwF1k7hJnJ5Gwq+zMSbAhfEp5hsF8pp+D/FwaJSLuGN5jqleYoFn98JnJI
	 9UY4Fjj8LTxFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972F6E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173403335361.15636.5707035837764623462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34612fdbf5f1f2065216db18e0017ed8ba89bba435c362e08f9e3d20ee260925
Date: Thu, 12 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734033353
