Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516F81A2C1F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719530063; cv=none; b=QAjzJWdXlagj3zw1pxwPbmmalSdyiTtE6zvg/xq5WbO5XjXUelOa+JYdYfk6UaA8k5r5/TjTTQSD8kgUCDDBeo0y2C0zx9PJuqTNyUTwkSYSQNMErIAUZL/of5UWS764tpUXHp9sjB6uUxFAW50wXB9z+i4J7RUX1E8hDPAfjto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719530063; c=relaxed/simple;
	bh=YGqglzfCgvYkRwW2AHHMzQ5vivw1Qd4Wp6Mn09h47gU=;
	h=To:Subject:From:Message-Id:Date; b=dSzLMd/DDoseyKeS+jQitta/2diJP+XvmiENRBsSB/+hRne4gNAGx8n0rxJEkzhPXV5aIai+y/xl+WSWwj/WKGt040fsaPGeK3T8CUsfhEpREWFN1SQUfUCQZmgsO0ODg5l2GtiNkzCuZut+UWuoqiL1MQnJxzIAM9C3qcthNho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNgpsyeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNgpsyeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4603C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719530062;
	bh=YGqglzfCgvYkRwW2AHHMzQ5vivw1Qd4Wp6Mn09h47gU=;
	h=To:Subject:From:Date:From;
	b=BNgpsyeXH/7AzY9IEFYrnTQG6IQlSYHq6SzmUYM5LeuNMuZBl9/WeLt0NZGu1raVf
	 BMXWBmAKbv0H/CKsyAYvM1B8R8MORG1Wkb+sTu1Yo7B/7hdT4DoaanVzImRFlpW65z
	 Ce6rDewlxvp7yLQpPFPq7SZrLCw7M+56dfeoa+CFqCoJ6eUgfD4Ft50PhVrYMzc8qS
	 75gYQfZvQnwMcOa3ycshPWL9bSNl7eJYD38Pc/DitnFTUmJbDuBg1gRwl+3BF/8+J4
	 yQOMfoJ1hQ0d0r2Taizw9W2EjFCZD292udlSx8xBCUNqYXzbjlsVHrZ4FyaPRmxyU3
	 7zNstBPnUVhFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F93C30653
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953006279.348.10565360939932417891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48748c64dff53858b8773c3f37d7f6a8aa8ffdb7377d578ec44a52531172566
Date: Thu, 27 Jun 2024 23:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719530062
