Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060B622D4DC
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773018894; cv=none; b=Wipv5OVBbduZfJL5SuDSye/16JcuuDjfr+dLUmfXBjQ03OaLDD8lNIw3ZleiYgyrRmNw/g8YnRG+DT0ONll4GC0kpZQz4CZZMlGajNBwkI7efnBRNHO3KZqJBdyTgvMhFyphNm6FytVUgDn7XqGn0l6lg9idYWbAEUHIrduAKhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773018894; c=relaxed/simple;
	bh=W7X+A/yQ87shMuiYliL0GVIoJGdSmaLSqX4FmnVkfBs=;
	h=To:Subject:From:Message-Id:Date; b=lZInelzB6PEebRxTbSNw4TjHlF9fIHKUqz9EyOzKw/AgbQK2XQTwablYoG5dOyYbEVw9Q4r2NvVuXHzlqLFhi1eBTGzIe21HrQbHErzkvKJ2ZAtOJZ5nCGEuwbAhNMYlONNfegt8/MLikXAbnnOQ5exB6Bkc65S3ru/ID/ehgfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wb03Oy41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wb03Oy41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCF4C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773018893;
	bh=W7X+A/yQ87shMuiYliL0GVIoJGdSmaLSqX4FmnVkfBs=;
	h=To:Subject:From:Date:From;
	b=Wb03Oy410GFrWLTF9f7TAVtCegI8pMmeRGutTH+AmCjJwUpBQiSanT8/bIUjkyt3z
	 SMdLZ/eQzXTG/Mm1VK0RCdRInFa7AB0KTleJk/l/471HuOI3lxJRBAiOoBNs9NLis5
	 ADpOgmHlxoBxfhU3E1IxI1KTxHHkj/en04aAmLIok0iv3iTH3z81yNJuibHwPXITP5
	 d7R0mxMUDbW12XooZ1GvNeLdWziQYwWfy5T2vvA3HCC1BMfAdopmPVjM2EJPoH1nbn
	 yVpLnTPRdqkIluybxPhMVPsnoYdKQNDSO1FsHA4R192VNQhIWf84K7ZPfDFRVzG0KV
	 D00qhuXryfRkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC75EA852F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301889358.2591.13911444702515640564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a44b2b9377dd44a7db1e2ef7d8d744bc154f1abf3f6893940f77c808832238
Date: Mon, 09 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773018893
