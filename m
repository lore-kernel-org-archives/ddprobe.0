Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB78335077
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765970634; cv=none; b=N5RCdPkG+3TnVY/vzbNim9UrEr+1EhrtmL8qFndPATjcdwrESrF+yc7EYqjD69l8XP9blVxyXEIB02wGhhayVUWNmqvm5wJO9GPGV+4f7hM4dO2G052J9eqVxurSaTLf/WhNZwosmCmGQN87E/uJQnLlK7CwVVEjC/WVBgRzh2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765970634; c=relaxed/simple;
	bh=PrPjA9T+llKsDrBwhAxYvSvpTINgTEgO2/RQvmWnvn0=;
	h=To:Subject:From:Message-Id:Date; b=b8mJ4eKUCwKt7RH+SzZzWFkopyKP+5iSdJPKtwb4IpkHL0HkNsu0DW9eVUdq4oR0vk3ipXLVqfX7w1G0JvpCzC8ljt6yXFrFZp1I5uH+s85BIAmi27TD946O4T8VjU+THAb8uKpMfyVX27N1e28di+UoOlRDxiRUZ9ctQKLzyFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeXQpefh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeXQpefh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2849C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765970633;
	bh=PrPjA9T+llKsDrBwhAxYvSvpTINgTEgO2/RQvmWnvn0=;
	h=To:Subject:From:Date:From;
	b=FeXQpefhKMl2nHQNHeJv9qoWygpoJf6J/f3A6YEe7pDDwqZ7Xutdn3z9r6N44lV28
	 BCjNbCzVJ2RJurzXd36Dx6+X17foFnUK23ZrTNoeKr9mQO8U7OwSR5fe+2Stvs0aRl
	 BNfYt82aRxXpo3BBuyzA0OZtK2SdRgrBeDJGWF9BKk2dDy+oH6j4p4/PW303m133l4
	 h1JXg2sGFFwgQHQsYSLB/VGSejdZQFVdnPGuYPeR8TV15Mfs0upVt8RzBpHyo5Ez2r
	 6suO/E3U0xTp/EYO9Q5TXvHLl6t/2WJlu5J3WuhiKcyrYcXgQcV7nhUCbhTBfJ9M4N
	 vGa6+g++ZqL2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5FED6554E
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597063363.18408.16679128607360267930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f4c7ecc4b7928978c68a6ce5b58d92e950ab1fb8b2a4f5188439609c6a5af6
Date: Wed, 17 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765970633
