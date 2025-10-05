Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF9D40855
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759658394; cv=none; b=cR/vaeXDJCMLPTRJ1oQWZGk73IrcFFu0b71DFK/AH0LukgHfTPxSM8miUrubagy7xC60fiyExFpbgGl6ksPKGBvzzujmL4mcO9oYC12ScBZkmXnQkngiU7AiXBMapFO0q/N6vTr2HkzVS4mFHWVJOeVMau9WXPd6bgNq96tJRHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759658394; c=relaxed/simple;
	bh=R6Bbq8ueXJ7JfHRUrt21Rpn6X8JFjQXQLMRvMJ6Yqew=;
	h=To:Subject:From:Message-Id:Date; b=miRwWe5GbvoHnp0ZFGgXPNnHqmHcgD8l8z7Wdu0yxXo2jjOxERU6Re7NtB9ZfWbjqugFpOtgRBYgxS039fne7AdvZnjOcoP4EmIwqdLJSWSsOKMMDExyTJLjI0SHql67Jm9UTxy6k7NKisxRifFenQiMq1qwTlewTpCDQSAtDrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnWvV/3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnWvV/3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6697C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759658393;
	bh=R6Bbq8ueXJ7JfHRUrt21Rpn6X8JFjQXQLMRvMJ6Yqew=;
	h=To:Subject:From:Date:From;
	b=BnWvV/3BRkVSc0p+3YHe1Z5hItJ31ZhusPMdG/4tU3LFkDQjU0bkJGSGNzDqbDOqq
	 0B/xqaiobbFF9C+HKqsbvFw1JzWam+yzMjCFwlT3d3rZquennoROG0zrKpVfiyDU2N
	 y9xlVB3uaZOXq6lNIOn4M5BcG3TRPpZ74dp/MyVnkj5MPlHeF4q2Hy5e0adq8cyO+3
	 SqiHgNPuzQLcyp224rjiskr8DodZEkhcJbjUIQggvSPchVzpbCiA3oEWFf1JLrGG43
	 o8/DzR8rzKZ9WiQZVBNqwHPz/D7MSnJ1IEb8ryvD2rk73Khrpy3LQmPl7vpNsDeViW
	 BQSU3Uw4++lUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94724CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965839357.32502.15925526210059811110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec9b0aee47931b8723a32a116f2862140570cbe4dfd41e195114108d90d9bb3
Date: Sun, 05 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759658393
