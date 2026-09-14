Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80170496D4F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789416634; cv=none; b=QeskJoW+InFi3/0MXWujAOVZ+2TOmcYqq0v66C5fOpu1FsYXUMFyNLT3XGvdR8fJpt1LunVzfV2b6HMv6VHZKOo4d9cr8fKDR82+pohpAJoDE83C+XhH8zxkWs8ns45+Axz/yEVxRhrw692G6XLrC/0+O+Uqomddhl1AQgfVRiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789416634; c=relaxed/simple;
	bh=U3wbHb18oMOK/BgYkOfUMqUAdh+QNkEjE0NSilEzRtk=;
	h=To:Subject:From:Message-Id:Date; b=jowtnwoKz1HxSNmRYXCa3Ob3rrBEA9AhTZKS01017WLSR63bx9cOQ2JbOJ7fpxpWLlILVtu2GZ/qs8y/sbHyegnUjhsQtlydMdMgt1pCCf1Rl7yJeOkrIyMY+XrMVs/jroLetbIZnSIwWZ5Ci2qic7o4u3xqfvfdo/EhNLH3V88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nf53lemw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nf53lemw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D851EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789416633;
	bh=U3wbHb18oMOK/BgYkOfUMqUAdh+QNkEjE0NSilEzRtk=;
	h=To:Subject:From:Date:From;
	b=nf53lemwoC0fN9X5XbD/fiCjAjKDN/ifOcSbNKbzylgHKTP66wzBpP6Ty6qe1PX+N
	 sGnaPutqJQlAGF1DEgiZeX04GuX+msHyOLnHrRCZW3T3zUJFcWCFX4HW8P14t9eIrZ
	 AL+MvRhYAfGKnfWxfXsogZi6IgyrYcBOjv0qVe4RD1MB7RMz3lDwueMiKMU4OJnydc
	 whKDFQmUtGmqc9YrN4pDFOcaNQw9Bo22FGAI4ylYXft96AvTeumWwsZglSwnmT76P5
	 odaJBKYsXwTU6x28fgwoJa6SKyFjh4U22LtgVNpeK1h5fsBnrNYUgB5jZukbLlhLAs
	 8kINNaaJRrA3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF799C88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941663370.20397.1041669681482615942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e183f068f08c9a85f58d221771b0c254dc62fc39dd9704271f890cae33a745e
Date: Mon, 14 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789416633
