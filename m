Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C00443CE42
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792308634; cv=none; b=r1T+VaLqvCbVbBCVktQ8PRAvfzSX4B9h0G0M0J77Dg65A08+BDzADpoLm6rzFI2S25tpS0k2JWbXFJybDUauj5t0KfN+q6qpniup4N1UJcxqY1NYS7WcOmttLPMiCgnUeQJaOgDYFX7xLKwxTX6OWlF0J+U7O/+idkMVj/GTHJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792308634; c=relaxed/simple;
	bh=OZOIkfo03utvJj7tbIcPwFU+WLprn1k3oJtRWWo6phk=;
	h=To:Subject:From:Message-Id:Date; b=ridKXIW4W5KFinxaO5dN32FMepecFn2yTl3caZsrEZOWRIB81hajndEqrV8yEQlFVO6/TSKyLDmBHAaQKq0ENrfa+pmAoh3RRvIbxScPfmgS7ngGjVd3MtfvtvjjFvvokhoE0hvywFOjU7xTTDZqFgHVn9O0+WqPMr8pHMKIXcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0cmocFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0cmocFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD565C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792308633;
	bh=OZOIkfo03utvJj7tbIcPwFU+WLprn1k3oJtRWWo6phk=;
	h=To:Subject:From:Date:From;
	b=T0cmocFHN67AfM06RNoJPPdy5OnZU7gpcxRjdYjCPPrGsVGqnw2rxsFZ5i+/DCs0M
	 UNcghzBk/URSh/i3IPXy6Py7jSiipLQxb2sc/EMxfbrRRE6lAVbrCiz9VD98My5k6M
	 rROyN2xUT8LJ6LaIF8FvfmxkmX7xub7v7v/OyMzgttgB6IXUViqGwN9sMw8q2+iReT
	 MqxgW45vYeaZgzn6NOMf3zcKDk6uOjWGMEuBbRkoKAQwm6AGWBWlW4C6424CD0qem3
	 O2m7crpO3sqtcIG6BMLINMmuW9p3JJZFKjOhqGEbI6KVJJSwjD5ex0YMyDL9GQGfo2
	 Y7dqaYXO1RpRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9834CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230863368.6077.18159062706663155094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fef270fe32d22bb4146f660336f019c026f5d014da0d757d9dc9af302c32349
Date: Sun, 18 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792308633
