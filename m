Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8E53955E7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780485274; cv=none; b=NqdtutT6Vj0opbz9q0V6Go9ccYrCsPrtTPhzkoI2Bi5cnqfobySYx8yPrTJN/WJ9F2FrmbRw7LjOjEh5zneWVMNhcHPu1QcIUWGEAMUzCCZt0G1PVBqR7zx0zgoQEdOPBR8X9N65pu4LPkzErePea3gdizDkEKIZhfufHvOTYwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780485274; c=relaxed/simple;
	bh=P3TGudXQ4QwAciDp0OMbw1kkEdhjs7BtQ5EDYVXfywY=;
	h=To:Subject:From:Message-Id:Date; b=Y9MLY1OTIFu2PX9+e8zxSU90Hn2Tz7fEfCbaLL3iNqXEmmlmnzCZw/M5HeN/GsqA35Xe4ODNPZgtta1lDkFWCgfsBHR7GQQFhhO8ql83cVdyRVExaEm1yHZ60GFZ6Y2MS2cuPB9zVSIAmKdVSV7CJi6q23Dyh+xzHeBT/ZjmMN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zvv95k4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zvv95k4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2040C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780485273;
	bh=P3TGudXQ4QwAciDp0OMbw1kkEdhjs7BtQ5EDYVXfywY=;
	h=To:Subject:From:Date:From;
	b=Zvv95k4DDax5gunYYyd8m2n/qnbpK6P/ExZUajF0axeT1ELDsvnUSI5oSrLcTIZla
	 pIX74w8E2AiE7agYZCA8cyeWLtlC3Q0EZUhR9eoC9dbpfejc/Q5zW/zuZYVQqSDwOp
	 P1E47tCc/P3yknvwTzYqBZFWEcO8vfNhWf/cA9ClotEaJ/HcqxFiB5YWd6Nh8z9Jiy
	 wS1w88viYVtaOe0A0lC72rQVnTcUGpevnYQsNDg1ppTqJ2zFAZNJwT0XFbLK+a7jk4
	 2+/BDO8YSQkewY8QNnUe5j4f06o7clyMMGX+YqiIHCcsDysCRAG7Zmpm3gW6xSJcaK
	 2XO13MCBpWUww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A892BCD6E56
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048527368.11600.3812201091094120057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747014c3066ded4cd47ea1e4e189245de991631fb4365658017fa9485a6c2ee2
Date: Wed, 03 Jun 2026 11:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780485273
