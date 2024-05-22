Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AB57CF30
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 22:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716418403; cv=none; b=GgeRaiVwalYYpqgBor4o+n0dLd6xybLQ9DIMaYPPWkhzjTAUI9+M6VqTP8lYmLLY9m/112cUjphN7FiBwpfq43oU6Qs0fBrPSMINZoplpojefyGGFOBcK2vOWKOdpcpb2ibxZgCUgGgLfqFsojaHOKVH5xZamR8JBnhPDMYT6W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716418403; c=relaxed/simple;
	bh=mZxKCtCNYFTWCHzvw8OwWewGWjAxtBduNWK/JsfUH+A=;
	h=To:Subject:From:Message-Id:Date; b=fua9TnczO4Wb7SwTd0c0oIE2IZjvHAc8AsogDJdctu2xS15zb1sEoVAYdPSfFgHyqCMAmwjn/n64CWyQ+985JGLzFsdYjxXWHqYAjEmNucYhRIhPRBJTfzAMYkziWECWtD4GzjdyGxcNUbR42bgj95kacqdAymotRdEaifMxXKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERnQJ1WI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERnQJ1WI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF51AC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 22:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716418402;
	bh=mZxKCtCNYFTWCHzvw8OwWewGWjAxtBduNWK/JsfUH+A=;
	h=To:Subject:From:Date:From;
	b=ERnQJ1WICTwhsskg/0HOtORT9KzDqpf4SZX5jb7pPMXJ87WiJ6BTelsbud00pZxcr
	 MS1KWOXW3hNzRfkQL2V4sSBuOIQnIV9GJM9HXtWv3UcF4X4hDxzP1Xv0rkNOUeYnVc
	 XVFBgyQ/23ppjvoJ/xl9rnP8k1u5W8otbv/pefx6tlSoowd1jIsHyHGZEKkJr3etKV
	 LV+xMtCI8eYlkKMbRL1yM+BfYjHUZSxLzHX/fbSuDM+Yq944PTjvu7Cs9DKAHEg8up
	 I1WWA2Fu4wuGEvQK2PDwkCdSujp2WwpmLSkk5jItZnIMD4v801hVjfD6PfXJHhu9mb
	 geWj4SW2LO5ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95DAC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 22:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171641840278.30104.15362044752019936065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 543031deeb97f33d180b843ba83e0690b6f3e078f2cb9172d5618befa543ad07
Date: Wed, 22 May 2024 22:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716418402
