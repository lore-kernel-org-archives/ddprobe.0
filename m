Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D0837D12D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772787294; cv=none; b=j48JOiffsqh/gkzCz02sgedOEBtzGzk9mk8UqYxeha6bos+bJCNkPZMXHj/m2n2YjG0rya1ynt4dnbF+8LdcFY6o+ppRGNo3ZW0aqeF8wn9W+z1ttZt7eondOwgC60tV5B6vmLoBor5C2pAm88Fk4ZtDc3YOHduQgjlV/NJWFjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772787294; c=relaxed/simple;
	bh=OUMwygENHQxFWTyl8vuvNXg36Lz+Shmabe34zCBodUc=;
	h=To:Subject:From:Message-Id:Date; b=JW++8bd5DDJ2CNVAsC4Ypu6j+MEJhW+Mj9aw76cis53wdGrCsbMNtnTMdJRAOgEWQsPP/QPjP7jGgyYXUyxCCJestja5nYw985tdCbjkZeMMYYQSRW0+Q9Q0BXLucxDrVjlcKjLRdBynDhImoQy+RcN02k7UCo1HS7BRA8cU5uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJEtlcj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJEtlcj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EC0C19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772787293;
	bh=OUMwygENHQxFWTyl8vuvNXg36Lz+Shmabe34zCBodUc=;
	h=To:Subject:From:Date:From;
	b=TJEtlcj1eXky+aIvgy7vdujes6dm2YREdxB0iOHUtzOVFNqcESbH5s8dm7s5T9fUy
	 117CMOJiww7LcZCjDPr19kzXHL1qzcnlKD1jwVLJK4JuH0DsrfiUmIatLaZSkixRMg
	 N6eVkxpxmBlpwHdblL4HhanxlPowhsdrE6U3Wndt3MFyWKQ9YmBN7r4CP4A8We9eNE
	 p5UsJtkui6q5oi1dFEZnr6i1HZiKUsraw7F/OllJjsEG5KRp8AYx69RLC3mYCmc8RW
	 0zcSgB+70B5JE8L5xnPfn45UCRWrzVFhrkc9MpHmtaSffD1NZynDo3nvXCUMTABv5b
	 KiaBXshB8+2oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D07F0180E
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278729359.7389.15464534114191681659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f415434f4275ff5f411f65ea589b44e2aede92c4c9db240935894dbef9b34889
Date: Fri, 06 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772787293
