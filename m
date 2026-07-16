Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF8A395AF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784194714; cv=none; b=H4bijzHQG+knFcUjSPNtx54MpsvDt/6NNvVjyyY1+xcdWJ6MGgz4z9eEl0RIyk4vK0AjZ2UAP8IzhfuRD8U+zabaQNRqqLn/l4dyB8e/14dYySbU35P4WwLkEHXQ/Cedp13l7lKi0hhW0fa5dEG3VBuPXo875wiV2+/PdNtUZrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784194714; c=relaxed/simple;
	bh=b4yTZlRMCpNvJGzxXKkdeZQ/4kcXwYinpj2E2alDg0A=;
	h=To:Subject:From:Message-Id:Date; b=tWMwg0RA/7q7hZSMx0UincbfMdRtaTW4s96xw0BadxIobe6hGdmZvTS8Rc5XhtXAKA94ki1Qdy0kLmOj43VQRyobObZ0oKi9nZz4lH0N60JGoRNOTKY2/Kk43SVwbbdr8IO9ZY7xPiaIzvhSxYUtXOw8i3BmoKf9YuwLkSyDk+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1pLdMdE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1pLdMdE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03ACC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784194713;
	bh=b4yTZlRMCpNvJGzxXKkdeZQ/4kcXwYinpj2E2alDg0A=;
	h=To:Subject:From:Date:From;
	b=O1pLdMdEiX9iOsdyT8ZiKMb7ii/NLyoDdpNUnQyU21eopuVN8JQe8lO2eNX/AfQru
	 jWR6ZXjK0CKG834BWhhH+XLay4/HqsTha+AVzoOH+OpvnVFUYxwug83yTMl1bOHH0r
	 ya48Hp2u7E1G6/z98c1ltj3kAcmgTUovVRv5P34R4+50ZflFmM+hxPfVEq3r7WVTDL
	 gDZtu52p+CTW9wKRrAIltC9DzZ6Ww666AwA2TK21eV+F2vG2wI+2Wq6S9Zx4FfIfk/
	 qgCJh6gs2Jstu58PRtnP8EucF28OfC8tkplG2/AvwI4K8/UYi2iNWUQRlGnakGBQIW
	 Z0dCYAJd1lLWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AA8C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419471368.29961.996480285215997216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96849abd573428a156859d7b806417861e4870844fd0feec18304490aca63928
Date: Thu, 16 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784194713
