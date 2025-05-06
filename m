Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6CE20ADEE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746518395; cv=none; b=mefgP8K99edREgLuYSJFmG5A5N0V7GOClgHqwU/kHvDibeuU5lqPHEZe4YH7BnHbgTYHEHgjUeGVvqGbkrS9YA7NZWIgH0kgLHQt2LVCxy2s5CWu8lbJ9WfM5gZQSil7aL6OBqoLuG8P26+n8zj3mYt7P3SjpGCPyodXIIxj1HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746518395; c=relaxed/simple;
	bh=RXHwUJF790g7QjxRWH9tjgO1Ha8p/1u9M4kN+TMXWYc=;
	h=To:Subject:From:Message-Id:Date; b=YW9JWdIve2KG50iL1dhbXJeTq6caVvX0Eo++M4OAUNd83zCdhq6lxpy/JkfSepBEVJbB+ttBttsgkCEn/tT/NjRIM0p2dB4Yk0zE8fI+BmAA8Mb2jiUO+Mc7oXdTky8b2r+xLol5c0tivYRSrJDXvKcvAnUXzD1Ewvb2phdFXPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzxYmyQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzxYmyQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0870C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746518393;
	bh=RXHwUJF790g7QjxRWH9tjgO1Ha8p/1u9M4kN+TMXWYc=;
	h=To:Subject:From:Date:From;
	b=nzxYmyQv02wcJVq6F5r0yy7YGvBlGQlaIfDGJriTmpbwWBVQYZt0rID00qNkha6Pt
	 jGzdimUJd/H2ytH6zxFF5uRb+l3Jvtv60YNrJWqC5uoDn2iiZYfV4K4bcfWUWDa2Ax
	 +xlHyiHRkVNLwSMV3lNv72nt0XxIzVKlRyXg8nOjCYJfTGSOGxXWCXV9rRvXeXbd9o
	 ent0lPesdQNCWq/jfJbPsVBHRRlP49UX6hVtN13BpUvK/ZR6ee+Ec8NdVdHrDq1046
	 mmKpkFzH9VKiWs07BeRI6odqG6kOUvqlpUpSxLU2IB6swnHBXR1PLgXTQ8MgpC9EBy
	 3hYosiqLV+y4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFF4C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651839357.12017.16784937454731461565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638f01b5ea2fcb5bbb194ad91155b9931663fd718856a38557a4fd39c6a834aa
Date: Tue, 06 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746518393
