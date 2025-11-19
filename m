Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E9F3587A9
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763555514; cv=none; b=sG9UqSanzC7ZJG8gFSdjzzBrnQCfucPVcT5jNe/H84XxU0Xk3FhPECN0ux2i1KWVwbiyC+VRatKXKg36udqaObII4IsU4vBRsJu57l32t5hqJiSTS9I/DYgC8GRsKWgvxwK4aJbdvYrz8tLq89ThZVzpKreq3MLh3eGTsT+WPNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763555514; c=relaxed/simple;
	bh=QX9nhGI4LQCTuTnU+nt6C2Q+BzqZWXMnGGpD3fbR3XA=;
	h=To:Subject:From:Message-Id:Date; b=hL2gK0vGXW+4bDokM9tCD+KsjoobobS+9XS5a+oHKe6dPY2/XkPW4ew2538m7v5gBHlEY/fwErgScpaxq+kX8fqB3uj5IwXRnHrnbXdOnxOGg8NyVQn5IiA95oSm05Dubhj6H5SukTppHZscpXfR4rYoaPWofD3GpcxvPA1YWz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuzXQN/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuzXQN/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F49C116B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763555513;
	bh=QX9nhGI4LQCTuTnU+nt6C2Q+BzqZWXMnGGpD3fbR3XA=;
	h=To:Subject:From:Date:From;
	b=VuzXQN/cXKj5Kcj2RlLKi0zdh6eDTha3NjCxVVUM38cWTCv5ZuOpsZcejTV3IbzBM
	 m67x+kJroki/J75Pau9ORl1JPFD8MPquD1/oxjxs4TyqKZMyWqDSWnj3+PXW+HIhMG
	 qaHjWHxJBF1PZ+GpYKaybVQs5j1XiRqG3PabjHvrtLIuXVEIPbmB/cdqKC9LUnMyrq
	 tRNANM7X1TN0Bu2cIDCsODRlTcTdAyBxwUoFqwi5C8ENoFKCFv0yAn6zxMfDmdw8U7
	 KMxrKyoDW7PE7wc3kiohKUPqzfZsPvURsEtE3jKqNQCZ9ekFbyG0rrMgTIwdjaxxv7
	 /fuiyCUzll5JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9101CCF31B4
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355551358.3458.12957159351195939998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ae3d2b662ac286a3dd0bb702b13eab78945f35f71b7cb42a1f1df35b9ac984
Date: Wed, 19 Nov 2025 12:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763555513
