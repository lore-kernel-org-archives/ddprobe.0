Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A0B1C1F21
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733906754; cv=none; b=g89SFCkU1C1PsqvYjLSxhXT1gYzmTrUPkGN5lIw/dinRcifqACg32f816t3iF3zlhE2WPKgvOje4VfwUEZ2W3eaiOl/1H9NsG5miRQSWeTrV5ZZwZwr8BD2NQFTbl5bpEUpr0R0pSGQk0+rd7uWR1eTfL/kcSSodEt9lhXhoU00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733906754; c=relaxed/simple;
	bh=WwHIHRUVcmMmv0wxoqUEU1DXCrDL7Gq1rca4GJbQF0M=;
	h=To:Subject:From:Message-Id:Date; b=DUvh8OIAAyNNbgP8gAUC4GZdQqnvInPtCi7wfHned370yYs03QbDMV274APQwRy4HrYyBdbHqnWzpqsbTqoyPj4zF//DhXf7YPujqoDteZYYW+0GLnhvwXQSyE7Wjc4IUvfZ/tTvQJEk2fMErJhQ7jzKrPYs7Gxf1SvRESjiy5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8BVyBUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8BVyBUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A653EC4CEDE
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733906753;
	bh=WwHIHRUVcmMmv0wxoqUEU1DXCrDL7Gq1rca4GJbQF0M=;
	h=To:Subject:From:Date:From;
	b=o8BVyBUmbZB5TLvw9OfDw5DdqpCIkF87IrfL2YoTdCaXLeYtq3ZPJ1ycp+NPhd7D2
	 xD02gEwnAbij8Hn9P1nVgB4pHpeCSntpAPEjzOZGJRovMh61b89AceH3r1jA48JsG8
	 OttjXrtYOV6q7OLQTFNSWZX4CAF+nPjdSVk+GK0wJJVv5N155Jbg/E6kbVLyaAjlGh
	 FhmL2BedG+2IizspcVBBAoysll6/+MbIE6gX0G3vO8NqZY+RTG4lm24lmt406dLqTW
	 We8SsC3xXMHfIyk5smsapFCPHfsW22zgmwYD9QxiVx9NDjp18uNmDJF+eU0Fby7lao
	 kjKNJUIot5tjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9406BE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173390675359.26028.10148809647756125310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d427da9dea14442f843352533ea5561d1d2fe3c2aa733f2e21c8082cf74758c2
Date: Wed, 11 Dec 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733906753
