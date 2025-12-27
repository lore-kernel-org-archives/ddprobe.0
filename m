Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF9C238171
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766834634; cv=none; b=L0SgKd0Oe4kn3U3geYim9Pw4icDDH/fG2EXpWuq2PDFnGkxGxh0IjLWwVb04Z3+uJeTqty9GcoFKcxitP6LxXoQkQdbHQueZ6uPCnnPJTyKotIUUa+Pkb0aYO5HFmbLDa4zLRk++ivVNH/cFgLiIN1J0ENrWRAPgBmPTzh6TWw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766834634; c=relaxed/simple;
	bh=sLUI2JuYzpkZlD/2BBxtGlBkJcSkd/rv26vTrDoeeLI=;
	h=To:Subject:From:Message-Id:Date; b=vEJ8DxgapA0+NDrmOINZD0CLBQ2Z4Kq1blMF3lrR84tiZ2ce6X9/tqxayoitJRn52JE9a7Ajs4nZdXv/BOrYHaiYuriKU0ECR/abiF6wWpSDNhDkO6k57Wpg9548KvjnJ1P6zB61q5GhlQFQCvAy1NkCceGdOX1qhfXYG/b+gN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5VmMJ/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5VmMJ/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6A2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766834633;
	bh=sLUI2JuYzpkZlD/2BBxtGlBkJcSkd/rv26vTrDoeeLI=;
	h=To:Subject:From:Date:From;
	b=B5VmMJ/SySge7CUAO3mF+ou7Rp5RxKKe6WyR9w7wkkQlwD1lKVZOPry6Q5JP0i+si
	 3K09Rq9cVwtxlm6Cf3RRAetwGDOEmgA+g0BI1GxndGQt8uEgY2eheiiZDqDUa9HeEN
	 42EKeWqhHPgtKm49OVZrU1TSl0kCWMn7IdxNOkCUgbbyxwFv6kklRXSAnUZPBf7A6J
	 B4+i6/LesUT9DSOTzzHup0pfonjZyvbXUlbtqlHZjqJjBW9/KPXRjgFVAYqYBM+UU/
	 XPnQH1ptB0QHTsP2kwC843axQCz00Xkso7fnrngXXp768qkGf1BNVQKk4W3oyPHusq
	 SPgaMJ2OOMExw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9122EE8FDD0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683463358.25562.18069629460395242964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2afe9aaf7f2b13365ca318c1c801ff686d4c880b9c96f9b357d55ae77312a7a
Date: Sat, 27 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766834633
