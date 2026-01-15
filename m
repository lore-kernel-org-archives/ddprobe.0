Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40AB1E5B9E
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768465434; cv=none; b=H+SEosDsaahcdMurG6CKlqFnfUx0CZb1hvTAAiCZwPWLQWUzMOXO5+90EUUQ0j0/2T90IMgdT0yRjsKUWPJm3Um230DsxIqP+VMc7fEA+mJeMn5klMzcFiluh2EAkVH6JZCxdqwJjO02uuXAL2vIbJasWl95RMR28Zb0YdnAEUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768465434; c=relaxed/simple;
	bh=V3ZBxBAbhxPwACRjByZN+VWcAUvHztt0YoI1++Mok0k=;
	h=To:Subject:From:Message-Id:Date; b=fwrQgNAXwC/bSh2ztNpRrr9/vHWJdnbikn9QcdE9kOqalCT77NqXQAhSrcyM8hsJB46m//O6pdrd++jcZnCGMacc30TAP7aYN0By5+Kxa7NmzYmH/lHkwHFb68+VEhYnGqYMpH1W3VKUUWhfsexlTjyeB0fmFZ92GhjC/oU8gkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfcaAmWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfcaAmWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97D2FC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768465433;
	bh=V3ZBxBAbhxPwACRjByZN+VWcAUvHztt0YoI1++Mok0k=;
	h=To:Subject:From:Date:From;
	b=sfcaAmWU7QQ+4Kc1u8wMseaoC4lN2zvSbLgn5lPrPdTAH1hCr/uRWMxQ6hm05+SHp
	 xPqozB5AGBPQF0f0jH07M1pNAFhZPxvsS4cTICRC1fOKxAQrz/2H+lCLn7XFKKz1c7
	 ezoX7uiEYHTVNvRdGNkSeBZAKxYpdrZ6+ZbXfHyA/3xPB8WpRw/djuiiNqdhsEHoX7
	 TlUQnJY9h0m3ic1MX+quGkRFV5wTKP9LiNK2zciJCcaUBr5UP8bOE198uQ2llVl7K9
	 AsXx4LHSxmW9lKIgK/q0yKjjwExvSOICBxqHktsIl4ErBKATJKELArlhdaYcBnLcSh
	 MYwGGPTLlE4pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC9BD3CCA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846543357.29586.14952329690642446500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28fbf351adceed8c839e9ff0639af825a885b3277157d37f6ea653bf95dba9d
Date: Thu, 15 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768465433
