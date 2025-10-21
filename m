Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B54338595
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761059994; cv=none; b=iF5w4+Ix6y9pbsQKMIAXzWfzCiUDYl/bwMMH7pnyOGvvY0V1w0s7Fs57gWEK5aHHwNUq5ZKt3KSidXZKhRyhciT74aeIpD/fpdAUC2IS0y/m0XcJqD/kuwQN3TUfEUktSxkx3W2JkHZOo52YFaPAj1MV4Orwdd+PbAou6rP9KLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761059994; c=relaxed/simple;
	bh=tC8BYdnddb4GOC0Pa0Dq3dNFv5dqXRJiTlqo4J9FEds=;
	h=To:Subject:From:Message-Id:Date; b=J9kYtjFRewQNPsL7mVDAuFeKohSgtFCdh+gk8ZWAZlpN+6exvViui+pvqi45xjGamfGAVYbzyFqubcgy1oz2AunMl74wNU7k+rml3w405Nq67cROgiOzJuN8kE07FttTujWqWFiy8QEEp8l4ac18Y/Mb1QneRWLcKAt/vYiBQxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/6+N65s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/6+N65s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C7CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761059993;
	bh=tC8BYdnddb4GOC0Pa0Dq3dNFv5dqXRJiTlqo4J9FEds=;
	h=To:Subject:From:Date:From;
	b=i/6+N65s6Pyw5yrwjKqsOhTnwwyaNyncxJwuMoBWuaQj0FQG+tOAvnsMaydMrK2NQ
	 dZ0KNgNtF6edfXeD8zmhejb0M4gxN5Q1IxKDsIvZvKH/0bQ1cuYGgDGt3blKe9VWCG
	 mSOPUvQxT65FcYTaLR34OrvPh6ykvzWU8d+WzONuw1iGpcdRTjvglGc2BbjqTJQ1ny
	 iIboMxKL+XSogS7xib/CvGydlxkKhSvjy5MdPxdmAmNcReThHAXCWYwTz6Fmj635vm
	 tw6cjKC5tc6TUqWW8RDHcc6z4R1ntHOu0ZtmJx72RfrN98ZJLwTt7MBQcyYiXLkkg5
	 BgWOPZYMYEjjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96378CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105999360.18408.4254431714695849399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59030837c88a6b5dcd5c70415cacfa8a2ef775fcc085e7aae4d92e0de731e710
Date: Tue, 21 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761059993
