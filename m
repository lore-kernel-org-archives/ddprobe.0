Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E5737E2FB
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769903034; cv=none; b=qeqhjzCc6CEe3NxYMhOwS9CijWI8PLkL1SThqfZEN4aVjmuHsj/gEc1AWdJYhZlNAco3lMNzyuri002WKkho8xJFlJVtwBpvOpVVkjnz8f/XnGcGLomgY9HqHTuq9LN6y//agl81ePFQZbMbCcV+cqD+IANQq5GaDRy7QH/0zcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769903034; c=relaxed/simple;
	bh=Qi/i3jjLrXUqyHuMujjwDbWydJkXxc9MInEJ2nWzKnY=;
	h=To:Subject:From:Message-Id:Date; b=Ta5dgJVfnFvWd8g70aXyJnaz7Tu766ZNI7g5dVRfbvl3E32SOZYbTQu1LJfIML89O1/0hnpgbN8LFYJqS5Jrqs9yLHtLhr/giD9Oy4f2yjWsFgq9wL6BvZTr3hhBDrPTb9U8G/tdqsezHT0WnavcNPjxRZNITb7hTfRSUe2PoTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhp8ngwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhp8ngwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AB4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769903033;
	bh=Qi/i3jjLrXUqyHuMujjwDbWydJkXxc9MInEJ2nWzKnY=;
	h=To:Subject:From:Date:From;
	b=jhp8ngwqb8VpPqBiOQ9aD2XAJo0SOB2+gIFaUn18J/EtZZXoDsASsA+YSoJkeX+fL
	 6TDAUPGQ/DaLmSI1sI/fxhn5v5Xw735mE62OK628qCH6jO3geOAZg78p1yzSH4pPwg
	 P4O+HXJHRRnUi2MztP1s8cUEnK/WnqEtvGMc9bccG3n3nYguSprhzerhbbTO8U/32Q
	 aKs5Mn2ibuY3VymEO2RuVhy3zB+JbkZ4zVqxgrmCbQJ0KnNU78/Uzwnutq9d9/Vcoj
	 qyMpDUN+sXn/J5wjXeA8dc2MC+A0BZayrJd6hDg743nvee6iyQjokvi+CQZVLqiY7m
	 Id8Gg9IVzyi7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D47E7C6FA
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990303357.5605.828133208580142154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a439a57afa503d909aa3e1a0f5875aeef2a2d0512eea606de662ffc5afd54c
Date: Sat, 31 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769903033
