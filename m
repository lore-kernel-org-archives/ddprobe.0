Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100C62F5A3F
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762508994; cv=none; b=iFlgfFtdrAw5S4vm9tFTtquQZMviQ+hAaZa7aRnLxRovXWuzwRo8SuU54qJP3oEmgID7HNOC+Ntb47TnB6BRFo+qxHj+CFUXNAO5z8tNycnWjgKnOqDJ+wi1GuXLkpt8p5HXzRHQFCOV2A7DyO0JZ/razktkSRFUPX5qAJ5Y+ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762508994; c=relaxed/simple;
	bh=5qVBPDptB+D4GHJX1b1jHAe4YYgUy0hP6xtiyGt4Ez4=;
	h=To:Subject:From:Message-Id:Date; b=KanEVA2D9AKmCAhN7K3LqcvTIJcNLTSVFajRzHjqjYFDT/LK7UH6q5xZrkUFi6d04QPOoaWTs9HdbeU95U+sQeL4SC0qqRqzCeYKKmNBjMKUHhbAM71ZLGMlWVTxVN1M4E7F6dZhKXOaD/Sqk1yh4bUCWFSNBbY5vV/JwoGJYuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YU+JAvOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YU+JAvOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B8F5C116B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762508993;
	bh=5qVBPDptB+D4GHJX1b1jHAe4YYgUy0hP6xtiyGt4Ez4=;
	h=To:Subject:From:Date:From;
	b=YU+JAvOYsBNxfnhBhSwgg55LQSbDMUN5tVLLFhJdjnQdilqTqKIR9DIHCj9hJTnTS
	 4R3zz3LLyQ15u2DAlnCXlUFXv91NKPUJzxZY6vBbLsmgQCpENzpSD3QK0iFPdDLvh7
	 MATTnk8MYQs/XBdaJu/l158gHxTKN0Hgj2Uoh35Yr+ivRjdEH5+CPP6t9l9gq7nGlH
	 RyPSq1Z78VYh2UhBkBneBFpIdUN3GHkNM/Ol0wzq3v9xwZGBGaycUlCRMjgzLhlL2M
	 +trUJcKJGvtQNJKUQsyJaYQtZ4MqV+tg1tXjv4F/x6DGqe1mUU6prqws7cq1YhvwSM
	 ygnmuro+hYxRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C6CCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250899358.29938.4127767298490537697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0405b432e618efd478601f3e17ab561bbc7979da973b71d289d50caac22e5149
Date: Fri, 07 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762508993
