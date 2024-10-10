Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C5429CEC
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728531354; cv=none; b=W+igZMAOYtAAeMexUoMPSq5kyBl9wed2UkKIm5fNC0aafjSVnX6G0/ushe4dtZeQ4a1BZg/nJGF3EdpGfY3xEzlzxnc3SjOKIvz6cyVpDN08ugF0StJHBEsGbIsnCAktaC8eAL5qxGF4FMeX+M7agW9FgwHFn/TJkLWd4IVUeao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728531354; c=relaxed/simple;
	bh=7uFbG9Id2w8HBh/l/fdSJYRGcldmRbHTrVIDnxCz2R4=;
	h=To:Subject:From:Message-Id:Date; b=Xm+BmlcdTAFxwlQcJZ5xa6rVGIIInzywBtDCcZTe0GSximLbgN3FrtA6QaRmXYr4vZHA57oJYdWBowmkN8oBDSFHHVQVAXbYcl4k9P3omRi9tv1+ebLCDDadjPqi33C6wz8YR4Vs3Tvv14JIHmXzWCVyYf5MkMqFW/o8G8S6O4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Umk3Q4kd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Umk3Q4kd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A411CC4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728531353;
	bh=7uFbG9Id2w8HBh/l/fdSJYRGcldmRbHTrVIDnxCz2R4=;
	h=To:Subject:From:Date:From;
	b=Umk3Q4kdR+xV4KAyEHB8zul5nZCP7NEnEfR9YJoYT28MI3yvlCcIeTTKMUTD3qdRJ
	 l+40ZrCezWP+6YsOPhpbqeVyha2EuF/8f0Tnro/DBfALHNB5Xy43fc359C1LDDT5q9
	 /81hO875pv1QAE9vTSJrSSwlzkTIZThJLtuWLuq2zMQU6EnP2zPDErFJf/CGgxdGHG
	 ipg+PxfMAiZk4idChwdoJBOuh7rQs3aeJmSp4wbcsJZq2QoyEmXB+ZQlJF0jyeBO7a
	 69yoCEVYokG2gRwNfLup8B5dDMlq4w9TeEEAfwAs//sZpFI1LJexiBGorRuKBIDe2U
	 iDD6+RtBimm7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956D9CEDDB8
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172853135360.13142.7535093341800460046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbab500f658e5482a892bd483c1f8a43a9f7f9a466309fb2ebe2129074808435
Date: Thu, 10 Oct 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728531353
