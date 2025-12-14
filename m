Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24ACE165F16
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765675974; cv=none; b=lhVkDZ1asjJOE2KkjIfOgeG0BhsjB8gUR0RImfkX7nAI5QcfcMQjnecnk6C/5nXDF+io8Kpk2M7p1/5puq35+J6rAUR39r/+W0z37GYipl4Cgdp2xdR1vxq7rgs41f9bkQv4z1LppWF0LQbrAQO9QkWc6noyuj/L4z+5zUyUVHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765675974; c=relaxed/simple;
	bh=HrXzJsiUJnZmSTwV61BJqGlXSrrJizz2R9KPKM/Z2PQ=;
	h=To:Subject:From:Message-Id:Date; b=oIyZlS0NYGE8hCg9asQ+5jNzJ+4tgcjmdSu64wQqQZ6G6w+0jaorhVTfF0hSAq91QkOZ8mpIymmq2G6hIe2Gvp4AV2gJzKIHrxcW9U3QkLCHzvQ+KocsHVWYDrPhKztn1iKFr9uxH6YvrTcMHXrL46XJy5eZ/rQNtZNKdLMtqvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxnnyttX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxnnyttX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ACEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765675973;
	bh=HrXzJsiUJnZmSTwV61BJqGlXSrrJizz2R9KPKM/Z2PQ=;
	h=To:Subject:From:Date:From;
	b=FxnnyttXk0MwNS+IhSZXND6Bjq39BNTwfIUbKofcV+5g/pTr66Zr0nXJZJi03wmZ0
	 zVuHQcgmIVYZhW/OawBd6WRIjc5z9E2IJpfdlPmfXZD/6sz4bL5gdoXiKXwd850Di9
	 5MqeKNa7CeqWt04n01q5S7qggSCz6kNJ03C7QCP0aZ2SQZx0cfcxygx05jPxuVGF8h
	 VubqzXejMGAuOvrPn7K1uil8e3Ir+4eb8dkrdnHvoaTR5EbX80ZswJ4FxUYpyj412j
	 OQozk/H8M/z8a2h2qGZxszRfBXfc2Z8X5K829B89gO0KJgEelZ3eSIplSJ/VBJIaqX
	 YDptLSCAsgdgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968E3D5B161
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567597358.10625.15478302459645610755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc74abe950ec4f684b412cd120dd1cc32143695b3842eb345cafd6261e2f6295
Date: Sun, 14 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765675973
