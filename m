Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE6622DF99
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760791794; cv=none; b=ls/hrxd8JSH0niDS3vlaKQl0s5IwOuG7mIfvdKZY4MECmZ4Vr/EBdyF5iTW76O4sxby2K38uI89Q7OPuyg2x6zoeWML/6kMz6/oN9mtGoBhtwQuxnOM59AbC3QI3bjTJt9c9SWzFstiy8K9Y45iuFlsHcfQ4vLP//cR8l+c2vYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760791794; c=relaxed/simple;
	bh=0E2ZhgEInJq9j8qE3ASCjWgUQu4If2lL765k4GJ6LUg=;
	h=To:Subject:From:Message-Id:Date; b=PaiL/NQai5tqOhsUuSTt/dC62buNtNSMiAG8sVqwnVR4KkCKhs6mqldycjeLgFxSQUrUzUgR/XcUHJddXTNzsgWcWUEGY7e/+9iH2Rgccl+74fPVvuA2Ex8NTl4f9ocPHevFQ8o9sOBdQc/jMtPTwb0LUJM29Ipm3G/apq4TFCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjSVt5s/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjSVt5s/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A345FC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760791793;
	bh=0E2ZhgEInJq9j8qE3ASCjWgUQu4If2lL765k4GJ6LUg=;
	h=To:Subject:From:Date:From;
	b=pjSVt5s/u2Cyu/gOLoSDFoupOYslBU6eSrXeT2AVav4LLGbY6zoQNLqm9l/oOqukd
	 AEAjuZ4D3o3WM5g19vrz/clCeXQ8uozqW+ltA5KwARXay49WEba4wxXIS7aVwWapn6
	 XAqa+hAWEl4m0j0pSd/0abww0SNaPMTPWVC17D02mhsI0skpF0KKrG9Fl6TgSbSLSm
	 YSMyb67G0qUX0R8N9b490OGyp0n/lcDiT71Q9jsEaYHvscq7SHXFDv08Y+IgBm1ijJ
	 kqb4mi1M8vahNZNwyGPlDsQpLgq9RdVNflPu6oOTGfFxu4gziFLinS+g9zWD2X68y+
	 Ogn3oTsuuicXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90580CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079179358.20723.14639714999947755990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3aadfd70c3636ad4153769b6e93327b5379ff0eba1c92b7b883b4bbc68657d8
Date: Sat, 18 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760791793
