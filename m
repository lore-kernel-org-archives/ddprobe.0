Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111E013AF2
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751678394; cv=none; b=nNLg7D4EjRBt2DwLlr67/5AMV/1dTDpcki08zbhUfY+yjq5LWvDTUc60y79xFTKjTEIAFz1sjgABssm5kcFsWJr2VotvqsSCzi24KnCE7mj5ohIOeUeXJkwSivtZhV6otrSHuqWKGfyS5pExf8Ri08+SMb0IR3G4pozw0JYMgZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751678394; c=relaxed/simple;
	bh=6FYGEk3uW4tZFFGb8itrOQUKrGRy0e8rqle2P92w8Rc=;
	h=To:Subject:From:Message-Id:Date; b=lvh5lwM42+fuTfwBFtaz2YUB+bDxR1CkxAIcBWZzmtnVqYmJ1Nr9zBRCn/oa/k26+CG701D4aEpooc7Z7zANo4kQNx+dHv8+0b4tGDbVSmHtJtqn5Yk7XgxV+CdE8pwuJKyaFUTSBwqAifEM00o/JTLMAkMuE+wlJr6bKQyxFGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnx+0rjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnx+0rjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBC8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751678393;
	bh=6FYGEk3uW4tZFFGb8itrOQUKrGRy0e8rqle2P92w8Rc=;
	h=To:Subject:From:Date:From;
	b=rnx+0rjTRIkFl8PmWVpogEHX9EUMKVK/gH5wW4+O57XqgVszwYKBjhEQ4VoAlFi+g
	 f9rhdVV4iZirrfnXxFQQWNcN1YWv9xNCBjehWhpWyDPA/hex5A6/N21P2abQN0vbLE
	 4Y8/7yHLi5R8vANim+ihjiZMxImv4Wjk6HN6Y/nRIMUj+HHGGTSBM6xlY5RIJIYiBH
	 fHt6047K5Jg0s4nXy3Y/H1V/97z7VF0u0nw+kvX5CWOvl0vVN2+YzCJlqihtwsiNFs
	 d2xUdxz29u2AMfDTRAQbX3NhPA0hmqLOWL54IYASC1XrgrpwUFz7XbeKAtJeXUZEUV
	 wpofNLj8G3qZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5AC83F03
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167839357.32008.5103827107071464931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a4a7faf93d4efa9c5a416a45eac3be409c6d2352bd99ddac8f870edcdb0290
Date: Sat, 05 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751678393
