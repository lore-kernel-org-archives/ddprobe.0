Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D312C181
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763866314; cv=none; b=rEXopPHa9xB4ry6LttkkzWrmjqqEQyjun6I1LtJmSV2g18rNOdbYYF3zH1tIBgLP8wAvQCj8OAe0FQ9XIWTr5NwKHpRDBUuBDSMlyo/gc6mlEU0ObJEaJc/7L+mhp52iWTds3A4e9IVf3V8kDaypC/O4BOsut2zbvPQFgUaOs6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763866314; c=relaxed/simple;
	bh=W2c8HSAYIASSwfHKspi5kStaqWfZtVXIoZ/rbFrrmjo=;
	h=To:Subject:From:Message-Id:Date; b=ObBNAIxeDeM4905rpEtUinE+U7zBMA/qc8mq0WWgkdfC1ZwiBtqm5JDUYDr/pCFl64j6G1ZEKP3aJtx6Iwh6cGMbOeDDn9paghH2KjaquHat0d0sPHOU6oIEHHhlbynpfOvQ87hiYCRRgvnUbeAN7HysVgj6HGOjDmvNlpgAFPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLVcR891; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLVcR891"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A967CC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763866313;
	bh=W2c8HSAYIASSwfHKspi5kStaqWfZtVXIoZ/rbFrrmjo=;
	h=To:Subject:From:Date:From;
	b=eLVcR891YaKgkInb5pGVQQORxfwhoVr0DaoQS1fDR3qTEJQV9MuyChFIL1USgdgiv
	 7Wd6xWJdF/lwDmXXf2eixZZfzJhFe1Ew8TyyFtFCvLHEAQ/twGSTvDm3+caf2SQIfB
	 DvCeKIfYfpx+sYVljvzzxre4pZQT3HS+jDPq9jxchi/QWPw9+mY/HvEhBYCei+fisc
	 kO4G+nqUHukQq0J7T+bB360jGUD4pcv7LHtMOKUCSRQLeOj7pP/1KWKF9Bz2WCkfdr
	 ZSCkVtUZyQeEgFYAaR41vj4DUkLQbwkcx/7N1D7qEumvWl0d02xYXiL0dmUJdQVJ0r
	 KjV9KsvquGT3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96832CFD312
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386631358.8562.7747618936511435498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295216ed80aade8b3b895002e425960cd86b6bba738c2991649b06e2b2778253
Date: Sun, 23 Nov 2025 02:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763866313
