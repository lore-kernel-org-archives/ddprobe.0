Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A32B4457BC
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787830834; cv=none; b=WXuwgvU619wLLHsNUWGqzmS2lksxDXrKxiJ8/P32v8QnkUQh6A2V6c9VtUpAOQqJYoFwAaNy4nMQBV8GokVwrP3T6sUDNLU9EslFPywzDgar2u44Xzkrh810uH5olBMQ2sc97R71XVpOYFjdY3TO7k9qLZN4BzEIG67yJq46grA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787830834; c=relaxed/simple;
	bh=g4MFTEbb+0lat/TDjTLzbn72ygxAMCKH+G13bDO09Is=;
	h=To:Subject:From:Message-Id:Date; b=icIbVIMVd1G9iZ3FjcVbX46jkqHd1lN105r2ZgoqZ+Xc1gj+uxrd+QEqCmFlGK1N6bD7c0tZhHmJeuv55NSMgu/nPqbrT27fRcmsMl6q2sNIImZKDQOn7WFR7ErEabJqrRceOrDAflAPAHhCGb1cZEZiPXZHzS91FOEGvlQYLoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUqmAo1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUqmAo1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D043EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787830833;
	bh=g4MFTEbb+0lat/TDjTLzbn72ygxAMCKH+G13bDO09Is=;
	h=To:Subject:From:Date:From;
	b=tUqmAo1yaxncI+3FIIgYQLkjLGJMwh8tebgJc/MSEp9H/e57SX2DTYFj3SEBdptKn
	 7xRulbfzpt3tOmD04odA5gu3hwaEOVhQK3D79Socr8B7cRhmQsqsY43SDkm/0Kdlju
	 mpiaGO9wevhRVPxJ6Gn8Y0POz86RcMp9gqqrFlQH6foQHrS6oG1MAzUfP1eiBo7Ouv
	 z+DZerTLZDixQ+JRN9f37KlTZYV5rjV5+jx6tIvE5sFFl4dZZObya4MaD3jgImrCVx
	 wQqNvGT3S3JP5RVYtCQaZ9DeyNbMAbh+4TZ9HAMmCyQQKnZvvRq0BmLHZZI8R70hVs
	 Ggr/vYLs/EBWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95DAC61DC6
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783083368.9989.7170158548940880710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f18175606ddb1e573357aeef246aaa9dc8e2d7f9eeb51d72224aa6931d9948
Date: Thu, 27 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787830833
