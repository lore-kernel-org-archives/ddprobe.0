Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6932BE05F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770492234; cv=none; b=G9D4qyhJLTWSTa4uFoLRq9ph9JHoRiSnAanFjDMGOVVwEzluifFHqS8R0DariZ8jpxrwhZsbPfKNvy0t8PCJLHChtj3zGRXlKkIcsWGm8KfXpiGYzmo5nqpGdTZBIYt7hLgsfQLPMh9O2XesnfKofXwKYc4okvJIbDlVRLrmcLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770492234; c=relaxed/simple;
	bh=QOljg+uDpI5tdtIuGqyIck3JZsxjeNTeVQXPHHyHiP8=;
	h=To:Subject:From:Message-Id:Date; b=nOExQnEmzwCA+f0+tB6HkY9Lnig9Rhj2al16egNcZkkMkp9r9LGhtHYwwcgAZHLYPCdwkiOkTWe4mu2lwQ7uxHL5JbZu1dYYFx7Bk40LUVmBHGEF2BYZ5FVvnDEjfRoe8o5WVEKj3IxSTGkoPu/HN0C4WuuM9v19L9F03THrC74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCCMykhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCCMykhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47D1C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770492233;
	bh=QOljg+uDpI5tdtIuGqyIck3JZsxjeNTeVQXPHHyHiP8=;
	h=To:Subject:From:Date:From;
	b=pCCMykhyITQRt/+fc59P3gyijcme2r8eZ6WOzuapLHR+Gc1b/AMu/vW5K7EZfZ+JF
	 4UjKjnIkk3wJhYfNVKsGmTvldQYjw/z2EhlfqopPJZ83jXwa7HVVrhuXsmr9yXBqsJ
	 JUvUoi8Gh5e115JJMSQMDTmy45Fx77VB1ne0rfyIew71WhOATgM6FXaUsY/dObq5QK
	 nTfMOs2+gA6L8fSOXcsYE6mA4OLgsfEa7LOcajgOESLvmILSYuqZclwXhDKpZPjsOK
	 TJ0LXCfsXgUKcsv/PgGIXX5/91AmAzvm2AXv3XANnWhnoSMdoyueecTsGVRSHvipQ/
	 EytPH62f3f3SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6BEEE0AEE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049223359.16594.13806686370056940733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8dc5858882e2106de7abcaae73ce3766c5b2ecaccc5249859a845dad9dedebd
Date: Sat, 07 Feb 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770492233
