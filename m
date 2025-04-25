Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31297156F20
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745548794; cv=none; b=IaoAW7fZm1GD2Rc+2TUqoqmc0su9/SKzLFb9Z98emxzsYwxjT5li7FmiS1116uXI4zn7twk/VYNju/sd/57T8W87bnIyfRlhI8Z994eTEGNCDopFtc5rIuytXaTt0MSe0KpIeCdeTQaYT3Qh1dKC3mi+onoiphuiUB7CzF6PfdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745548794; c=relaxed/simple;
	bh=uMwKtWvaPMJIqElp4O+arreIYE+q3G+a0cYduswpqKc=;
	h=To:Subject:From:Message-Id:Date; b=QKuZB7hbuUmmlZEwc/PKHN5/nGGSR8EQP130rOfg/INWPQi0cdU94JsKWbOLw71OeaKV6BEmUug1gouGeU1qPeYHe48tb7vr8t1bOvT2ujOhWcWKxyUlAShyvUlx7W1Ti/cf91stCALwYddSa71+qXlZBYLxFvpbw24TC5RyNDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mm+FF8uA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mm+FF8uA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4F6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745548793;
	bh=uMwKtWvaPMJIqElp4O+arreIYE+q3G+a0cYduswpqKc=;
	h=To:Subject:From:Date:From;
	b=Mm+FF8uAA4CFF6VR/Z3fO88K8yYl01oU4jVVceBc1QpTOPrDcWdA6C7sJsn1TudMy
	 Net23E1h98OCGACz10Ov0dIdz5VISHvdhxRchocF2CcuMr7orNPFZAnb6mlCQf3uVN
	 83h10X8IdrzS7zwAZ+n/dU46c5yINhkZJNkN3JLNW/KlcJRCIeq0o5Osl7IbXegLJF
	 SeqzU2iF8Pn5j03Cm+I+gMzeLnV1lH8i2tMu0CnN6hTqNQMs2KsTtidhE7tXoxd6Dc
	 1AazT/LXVCUAokuyB4G9FJ2SaHfi5bcec9IhmUG/AW0uFHEzH7n4j3gWZeL9d93ljM
	 3YDKPJkIaXawg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F380C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554879357.30550.7292194632925444754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4ce8ab2fc9265404436e05e72ae45ddc35b6c13cff4ede42396cdcc36c52b6
Date: Fri, 25 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745548793
