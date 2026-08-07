Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A9B2BEFFD
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786127434; cv=none; b=BEdm7MOgHjtqNMltg9uKM37CPwF5YqmjHkYpu7i5EqZrxIps7xBFso7J1U9eWHf0mAT/4TjGnfBBtOa2peOzDlQ5iextX6JwiwivkLRmL2EC1a1Ldi9nQsss1K1bII0FcX7ktZkhfIUfXrapumrMnyb+FUEv3+Pv7kMkeLBHuRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786127434; c=relaxed/simple;
	bh=pgq2wyxEjnpxAnia6ZUXTFCARyVHvrKYMdDmZwTVaOY=;
	h=To:Subject:From:Message-Id:Date; b=IyPGozk8RhzUixfk32Y6Ee5EsMSpSFHWs4SJvt2yfpJkoMGqpXBz9Mm5GfH2U5QBUN74x3hn8yEs5Fj+PGTN5Gmci7Kag0Nu6nmoVS5pF6CbZ/VOPJvFrKkeq97aQXUcKNFRVOPNqbc4nHP8azEWeTKePsFKuATTNLssMwSXhIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PW2NFOgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PW2NFOgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E51AEC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786127433;
	bh=pgq2wyxEjnpxAnia6ZUXTFCARyVHvrKYMdDmZwTVaOY=;
	h=To:Subject:From:Date:From;
	b=PW2NFOgKYf9Z9IqpeArWKWgHfqEw7eoVFdd3iXAmwZt/6vhZ87VI4wiUFYnFkqF87
	 5rQIqIKrLc8FeD8CvUvtIBlhpgIX9ACsQ6XkUxkgSp9xzPnOoypwcxUgni3107fGBM
	 pI7tjzvNhSjkJ+FpZFPzdmhr+HSSXsmeAPnW+Cq5E3CFn7IoZN6CVHR1azyOFUlvTz
	 yCXtpZv6VKVcg3ejJWH5dNkgdDIqVoscCgg8S+kz+GpSRQ4vzDD+dlq00jDksTNOBS
	 M1I9aySK9m8Sek51eRDtSlBwbMN2WfjHCm1XMIlct+RXwT1MoIISJHE0gvHwb/msw+
	 pvjauGryqaoPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCF6C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612743374.24126.12253312197724041716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1f556854f21dd1f33f7ae90b0e87d11ca63b16a0c1240e6fa6c9860d5c4c42
Date: Fri, 07 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786127433
