Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21605230D2B
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733867754; cv=none; b=imHJZYv9aqhYCZJMFRoWF6rTPLm8mc+Jnf3xRQqLjW8/JcD/+89pwPOS3ZPIdgMyp+HfqDOLMpD9P4E2HRLrbpjtGYHZmbPYHGbyuTpXFGbA10rniqtxnjrJXUOkJd8Ae0ogNgUuy+WK/nO2gCyYoDGKF6QRQQTBhxtrscBSz4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733867754; c=relaxed/simple;
	bh=AI1BscrI6f6nKXjejBbGxkjFXCJ+ekbW/HUxfIP293Q=;
	h=To:Subject:From:Message-Id:Date; b=qQy7V6VVONJQ/tL4cj5bBK/SkLwQNtpYE23yJiDBucyPnIz84CYTh418EiMDbT9Dc0iLGxOkB3KPd7o85HJekYm11umRlfDYi5hghqTwg85IQBSk9yvQhkNet8Cb8Z3zUzHfEjDr6Qi9RbDq14qkfMvMfTBXEDuN03HrLe+woW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ho6wwJbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ho6wwJbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EF9C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733867753;
	bh=AI1BscrI6f6nKXjejBbGxkjFXCJ+ekbW/HUxfIP293Q=;
	h=To:Subject:From:Date:From;
	b=ho6wwJbT9SGylZ12Pcs9wJz9aRQaDdpXsohoM3G1fF0oUkQROhtqs60IyIkHI74W4
	 fptBxRwpy+ovQBTi3kogwk8namaxTZVuAwvERIP3lmgm0+9jvI0BhfgcBcC8S72tYE
	 PfWp8gdT09VfVXmqujjlaCoIqlUAaaBTsZY//soo6K8B3++Kf5B3eJ4yFyDH6FdYh/
	 PYrljSUgKNhOBt76n/Oyl5J6XB4JafqbZpZc+yBzk5BJXCLrHI5y0Sen9l7LQwpIi5
	 W7M3NwSNLoAhPasCJqLmHEvg+EqqruAtkV+MG8gitwOSt4Di11NZc/qOM3E6DX7XFd
	 WyrioNTf4IMXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1EBEE7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173386775365.7492.8568198673822704106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c8cea6a9f7ffa8dfc69f4543856ad8fc876e636cd4d5b9f0def1963dc614f8
Date: Tue, 10 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733867753
