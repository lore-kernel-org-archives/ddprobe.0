Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521422222C0
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748600995; cv=none; b=Dy0Ep2ZmS6YoL2wSfymTVCTCYcz+darzVG1bqhXIjaDXCUU3Vf9FJDMorN8D99hn+DJXN1h9HEJP7e48lA9c4Sf9dc/Cqe/Ec9tHeRP3DqBrtWV+aV9mVRYX610qGOr25Y95Ir+Fx5L9RRzuAiHzO16DTXozPKrqgM8EQcJYxWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748600995; c=relaxed/simple;
	bh=Su3qpUc6HghzR+xMC57ma3S6wsYb4kVT+RLAOM0x5jQ=;
	h=To:Subject:From:Message-Id:Date; b=My1eGesNIPAH/Gb3jRHhqbOBPMdmWIv9WJKqbNuhY6Navo4eqKr5B8mM/JVjkyQg5AqZ2RCFprseOPTsUhSwa/UDNKDYp9zTZCxSzSULGDWVXhTt0nWrfYbxIqa2WCgySPqpXZb0Kp1VdJRlfyOpAD+igUtWNQYVUiKnD20TBJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c20Ls3Tk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c20Ls3Tk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08E3C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748600993;
	bh=Su3qpUc6HghzR+xMC57ma3S6wsYb4kVT+RLAOM0x5jQ=;
	h=To:Subject:From:Date:From;
	b=c20Ls3TksoZ4H4/q6xkZ1Aikq1kNZa2d5jMisVa+Xrc+K5G+FnZ80ZaySQ6k5pWWA
	 7vQLZhGYbmZNILrl+CB8EuwjGCey8fuccy4GLU00Ysq2vo73ksqq8wGqymlQoCR5qX
	 +Q102in0fLhRMAHkwe5FnsJw4JNYGZHJ4SQCQHHGnjn7pXwqOLKnQ1k+6mzl32CScI
	 f2NtNCCH9o2nD2INHRza15Zx1jO8Ox4ezUZp/2YOkOEHZ8gNK0+iwrZX9qDSoquyf3
	 +9R6u3lGXkTfCBab628rs5JZPYoIPM4vIuP5LM40doXkyg6+m73X8ivq6eq943nWds
	 wLuPN/G1b41GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DEDC5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860099359.31615.15773521882959923183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4d65d7153f04e885f044b28743568b75dc1afcd5c4269a9ccf1d742467f2d8
Date: Fri, 30 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748600993
