Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F941F237A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751267994; cv=none; b=pwAo5WAboxd+UFyHMciKlb2DFGB7flujlH4yvyZO+XZBZH18F+e/05HLig8I8vzlORzYu8jb6Rz+BK8j3L7gIUBEj3sNv+VkdQhI6rGwTHMdnloj8P3kuYch2Z/HzgcGCyCN7k9bC/sTUT3qf5Q98TzSeduZD6xPvik6woj3B6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751267994; c=relaxed/simple;
	bh=BALKjMkMtsCXyo7pKWqSlp97Bbyhxd2P1TN4Z3eE5ig=;
	h=To:Subject:From:Message-Id:Date; b=gKgHm8O9YjlaGG+3zSwRlQ2N4hk9MH+OALafbIB0EWQu1NluTuYCOmoCyVIU0iRXiwG5VjFZlq1TXgksQNzSeTIHXVDeyXyqZZ4cLKeKnFH5NNX8iJSGzzfzFqU4Qe2VtDMWQma7YrEFoQXl+FMm1hanvICXtsR5R7hWb3Odtyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSUd2JX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSUd2JX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D76C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751267993;
	bh=BALKjMkMtsCXyo7pKWqSlp97Bbyhxd2P1TN4Z3eE5ig=;
	h=To:Subject:From:Date:From;
	b=oSUd2JX81e6MvnMqlIC4MkrFgpmwQ+40ROs6KvnQTXLtslkhDR4OK6ZkJND1FmzLf
	 mOCgxS9QT6ea5XEEOcOmoEsDnSlrY5mXEyOHcVJpybCYjmC5EifxfyMIMDH29cJMEf
	 GJNBnUW8zfLO1pRzW/B9MtTWEKooUBU8TbR2zg9f8jilDAg8bmhDZmmlc7Ob2aeC2+
	 cIq75ZC0bZL2BcZDBU+WYpzi9tJPYsMVFe/o0zGdyutV4h7xIhm3IQw9gLLoc7JMtN
	 /ufJSKze/1XGdPePYu8WMMj05u11ixNNq/A57slG3husxwj1TWEO6P9sXYOFkMh0vI
	 Lwz8u1eWNhYDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E031C83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126799357.3244.1992376811611245549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5527a662ff51130a8fe7a46deccfd7bb82bf7899e81f5407655c67726b3a1f1b
Date: Mon, 30 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751267993
