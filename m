Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542FE289367
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784393314; cv=none; b=YOV9/XeqNZy4hzl1AMplJUMtaBLmliX6pXGyHqow0EHEXlf4dR28Oa13Qg8Z3Z2L5KP+xek0YQIp0vMM6A2Zw+BPHjICRAG2rtw2AOxx5U2xVtge87F/aBRA+UG1i+l0zuKkYuelg2nFz35UFuk5+4bDPFhJ3tuNthU8v3AAnks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784393314; c=relaxed/simple;
	bh=RrXZQWtIHRdxg7xqstcUCMY/byXua3zngV9zOzryjpI=;
	h=To:Subject:From:Message-Id:Date; b=J+lLUH9J/YFrPFrs0Yo2sJmB131H9M8qIuyr4QxgrWjnOajnmtPiFciXa1K3XA9gQ8AgRChQlQ/v/C9z5J4NMw3jq+5uZ8P+2KJlJJvwtkp26UeTu3fi51mE1Khg67K7yDCqHt18Gy8pjU3gUjX7dc//m2GrXDSNLrJbt4cBgxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nh/UfaBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nh/UfaBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C6DC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784393313;
	bh=RrXZQWtIHRdxg7xqstcUCMY/byXua3zngV9zOzryjpI=;
	h=To:Subject:From:Date:From;
	b=nh/UfaBmM73xJmhUTcGomIbnk/2UQD67qW+DuTzOCAdq1FNNCoTQv2ACOTIm2QmOj
	 l8Y5cX6HsiWRrWtlucPLvmkoffbg1ATM6/7DgjaQINB7/y0t1S5epKZ3cE77uU6s7B
	 9dmF50UXY79V++MCONqgrVXUJpPQOzEMy52G2PJuv2y2aoNKIoK1uStrqsDLrAVMiw
	 Vi+HAvDTqJrZl3AG9ucSHIrF8JcFYXWo6dUOhnv1o0duMsv/TA8HfNAu/OodsFrek5
	 lyY8dq9dykcxwHE9QzJtjlZKjkP/mAgAFJO0yp8oMbEtUWZO8ZxNzcmbMJrlJgkM0N
	 ITdX3gyy6r++w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9952C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439331372.7940.7510553730399880316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43af8530eafd6c40e1e7be070ba32b762d75ba2a26183b54918fb095372e0775
Date: Sat, 18 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784393313
