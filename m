Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6965218DB26
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787718634; cv=none; b=SvIp5YLggZ7QP21TOC9VSbvISoMwLdLiBsL8iMMmN+bybtjwPbZ4qHgBWRcNu+D701p97c/S+i8ROMdYwmErdse3/i41GTtbmgURtnq7YUARK/4fIFQlOpXM6OKKQFTcsgQFiXgkiw8TdS7kUCZIN8qzoHKZfYeEMf1yv1QIYUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787718634; c=relaxed/simple;
	bh=qK4gvY3NT4rwCXQcKXDMzQQDM1pDR+fw+LbMZvQk0Mw=;
	h=To:Subject:From:Message-Id:Date; b=nI4zo9ZXyvE920gHRXqVd2Q/Gei4xwhTjiz9AE5YeJZSBSDQoaIz8+X1k2sU8cVFzvfTA6eccWYC2PmyYotWBf8m98VFqLbs7jUFYXwq4+M+4Q3WwWbqFpnSQPAWWFOuqexRM3W0eZLmmZ40zkvYmd8Ky/6Y32XOFJQobNKmCo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEIcBUjr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEIcBUjr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4283C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787718633;
	bh=qK4gvY3NT4rwCXQcKXDMzQQDM1pDR+fw+LbMZvQk0Mw=;
	h=To:Subject:From:Date:From;
	b=fEIcBUjrUUjz3ozlkvQnYO5HK0Y5qNZL0HEtx/r2q2m/RWOEC42HfbuUNzV48Sqkq
	 ylHTRi2mzEadDUeQXeufPqg125cuPFnCCc+QqOBpcunmgyizZVh8J8LsaQANzm4a7J
	 kqlP4JkXyCL5v4g09g2PbBM6feV0w6XebnpADYQbDiE2uOfYt6zEekmnelzheHk70G
	 V0kdG0Ca9OVk8yQoKiwAGtQu9T8AeTu00yJ7w2rr5C2837d1KDcMpIppWIeA+llEo1
	 3t6lA274nNcGWdOFxnPzREczxMDkMe/9ktqdZd6+WA1DnKJLPrYAwSNIgHqX5nQM6c
	 x44epz5Xaaqgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC63AC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771863369.16616.4198263812175064471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ecef92fe577d3f0c6e6eacab41b7ec6871d95d952319c1de902b2068a4378f
Date: Wed, 26 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787718633
