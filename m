Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3149154426
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706542697; cv=none; b=jdxCd1p6LI4MRfB82+LtpidFfhwwimRjwhhv/0rvN8zPR+83VAsQkX7TGPqnzbF4A4k0THwsrrT+gN2uj9YfsWlD0kcZyAQ1CFj6Vh/bElPv3gysTj/fcgO5lkLCvEtr01WJdHoRUyV/qkHoPwIrD5EhgRVmuiM++iPL3C7vsKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706542697; c=relaxed/simple;
	bh=sujvBh6zQA+zwb9C6XuV5nu7yAyVPCRlMYaYmD3JH/k=;
	h=To:Subject:From:Message-Id:Date; b=Tu5wF/pmjGWwUFBsZgP1G22VU07/A8CNSnQ94tDSR6GcySrf61ZmyK2cwzJ0VVvZybyVhjDzlus7mtOJoo1B+jL3Lfj3xACsUP+W3Z2THXkK8mgch7O0gkxRwRwdKc6oSgDPYUtcJ8Mx+/Kbd5rukhPrP94rUEuOdbEj4FFLRgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOjwTR0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOjwTR0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C8E4C433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706542696;
	bh=sujvBh6zQA+zwb9C6XuV5nu7yAyVPCRlMYaYmD3JH/k=;
	h=To:Subject:From:Date:From;
	b=pOjwTR0OEIKGhPM89+CUJl2uyEYDtn1MgL5ydOGGpTjVcunLU5Jsi4s5ryI1+cnze
	 RZF7i97bVNN3mYD6XZ+dpz/yKxxes+XOtW3z4JT7ZMSvtvltHPNa6cvgrmn6RuqQvX
	 fqmwyc3Y+P+MXkoHG3HWfjQVtyyMZ5LusMfJSW98gCjOSZp3kad+VvGhmhmQdZ/qY8
	 cRY+SoXJ9c37EBK2SSYZ6eEfW49FqoLfXEzJxzAgzcMIcsQG7kZNYF55IHEaZroLwN
	 7cvzfAgUP7jiOwMz30ukwXk8pdbxu+vicp9KDw1s385KKeSxR6uyCDknliDD3xAJVZ
	 TnMPIxSrjccjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65ED9C47DDB
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170654269641.9554.13095060814242190847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a34188f407e8d62af92042cf16de6658f281f5cd339e125dc8d834ec4c3e802
Date: Mon, 29 Jan 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706542696
