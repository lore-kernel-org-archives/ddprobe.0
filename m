Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4767814AD3F
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742969994; cv=none; b=gCxeXzobwosuHd0tkbEw9JcE8gpoqBg75KFSpkaQq4nxe9Zku2ZSoDoNTHFSKxFf6SlS+BSeNLvSrE8Te/AZGWQLDoSQRW6V1zPbv+2XAiv1dUO9UgSmAoNzOpiNt9qEPwdIr5Zbz9+wLK9OTOKCxvR4NEAyihcoidcEWkkTpak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742969994; c=relaxed/simple;
	bh=R42n/NtmqLQCOmXgZKR4i3lBilJWP1OIwNy0ffLsmnU=;
	h=To:Subject:From:Message-Id:Date; b=CEemxwFs8cJD/bRVN9hbvn+XJwrT/X51ViGhZhpR6FbFyfLo9ePofWcEDYD6B23Cejh5yeL9yln9EzPGF8cjedCx5t7lbnoIunqvMsz45bgvq3XJbqq2koUc+z1gANYCi+1Di4kUOVnyiVnQn9eSnTPzOFfyZg/+vw921fEX1wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwasFmHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwasFmHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB125C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742969993;
	bh=R42n/NtmqLQCOmXgZKR4i3lBilJWP1OIwNy0ffLsmnU=;
	h=To:Subject:From:Date:From;
	b=bwasFmHGNMcYyzMHgAGipHXcSTMJq+YWmwmNTZtcUYU8ya8BV+01Je+Uc40Yjyina
	 e4OIKn2eO8qIik7Gyn1lIr70JBPXWVNwmLhphW5tVMhjZUNA7wr6/CxraQWZsAO9gf
	 QU2+MjqsfwBNl/6aFNRtZp18RfI3rRsPwvs6dSFPMGrA9XMzL6XnVxnVQW2M5fd0rc
	 njQg4lFHsDXGJukCBBtHrRqpyJHG7EeqH+jnZ8WWa4T2hGjzhuF1lLIlSmL6pcVoSi
	 4EXPQKSw3bVjPQhvFA/+Y7Ws9mpd9ybPzt8qMa9QM5pEoUwSCV7UEh8AzkbRu03fCZ
	 +X7uENTAY44WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E80C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296999359.19318.2245916098176089829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55638d43099be4b765d7e9c4e7f6375d873b3535d923355869fdf6671d6ea728
Date: Wed, 26 Mar 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742969993
