Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B2921E0BA
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759419594; cv=none; b=GwJdB18Z0z7zgYqUI4Baq4k4s8AMKuIQ3nU1siLeS6Q/oUPQ/P3Xe+X2B5fT2XGOJ5eIT1Hh5/fDeUvb+lNKHOSgmx7SyfBtVHcKa/8uWepa+V2JYkF1m3zUp7duMcqMSlHc63sDmQ6fDs2IRSCrv4bJgDfp0Xms40qEKCAMY20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759419594; c=relaxed/simple;
	bh=YyzFp3XEgXEc6Yt/xYz/vjfE3HHFq/OuBKdN+wrk19w=;
	h=To:Subject:From:Message-Id:Date; b=e0IrPKtAQA7stlZxjd2kK4ZipexDNl9eigsnVd9BQQOe2AOzxUqHwn6q08g/bU44RFeUMD4pKfTttCmnUDBSQYnQFVVb9j1cjBwi+MBTu3iaR9GHk9S3tip0mj5odSpQW8WkrtZSw91JDv0GnFnTLf78R6wMiZBvskfyxmQkIuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4M5sa9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4M5sa9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A200EC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759419593;
	bh=YyzFp3XEgXEc6Yt/xYz/vjfE3HHFq/OuBKdN+wrk19w=;
	h=To:Subject:From:Date:From;
	b=O4M5sa9CyGM6VBb3G2GiuTKL3NJTfIVY9cGfP9CPP7zqp9r+yFJXyt5kME95x52XE
	 ZcURcBScRVH/U0l69/1uqhv6DlfdwuOWrMX/obKdEdDQxNi5R3Hl83LUOaPHfsnKAt
	 NyaAKxLgiPWSm67VZXxOJMDjfBjYXhjXVxq0x6/PmrET2dztpoQUlWVZ9bS+56Xv3S
	 MfbRBFcFORXK57m8D6s5ZwzhmPgyXac/JHAP+XSLe/CqGuw78j7eVKzyFdY8m1FmOj
	 RRxEme/Zgvyp6UBkrNegpAk0XroTngsu++JaSKYfZzLlGTxxgu7P1PiQze0rBYsVas
	 aohszXNG6ywPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCDFCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941959358.20185.7523831976238136562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c80384142fb604d87cee0fbfa462676d145ae5f89cf748a7b9c82a43b094d4c
Date: Thu, 02 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759419593
