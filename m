Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022A61E4B0
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707608297; cv=none; b=iI16yTPWTgRVoNXQnJJjGhNsYXNRgKQHqRaomIxiQidVpR4o0sqTGiJbvZa48SfUq8bXUGls6Q2KLdvqDfwrR3VHiVw+HLmAKol+cb/bBG2LJAeB+7Z/b/BSD0jMwcWvEufxWDcDGYaotFzht6siJcGCLgjE7Di9x0S0lwZh81Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707608297; c=relaxed/simple;
	bh=uj0jt/Y4SdkXDuTLGvqcsvgQ0q0ZIekvqsdJc7IXnHA=;
	h=To:Subject:From:Message-Id:Date; b=pQK8xSDAtNMxvYHsK8Ngdcs2a3gN0kX8xg+BsGvYY8fsFau5GCvcZd9yfkQXvr1vNj+pvs4sVKlFemBekXd+IoHHMTWPx6IPTHwFn1rJXMcmqcL+WnsGlbZD+sF1IgOeHR8WjmGwT8uESh+x/B5wVtHE+Pd3O6BKFnv6u8A+JnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAfecX4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAfecX4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A351C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707608296;
	bh=uj0jt/Y4SdkXDuTLGvqcsvgQ0q0ZIekvqsdJc7IXnHA=;
	h=To:Subject:From:Date:From;
	b=IAfecX4RdSCXScxQTOtKmoZhPzE8RxdoPuwNjgFWQtBwaS9RdBIZAj8oQi906piO0
	 VSb6uMKZ/9ySzhGtxUd6N4k8ay8jWMa07BW0VnqSOm5SuWcfNuc3+7EZsdrM0mWiaV
	 oohScIb4S8PoNu+y+ar2h0RoVwv2hM+Hu5x4AQ5wRVByIpDAkIFuigQDDZi7yhMJoH
	 OG+bw8U0oNaM8+Y2x5PH9HnvSiZBR+li0Nb+1Wwk4xRXkw+YbuGwh98LNmOmiyyecv
	 vD6jx7kLVo03HRVpjelwfZutkam9ZUm/lOlEuLVLMWhTkUgoKppipKe0nYij0MuYQM
	 i+eQovjpwBhmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD3FC4829C
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170760829637.19656.9211393499380454012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8293fa3b744a0a2a8f53d8aeb2e80f891a5c4dd0013382c4af9dc18ab1ee99ff
Date: Sat, 10 Feb 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707608296
