Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091A12EC542
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762261194; cv=none; b=FfmvsvW+GiHJswn8I4W57yd0/ZBd/6Fl1NlCtwIB9GjXnvThQ3cVTNPB35Hy0B4fRTWrF6ebkee0CrclaZYzxf71rrW73VHYyfsuY9uLEfvGD9GV8HpmMCfT7UTedx6xtZb3sWdC4psR8g6ugJxtq/DvHS4HfdeiyLFi7jXPCoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762261194; c=relaxed/simple;
	bh=4PE9hCOh21zD+jqQIz0ptuVr6JLdUnlQvC3gdH4RAmY=;
	h=To:Subject:From:Message-Id:Date; b=tb968sSzDAnDYwkJaK0XClD+zqFQaQlbZbLq/W4NzjnwJuJttzKSAJQO+SN+kS2xy/WFkUb4FJpHlkaYYJjY+BliPIkNZVBvqI8GGYpMJFqzDpwD3Ik3rRzfc6rBYqZQKcQA67tH6THmStuOPqerGJwIlzJch5ETIwo334QLdLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuxIcL+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuxIcL+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF7DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762261193;
	bh=4PE9hCOh21zD+jqQIz0ptuVr6JLdUnlQvC3gdH4RAmY=;
	h=To:Subject:From:Date:From;
	b=uuxIcL+ft4mb89/LJQIbV9CHcOn1pBYg6l7hzCzfsjWD8A6g+XBNqSfLi6NCzwK50
	 CbiygcCNbVqG9G0lBoAuhHGQdQx1rQLX/VjWBJqRRsW+H2FMD2ExgOOmoJad86MfTN
	 cpR0nqvqTFvwZcmu7HvUSH2zoCERRtMhiXx64nRNMlyCiqIpNkMRS+966KsDMn+AWZ
	 B/riomRh3d5XeA/RIXPCYoyoaWfH6ZzQqWo4CcxCkFuGDiTCbIvfR9pfHizubSkbqz
	 54lXlT/OMNOt0NyJbtYOD8CYkXQHOgfiyTkC7WE0/ihnKXRKmdaTDtg/G9z7Wgr9zW
	 1DRjG3YAipeSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90806CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226119358.27652.2672568154134487192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4a681b8849e6a32282e3928e73318b71c3cc7091a1063f74d14df12c798898
Date: Tue, 04 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762261193
