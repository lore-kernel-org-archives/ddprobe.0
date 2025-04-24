Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3246646B8
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745471394; cv=none; b=Thcv+OTcb3NH3SL6LKzMw/8VYDYAHI2STAHC50IUNCi9L0f7XuU1wkMg4SYWL5sem5h719bGbKj3CTfwBOklfXy5uoncMnUIzs+aQ+V6KS5UlHJTtFozN5AIakw8j9siOFVC3YZuKP40wjfL6+snCtN1fHaousSBxP5iAuL3MmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745471394; c=relaxed/simple;
	bh=1FAb8DKmC1lDGhsWYMW7oWctVRAV+BQN2MVVxGrriHM=;
	h=To:Subject:From:Message-Id:Date; b=aFnfGTOklAcEUAEVcOZxb4fXhZmLN0uUEykoEkFA4aNXvsHaYzHBVY6gLB7J4tKoxZE/AsPZD9sasMLMdnJ2dHHXZtQ4ld9fhZy5S014DGjo/VLJp5h9mOKXlcniJ8nYfG3U3L2hlx7MwOnzkcXXuNbuba72lBouJd+vEMd0iso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AK21P+iT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AK21P+iT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745471393;
	bh=1FAb8DKmC1lDGhsWYMW7oWctVRAV+BQN2MVVxGrriHM=;
	h=To:Subject:From:Date:From;
	b=AK21P+iTTkrSIEvfPTAPy8IuD+LXGjpgB+C67cCAdyjpGOJU1nGoTCU5nzNJDiLbF
	 ElaKhNzQ9G2GxzQa0LifWprvaT0Ur8Y5RzptYOfon0IR3QJiOOFzfStLQ1sIGp32oX
	 5vW8J4J19PqHMQ7XEBq/LoSIvj195viGkzAeFqlRs0qyRBaYMSIUeOO8cBg38wlBK6
	 HCfsirO8qgEvjHXGR2qAH9H2qjGVRwlSCVAjixtSvuTiioxU4psp4xDrQbwxct1dwk
	 /dyspYAtSSabN3LVn7TJNAxp7vxQn9YppaCIDUBikBJ/ru8uPwGkg29L3ultD0Hfrr
	 fTB5CSRkd5AZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E697C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547139357.14016.8714337853060380526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21684366e5b4db71855a2b24b79147307575ccbac22904b070818cd04b6ccf0f
Date: Thu, 24 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745471393
