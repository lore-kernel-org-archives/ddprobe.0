Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53EBC14A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775429134; cv=none; b=Q8RMMl6uTN3PS8f6ovZRMfnT96Ym1yptqclY+abXhUHoyIu4awzpSmSJ4xd+urcRHu1FIuvqvQ5rMnCqdngkzAQwykyU8m6I0RpAxf9dtjkravkwL10ITYMw6rf13UULoKCHyF9xHZ/oi9eO5HRqHxQ1UP3czrq94Zh2OHnvPzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775429134; c=relaxed/simple;
	bh=qDva4m+I+lywFlrL4bE+qgVGyeWukxWE4ck8/c9Sck8=;
	h=To:Subject:From:Message-Id:Date; b=ip+oByLGmHxCR4feAwBWJ+lMc1+r4jaBGtvTcFmIJSn66WQLm8p3VOXYAY3/6jD/q2ZzdlFwBWSqfx3CajVn7bsD7k423yL5W7EkL8/eEf8REFliPJ5lrbrhT80n7NAqgYZ4OKZmW+VbtOl/ECkG/xhyfWNZRNCwlxopvoAfrcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqlMseA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqlMseA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1204C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775429133;
	bh=qDva4m+I+lywFlrL4bE+qgVGyeWukxWE4ck8/c9Sck8=;
	h=To:Subject:From:Date:From;
	b=bqlMseA3asmhgNXyygiOg4Q9euqNJNVbD4N4R4P8xGWrax3+pES+gTE/dS63c1wg0
	 bOLi2ueTQqAqEmFJB8ArzsSPuiPmzIKj/DcDGj5sQOsEUt/jAD7R5DzdMdFPIKhcqI
	 KvYGAiRWi9RFl1pw0y2xe2X1DZP397XOsoOYJLSPygfEhT/puG7X8+lSjQOwbMeOlE
	 ZWx/Gojpd6KqyiM5a9Zg8FHgOFTLJpKWXa8dlcAA8zfGTamcHxzREjuh/dt8fIM4uN
	 llWnAC2OhjaEeq8dQbpe7KEF24OArNkXEq5OdhDJW0OqkRw9/5N2Aa4GdSfOLN3LSA
	 IOqaixZn8oIUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE941E9D828
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542913368.15539.15334975612742909123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883c4bb5bcd0a71252270fdbc892a94666bb9432c55c4937dc3a5afb12eca942
Date: Sun, 05 Apr 2026 22:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775429133
