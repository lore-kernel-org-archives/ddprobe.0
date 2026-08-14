Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC453E2ACA
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786709434; cv=none; b=kYF9q9CA7iAcdflhZswN45tJfOQ/cPbZfPTRdcNKoE4WNBpDL8UmkNR0Sddg0Pw6XP7WSrUhiGt65e1kwVJJS25Z7OcJcttuFf93iot/Bdcr6keIBVcvM4YQTXl2nQsnAOM35YAxXjoomHqCwvQXuw+5RzKMKbUhmKPZwfueK0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786709434; c=relaxed/simple;
	bh=7/le1c5f2DwGhOHRa43g65nlYrE8VNyHx2548h+EO/g=;
	h=To:Subject:From:Message-Id:Date; b=tuIdcIa81R5hNpuh24GG0T22t/fU8rn3kOicKtHGYIsklI1eiFOo16KcCKK7QdgMzYvXYUzqeZtMaE63bk2qGsTboK4RFq227NRQvN4S3YmRRR8tO2uv4LupreFcgNQOFLHoE4hUxDZjWfXe/lQKRl1eztlw7zJ1f2YfoRUEkzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5G2Ajcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5G2Ajcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC064C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786709433;
	bh=7/le1c5f2DwGhOHRa43g65nlYrE8VNyHx2548h+EO/g=;
	h=To:Subject:From:Date:From;
	b=I5G2AjczGsT4pXzqNrw+AtmypEDtveD6eE2FcriUJhoFpLq/HxfB2URijfCpF8HO5
	 UI5f+t4NZ0ED5AQQxi98baQG/WR1B+grT1Z0VbAOVZbilsfV+Oog+ozlDQxXnsUe8b
	 keqtzCwGWD5Q3ifTKi04Pyg3hP0Ahb6dkFfaNUqaP/t5PVbcbh2mJbNdbTeMKXXz4l
	 4AE181DeIjCL/n0Djnlr70wgBwlYxDVUNQJodKfDKlOn6b4GIORtnEgF7bbU8Wmnek
	 5WB20x2WJRVAXPIiE1Lc0WVBsRVdAV37Qulg+f04uEAtYtkhi8coMvWNSQ8QfGd15d
	 6xlaRacDIXhgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B96C5CFDB
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670943368.544.108324021090070831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb25775e55ffed0bb1ad8704204720eac652fa521aeae5678fff95f2f559665b
Date: Fri, 14 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786709433
