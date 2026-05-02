Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C3D1E4AF
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777702654; cv=none; b=aohPW+sZr95ehwOKEkryQZqJp8t9q+4qrvZ6V9SWvNDcPHkKSRYTXGlYtyoalcW4esOdz9z3ozMiL4rGUjHj0ET+oxQ1BnAIoX+R4ZKA4vfa1l3sxrP1FLpwVHE3StAarUwQoQmjG1AqT673K6SryqEf06hjPBzLaz/325LL80E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777702654; c=relaxed/simple;
	bh=7HW59wobd7xdWzmqt+6ciDgCBZmVKAcxtOx45HJ0t4c=;
	h=To:Subject:From:Message-Id:Date; b=aFcoYucMr9MakSYh4BH+06ksFmN1KEgNub1MYExlGZieaBCgpWQ2OtIhyXp5i57HgmYMf1ikDBv9k8zuHvgv+5Ysl1E/Ltxw9L4sKDwQgrt9cBegm2t4dQmVg6JBNqRhlzrvTUBOVLy7XoeGt/mxFZFgSq9fQLAXUmh22OiKwfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCfs0n6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCfs0n6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C7FC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777702653;
	bh=7HW59wobd7xdWzmqt+6ciDgCBZmVKAcxtOx45HJ0t4c=;
	h=To:Subject:From:Date:From;
	b=CCfs0n6CkVSKMETWcikdWhPCDmKxSePK0idCOHFnukRZQ0BPSu47w62RGlJuQwg1l
	 9VGlMghzbGRNTj5OGhh1XCc5SF3EahEaQOEdZyOO0hqUJrJ3PFbpUMtwzZJQOHJ6CO
	 9JyWnKQa9S4eXiHZ7t8TZPZeWOpZ82umypd01kZseZChEUODMDYan04JE1LN6/JoiG
	 ZO92iW+xrhFeJH1zmPXAcEJx3ZuLImzT8x0jOj84rtMYIugRt8kYD8pDOpbFBqEs8E
	 KkTI9XL2pmCtGb2IIJJCKpnVuVOiID7vGMRMUWdJk6Tm6KS7UiXgmdyyQ+wGDhphh6
	 CaEJdbDZ1B5rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB96CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770265368.5806.16800582576634960207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f19d0a8fa1b1e56263f540b4b81941f6526e4691b8dde81bb5803a782cc775
Date: Sat, 02 May 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777702653
