Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADA03C1F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780905274; cv=none; b=AdVht/EScSEj4ZKy7a6bAcHHDL/haghi/NivY36l+G4QRxF6l+tiD+7tq4UcdMfwPlKRB3qgkRVSF7ya0X5IiB5Kr/VpKBYgx6rWQ3IDmpoDLYLiY6vQ5i8P7Fh2rX6LXjxAxtctjb5BvsotahrnV2ga4hiiG+WsFpW0kU2phao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780905274; c=relaxed/simple;
	bh=wJz212vxVmw4LFot8+5Z4m3shiC1HAaa8VEr36ak+rc=;
	h=To:Subject:From:Message-Id:Date; b=Qs1yvNOgcozc0AfY0Y//5Oe5LO0GOlwGmyntsxdMNKLGDxW54mDFpUHjwzwnGv8NYOkBKfsvrOOQ1d0aXwG1fIv4J1jyIimHm3E6/iFSmPAj6EKwKRuvhP7xjcOXQEfoqtPOFdnbkLQC+/aOFZ0oiMbNIcehcOY/SRkY7c4hVcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewOyYEYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewOyYEYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20FBC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780905273;
	bh=wJz212vxVmw4LFot8+5Z4m3shiC1HAaa8VEr36ak+rc=;
	h=To:Subject:From:Date:From;
	b=ewOyYEYEA8qQhqP9c0Zhx5D4u38Wpp2zgejvLMCBRxbljbuJ8YCG22ufMXvxLUQBy
	 ORUIeC5jEJbgaK9yFnwNxXy9DfH4qxhJrVtpypSxAN8k4dCXdxWRo0aceaBun6toJo
	 cbQspNTOw3+QDUeCq28rnmWu5d6df8H8yjYfzVo03JPCk8HN5WItX9X/6ANrCW0+K4
	 Z8cXLXrVbVthq4zLRw4ULqOjSempT64fbgs9+hifWlPR25IqgMKz7hL0Cm4KtlnL8E
	 CLXPJLkJo6iMp3XJfL4FGdUI29uJa4hgpGlBt9y79z7YxqDZRlj9bqgU9E1j2vG6xU
	 Bhkikf7kPewgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3E2CD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090527368.26894.3776489329429135647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e168581ec97d924b28a663533066e84142ac90fb9adf76834b5b72c05730ac4c
Date: Mon, 08 Jun 2026 07:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780905273
