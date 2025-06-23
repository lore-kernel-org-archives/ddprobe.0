Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1256523F294
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750678194; cv=none; b=clzdUqyXbpiE6KqQFjH/qx3WAyAFZsOSQ/cY3hFUh94wJu0iPwhx6X3HaevlbZ8ENmxUI5r6Gtc1JPt4cCpKLoUDva6DUGnz3VnUkF2Syv9M8Ewh6suSHIhMjPwkrCm65CYe+kFntQNzLFo3fmbFsT13w5lL771aU9nfP5jw9Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750678194; c=relaxed/simple;
	bh=o4zeKy/qvjrAPBJiRpXBsuDaKv7kL/FNQWKipp9o+g8=;
	h=To:Subject:From:Message-Id:Date; b=QwRwdYwf7H1QUrHgbTdBshG8UpKfR9yyMwYUsvlsJ9X/9Itnk75fTh9y8rqtT3U0/KQPg52ocTmD7ElVi0kVtspPnhdbxVQAwaAYZBQuzXcymrsbC/Ig30p9N4D2GZeaoMmdcowxQ1ZOEsLmpwJs526g6OkgkRbuQTAcmlehf8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGpaYyY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGpaYyY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F007C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750678193;
	bh=o4zeKy/qvjrAPBJiRpXBsuDaKv7kL/FNQWKipp9o+g8=;
	h=To:Subject:From:Date:From;
	b=cGpaYyY4MGle/K4svBa7yB2VYyBYJ2zotw4Plxc0PIPZP2adbPFm0mG5NVtq8meNS
	 SFQysSeGxej5auZCvr4VSQgYRs39eb3m5TaxguMZGh079qAU/1cfRCWEJ4l1BeCvCx
	 +gGOpkkXCuM/KPdDX49fFwBBWpBqDzXlpJvmJm7kv906jbQya4nU5hvcP0LhfPROkl
	 FN71Gb3zKaGlj8o7UOb+OiotJj/89HLTmfmr0xwVfQCsDkki8VfxF3+EGzTOdcjeJW
	 aHlJF56U1QwtVUK+hfT7ADMfBk9W0dkA+OUQNfdlP5DxmYvdtmx9/EUK6BXzpPvuvn
	 BZqu/X+wZHsrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA9C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067819358.14593.4869842392429832745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ce7046ba0d9645f48f50347ce83771faf9fb7dd1e43454b35acb3f22cbff34
Date: Mon, 23 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750678193
