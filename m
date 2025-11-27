Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBC77082D
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764263574; cv=none; b=fOBnmKu1UjOU1iqa9WF4bx3JlkeT7k02a0MwI7IgT1EJrbh5UPe/YDGGv/e9MX/mdB6SefAREkF7yU8vmfotDxL+Yyc66aiwN2iGb2C4Eyg5lTvX4Z1PkU1w2bAhrvBYAqxTjy7fbJ0Z0uf6xnyZHr0sOUACF85kcyCnxJ9v4Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764263574; c=relaxed/simple;
	bh=MDLGAbobYYSQZnZCo48aqiqzogCpDNqbYYnOeMoa8iA=;
	h=To:Subject:From:Message-Id:Date; b=rq8+wBs+7yhvdXoAwzR0EMPVpI+dTtZhRJYmuBcASKmNz/WWfBAnxDvtO1y6q9IR7zLr+ewvKBIJFculU6o7hCCOz9Rz64Tmn7dXnyDqxSBetnl4Gm59bRNAXZ4tC5SltBiJLrnJSkFycd74fgNUUNPQuZMgoeYLJpj3R3SrOw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psiAJYrN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psiAJYrN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34CEC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764263573;
	bh=MDLGAbobYYSQZnZCo48aqiqzogCpDNqbYYnOeMoa8iA=;
	h=To:Subject:From:Date:From;
	b=psiAJYrN+rleJF08sx6yAFgCbvqr40vX0G3RnWC0RR1oYR4eQ7rP8szTkvxX+lSe9
	 aej6a8eBRZ+tiETYMkjRihJodW9E/GNZ1z/JVq6EjGgTYJjnNDpL0PekPDVBB5CDvx
	 Va5RWg2PgoHLAZuKsKCK1DLzGSSftpqftNa6tcHu5QvJ3RbypzSHm0gnPCVtabwQGU
	 Zv+ro8wMBdq3NQwKGKWYTEj+/3F623L1uLp1aRWVoftKa2EzpyecLdcn7KpqG+trur
	 54vqdLWJZl1hzOZ8vzLMR5ZLnRyxjDbz8hW4EN2mkmpWzyfkodSafuYaadrDhPUuem
	 yBBNUt97LYLKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91942CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426357358.9544.1244251653167084246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ca9da3cb60bdea1be61014f46bd3c6936692a2421c76b7063449fdf8ffd06c
Date: Thu, 27 Nov 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764263573
