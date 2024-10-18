Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9A123D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729264554; cv=none; b=i+VP22C17dDx8wmTfrMD3p2w3eLnyPfRjHMiQ5d1iCbfT1Vb51FcVUV0nFxghF2ThmCYGBx6v+LbInyyNr2RHlv8eheJu+NJBYLciUEKkUQoWpJpt6aHgla7Qa9jroCFh8A5+rmCOTVSMfDR/XFFr98lPj9G0T/D4X1QJcedcDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729264554; c=relaxed/simple;
	bh=frT8HuMBLRUPleur3Y409bk0Aw09d5rBDuMNUjfWoOk=;
	h=To:Subject:From:Message-Id:Date; b=fAiN5X1B8eJNWtruCV1UF1aIF0L1qs2bzwcES+0yvM7U7Ak8ui7lxIgZdJdMQIgOjRcYB7DYmYkQyu1Q5DzjEEJT2KZiVdtPb5+e8S8K/8dQHhkMN1wMj3f35JDO1VLzr1g2+NBc7z0EnSfJPiJpkKaT6OD176icFs9S/qsVVkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4kYtGVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4kYtGVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF04CC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729264553;
	bh=frT8HuMBLRUPleur3Y409bk0Aw09d5rBDuMNUjfWoOk=;
	h=To:Subject:From:Date:From;
	b=l4kYtGVQHWGUyZ7v63jMczyN6y2Tpuft9Y2z3UJsztSnrG3tFMeR128gKsQNUFk+D
	 QFi7QxRlPeKwUaxbdN45QmaXF5XHhtg9iMf8CLx1lneyfAl/fWiOVOxVE6DdMot8xs
	 /u9Jp8qcNRNI9WF/OTfHgj6bljYc5j+00YGykRbrEgOGTKNf9iKYHR25aSCs9t7eJK
	 mKY4jslHlqUbY7CBdHiXoFj9VSvzFymPou6yLb6Y4EfN33gPlife5VhysQscQq0T+m
	 lhTBhvfPVrBac1wB1oD2xUfIMkgTP8DPyGdhLi961EnfYfRvAuHQx90VvEDQdBxI6k
	 Riu0k6SG22I5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9875BD30016
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172926455359.24388.9231181251771240338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fcd89d3173b39d8c863a44374d130587626d36c80e13254a315d1a452e60196
Date: Fri, 18 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729264553
