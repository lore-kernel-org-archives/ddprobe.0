Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28210274B55
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758294594; cv=none; b=ZNhakV2fciTxaTcKWXizLu8kUJao5QoZs3qUnJX9eTXHBYCUqnhRWlX8jasdYsGd/QqYWGVReL9NsNidWh9R1oRGrbw06YWhZ1tfd4GihctI6bCYhnoJJyvoLaDZ3Dk86qh+Avwb/ehLi7R9F6tTJMr0w63FKHZZVmFP8eh/Jlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758294594; c=relaxed/simple;
	bh=SnbAjPnI5wHzDGOq03/jT+XC7EzjLrMH6PaswxlhYv8=;
	h=To:Subject:From:Message-Id:Date; b=UX4zM74Ivy+u24W5tJuk3pBgZXBMosDid7bh3NFtcTTPJ7EHkZYqmdfTUH97/DuXQNS0wdLhIC4faFucFehIwSO/fIfq/MQiSU/pCa4S+oDEB0v16hSygNq4S1nOiVV86CXGvpRjeTEwGYxEChjjoFt9qWaobsBFrXZwWnRLAhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gg5qmkjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gg5qmkjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1D7C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758294593;
	bh=SnbAjPnI5wHzDGOq03/jT+XC7EzjLrMH6PaswxlhYv8=;
	h=To:Subject:From:Date:From;
	b=gg5qmkjlw6NxKInJ1I2yNTtR4uDiXkx5dU3UjNv49Pg6W1uuLRaq9Bg21QCdyE6wk
	 1t1kZzwIpm8J6i6aynkFlzZX2zurVLXaS4vyjYXmV3Cq7XyvVdnD2WppoNqhYKxxIY
	 S58at4sXNLiNcLRRtOMTO0tquYj9HprS6YR8FkW0Va/a5nK7C0EZAHbBmAqLyN3P/r
	 b5V7FjCzbo97GTi5ZskwZt8fETj5Ic4ure6P4cvC9qfcZhRRY0QFuYuQXozu2eQRdW
	 qGhuJth9hzz0rGuZdH1BNBjjCL7SGBrD09lTcYcVhwVc91S5VgPN5CPwHlWyQsAI4+
	 Lghy8iZ+HNkeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969FCCAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829459360.21776.9080075963943331392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd5262b771154710b5c8cb0af6d7f46ea52c3e6eb2d935d6d39c6f46c76c499
Date: Fri, 19 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758294593
