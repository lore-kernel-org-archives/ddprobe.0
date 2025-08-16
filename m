Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2B43176F0
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755327594; cv=none; b=M6zyYokaSGsNLU8sFpazb19+JEFqXOzOMR//TmwFJtWm/q6spZc8go+Q6S44PtuXelH5jpdl5My95e8JHFiPhTRJT2PxWen8nQFnLi3YMZXG1tNSRAYTAwn7nbxGqdHEAVn1oBBx61DH9giNRWuM+/kwHlHVQljAW9DOk9UOHPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755327594; c=relaxed/simple;
	bh=xgWkPdzr22vIWVjKmteDPBqZILzSiVzz4RDz7PqZv/8=;
	h=To:Subject:From:Message-Id:Date; b=NfXrrhi9Duk34JazPOYxREque2XNyNGF8AyWa9RHEqbWRHM2jJtG8v/LEvKsvd7FJdC+NzWv8BUw9oYpy4VVa/7NfqC5X2q08l3SdTktP3G+0Owq05dJytV6RO2B/Nq1MAAI4MBmGRosOz8FVYTqlnrw+ARzNMhtxbwSRgIlbJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhnU1ILU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhnU1ILU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA3FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755327593;
	bh=xgWkPdzr22vIWVjKmteDPBqZILzSiVzz4RDz7PqZv/8=;
	h=To:Subject:From:Date:From;
	b=qhnU1ILUU9hoTqc0mz+EwDn38dIyIL8BPrntzoK1B73H9kXXu+Cyp+XThXGH5BH/2
	 4Qlm8eRN4SsmP0fToWMHFCRhMpwHk7K+xGHl1VIkqu6cDXB6SOjqVY9rEj8MojgOjs
	 dwebrDuKLWc5Cggdy4L3togoDDeStsSqhwfkysp5dQy5jIfGtnqI0+yX1BXeyHovXt
	 n7T6CAUTTKEJ9vlxXEw/Gd2SYETuSMvu2AGX8wRRqFjZqMAvrhFc8p/ViL0YhhEMmJ
	 YhV4f+PhFAw9JXKd8THGU9k/hVGpiW/HeknErdWdNrPUvbpxyE/MRfBNpC+gfJS/oo
	 FXcuFuSMHyH8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFF4CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532759357.26992.10273730022453546710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c0c8183a6af4608f59143f11323931cfa2aaf0846f4be0b69cda11b0284987
Date: Sat, 16 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755327593
