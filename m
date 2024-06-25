Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7581B2572
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 10:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719311603; cv=none; b=GRTUERbHLj3qHwJh/TdRPejzShFrZIXuUXTav/TbeaRKXpaHbQSZPqxzvlNunNAGNAfxUaRINDZRPX+tH0LUCWTaioe1Mm93UEaq6Us/9tIz32eW0Nqeq9hBJKNi5tPh59NK3nHBHPlItemi7frw+6eneHOzX+OXYjO/pmlcKiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719311603; c=relaxed/simple;
	bh=RkU5B7BbZXDeJ3uMXfdJZkkt9wH3BsSIls+H/vqQYes=;
	h=To:Subject:From:Message-Id:Date; b=Onu4cn1g+O50mB2blUTHjQx3r2xnrKVXRVqqVKKg+CJB/ENADKudKVaYltNENQvPC9jFErTDO0ofNr9l6HKehOir6cCeVsta7Wyx0edQMp6ppIt0Q5ZxflSJTybbAzHCxKp5Axk2gFeTVjtZ8YinFNLMlYOzeDG6XLvXnljJzGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gp4KHqRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gp4KHqRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E54FFC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 10:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719311602;
	bh=RkU5B7BbZXDeJ3uMXfdJZkkt9wH3BsSIls+H/vqQYes=;
	h=To:Subject:From:Date:From;
	b=gp4KHqRv9eTy5pABO5C9afG4VsP/4TkJohcSy4JilbuMro+UErBq3cVCjD1uSd7P+
	 Di9jbCTH+RV+UbHbd5lOqIO/sF7EknfRyhY//7r7HQaAdtaDfFp/r4OFhN3dpPVAT3
	 2UqPtF2SztDWAp7QvQ6Edn3N9RjfdAMoZIkFQl41eDDtCxae1dWR3joXwSc3uaxWWP
	 66tINrHUlkBDX5lnHZEMIZ3bDmudI0aoQa3LlxVe+xQMnoCFpzMzTZCtrbWhXUAHKa
	 sRF43ECcheO5Z4CRUlD724BBQlVrSs9fK0bl/2G7aKVj5FTnOX5XZwj4Jf5ip315jW
	 7n/pgf8kYoP/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB91C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 10:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931160283.3720.6547163781750438496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 037ed7f2b8112da6d759587308f732a1e72df3fd682408910f944ae1df8e6c01
Date: Tue, 25 Jun 2024 10:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719311602
