Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404984AAC63
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791823234; cv=none; b=jFdxzo8KiKZAjNmWr2Jy3LcEuu3NhQ0rqL9jl4WemzUPshAeU74P8vSu+UmL/bHgUkE9LKMuk4JsPq2VtROXmeyuvkMdE86Jes7aVFBtwWUpzDhGnM3ji0NjnBeue4H9hyXmm/fFVyZONduX/tVCoopkvtTI7Em4f9Tkoq1xebc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791823234; c=relaxed/simple;
	bh=isDvRFWzxtbAZGyUBNj6ZtFs6LidZfm6jeibhX5I+F8=;
	h=To:Subject:From:Message-Id:Date; b=DGXp5aj5/EmKNOmv4/HJUFQTIho/7IKT1/6/nnQC2N6CxU2j2jBgFcLheBrwlxUyaybMNZ+rr9gpSHSj3iF0JT7VKgy6WGoCW1aTe/VudLaDG2FDaKzJMDQ0QyDgTsQ7j8eRNq17ICZpVGtfz+YonBKcNQjZbIicRwggke/Fai0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GL4ZSdE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GL4ZSdE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC4CC2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791823233;
	bh=isDvRFWzxtbAZGyUBNj6ZtFs6LidZfm6jeibhX5I+F8=;
	h=To:Subject:From:Date:From;
	b=GL4ZSdE3+kfzVzFPqAHsocAS4w00mMx4mH9tCR7GTRnzgIe/O9hdK9wOhNvno2C8N
	 Zl3ityJ2b/7cSodc1oHd4rtJRdVD+kmNYYwdAITE2NUus3RwVEhhuZWFFfsuOe3Rfz
	 93BrhSftMX30DulH0zmYvO0CKPw/Koh/oma9TTs07aO2/U7lxOmQOjfVI4rql88Xjm
	 i1ATgKd1dqLXFcQDdoDlyzsycGkEZ9oO84vRZtzBrkqIti9aGrncWQ2k4OU8iquSLP
	 i9O36IOa4g0avzR/L6dCGMNRM8WMj9IAQOB7wCLb1DeHFaeGWI76FtyzSBblc/VLDE
	 ArftsH93QruqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC96CA9EDD
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182323369.17956.7148329261210091040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6583dd4e14568d768de43c1e0b0d9e14575dd1225fbfed8d5642dc8f0b4677f
Date: Mon, 12 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791823233
