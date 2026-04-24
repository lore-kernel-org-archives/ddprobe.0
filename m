Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D572D334681
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777013853; cv=none; b=iaPv93pqcaI6DkWXSqLC9JLMizYAX1YiRkav25oVoHTy8vqZ4LhNDcLEAE3zLnfXJPKW7CTE/CbZ6qZc6ma0XXb2W5vmZuHIsjOyPVBZa8c6SwMLZIEYiOhjwktV5+fKSACpPW8EY73dMNERruzPmBDIQx11+Gut992THFnXtrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777013853; c=relaxed/simple;
	bh=NaeO1gafG0OosHEkkJWzBRfpi4e6mSMFC+Ga/vt+kKg=;
	h=To:Subject:From:Message-Id:Date; b=GwbNKZAMO/zVfNV2tlk9LATpcipQKsM8JDBsvBlymvVAZWzUo/yKIfrBt7wTg1v1b6kx1iRqSijKRnmg1WkyrndikT8vX0VeX7K/HWIK7nW83jU66GBbKtfjof+rg3cgrYyxfv9J0938gIKTnxc78bf3Sjs/Sqsl/L+lsOP8LqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kU/SYpe9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kU/SYpe9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9867C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777013853;
	bh=NaeO1gafG0OosHEkkJWzBRfpi4e6mSMFC+Ga/vt+kKg=;
	h=To:Subject:From:Date:From;
	b=kU/SYpe9rMPs9beRXhYUx9pWRYr4pIdK5ubMuldjP209UjfXz/ijG/lOQOigCdh1h
	 N6NMTTcDI7xkwFM9TAoWWgzoNgrGg4Y+boftNEXap0sci7rHLj6qsb/m8bK+SGNk4z
	 ua+Z1AF/+fuhbpn2Q6b/d20Os/6Q8qXsu0jXKAemcYOwuKB3sP9BnHxVc+TS8xuAdR
	 2bbTO6F12Q1Bw/Sap2Sx5HH9MBuGNcnX/0S2HRh9RxUCBh/Vnau/dXy5wsprAUO3LQ
	 ZNCWLyNyelFd9li/kdcS48l+ip8P2iEUfqoIPg9aSX1jfzEoOeUpqfJdkB9LvZHG5p
	 SJqqe/kQcaqGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1F5FB44C1
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701385368.26623.11415985282287504612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73704cf30646532f4093dce3c67d462435ecce78d343bc234e430f54e098dd17
Date: Fri, 24 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777013853
