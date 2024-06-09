Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6A9C8F3
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717916243; cv=none; b=MMv0Z8e+dLZh8raE49ObMGh9zQC0yVWzWyEZ/ksHByt8rifPIMQKvy1wvhV79qLfMG9wYmCbUM9JDGG+IyqHSb7CL/ZBBsrI6cJ7Ab37QxF7yaYBMLvmR3MSfGTmT2qKd9nvDTl7Z+EdJI8vo1jpWUj70rYMUyYn0OyHHKS0MsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717916243; c=relaxed/simple;
	bh=k7C5zBX6VgmZxAK28v3sEkwkcZEctquveWjZspflWkI=;
	h=To:Subject:From:Message-Id:Date; b=Slh0oZPqdKDE52K2ZdG+Q6nCqwit06kiQabgYK883wyySvt+1ke7JpkaYZqZf6jFTLf9AR6bpHZmyWIebNRZHfjJd8LHAEnAFanBY8FX2UxTV9ZDJL5fbXw7lH6TWoZIUW18TEgPyW271hRpWFO3Rs6SpuRZjiDVkTlFSnH0zEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqA5cUKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqA5cUKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0E1C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717916242;
	bh=k7C5zBX6VgmZxAK28v3sEkwkcZEctquveWjZspflWkI=;
	h=To:Subject:From:Date:From;
	b=kqA5cUKJbVw/PxyJ13SRePTvU3FSehiWSp9+5HzJXQny3mjcREnHEaoo4u7qMKmL9
	 BFBIAreg8VRhTjKfnAfvpGD0s68VGIJ8ajjRSd6ERxdbZQwtonxyMMN7IJUVoUnZqF
	 wYTLyXL+SCBplJnc++2oup/5u3wFjzmzHyFF7p7eLnNemvKsme66jHLftcJyRO6Rb2
	 HAibH0uPwSd4SivcYyLu5vJI9Uj2Wa5QhT6lXXcRNQhvhw07ZwzAaKmqZ7jVzGFXtW
	 4L5XieWY5ioXErq0d5AMp+S9sQDwfdNiTqurTzA/Z5PM0VycJ6UNw/3JPl09WYtsHl
	 rs9UMvvUrRM8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44B7C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791624277.22057.9593652209105653836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a381c078310efb0545ed2f01d1f7bf0b14e51cde2f3dc2d9498bcde0a76ae7d
Date: Sun, 09 Jun 2024 06:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717916242
