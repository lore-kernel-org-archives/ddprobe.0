Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96407262A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767357234; cv=none; b=cfNaLYhtztukBDBwP40+WZzU6dYqK3dr7tgBQDxROWT8AV8+5mjSurTUQPE9tJdv8nLLJZP4ZA6zUjW7U6Z4sS5boRfun2aEgpqU44tKtygj01oLLDvq1KF/YZtD2plnLnm8Moeca9K7agpN7J7qzR2dSsmD+pJ9zyVd6AnUFCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767357234; c=relaxed/simple;
	bh=wZxZF9pPwiriqXWqJDX9gbmAudBOvTnJ4eLkqsRvr4E=;
	h=To:Subject:From:Message-Id:Date; b=eRjBBInBu2bM2TC5uTrzPHiWtg7Ahj7vdUYkyI5ZcW4UjKGlwQZVOcvd3gODxjupRvfE+9nMJFT6GFMpHaJvkkhKac+HBDiqhHBfe4C14AlB62cMTZH26WoijVYhfW1loJE3vm2OSKb7VSFs9+sgfw9A/CaK1Mkv8slN8t2H3ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOcIUP9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOcIUP9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4374C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767357233;
	bh=wZxZF9pPwiriqXWqJDX9gbmAudBOvTnJ4eLkqsRvr4E=;
	h=To:Subject:From:Date:From;
	b=SOcIUP9ZNosctVJhi9wQGp/BGi+PY/xY1Jx9RkfuugyZwT8W97TjsnOZCvbnrT8Th
	 6rWZNOyUEU0wC9PsiZ1TR6Ga5f+uVzv8+5sH8cgdB8cOfybENemfscR7z59JaqQe8z
	 5uZQjn4L+e9PDzquMAakrShDLvZquqonjjKhVYkYWhJZNwuard9rXOCb1VLdDIG2ja
	 5T7/+TcYjTkjHvhnBUsEnaO4IN01l7N2TrDBgOPYT7fGEL//3hvOw5A1LdHx58e9gu
	 0Z7drwzTBnahoOf6xNf+jBiQ5hsU3qoNEoIA87AjVqUIRe1nYwqZv3CtM9Yl85b/Am
	 9Fv7BrI3LWetw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EEF6FA3738
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735723361.19136.793923926007714557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3418d1a21c0558f87f012ea67dad58719e6f54e57647e6be4a6a20343e1dd84
Date: Fri, 02 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767357233
