Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F8B10FD
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738545355; cv=none; b=YsL7yvOmuHjhYJxf3OYk02gdatqm0jXl44yqltWJlqPV+gnj+QJeXFGfEdd8ilwAt/REBKNgII40r1o/02XrS/V3Q3rYruE3LKkuTZrEixicHM6rcxgOddWxEWyk8XQvcE1uGppmpjrYBSKVTsq2pijBC6K5Bk7Q6u+5MSIdJL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738545355; c=relaxed/simple;
	bh=V1ypJ4g23dMl5csobeLNu+UAbe2sJbxKiaI0myxSkgE=;
	h=To:Subject:From:Message-Id:Date; b=JLE9pCRngAwa9rwCJQjVz1apSUVa+M8IF+UdwE78Tg2FMYPkHo0XfwFYzTq9L9uHrdBAJLME0Frhmmic5LOe5F1V11RRjyjLV6AmK0yB/ygk/HM9QC/pPBakX9UyqCGVTvls8W8ID/ucXB9gFfwh/ZMJ/igmOkuiCM0Huyx5dMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLm8aEhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLm8aEhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02B0C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738545353;
	bh=V1ypJ4g23dMl5csobeLNu+UAbe2sJbxKiaI0myxSkgE=;
	h=To:Subject:From:Date:From;
	b=XLm8aEhQAjOBE9XxBZB5RKMsF+KAPRTRT1qiLX9v7u5y7UJx9EKJiPiBXa6jTTG3L
	 eA1aHTg3utgeOHI3xwjYZ0z4DT2YkX0PeQpGnevhJnhOu6pNVBu2Xbt+0aaiLXw68q
	 aVXL0181JihNaHGp/MlLjeKPb3GS5Fw282G+Pkr6vMhkMaeLLOiXljpsqaQwCl+THt
	 Svo+IR5DB5N6uobohhsnbgCuBCKQS64u/NucZV/oWg736bq4DGt64pXR7Ja+gHXQju
	 j0Fc86VYgcVb+zYA2IQbaJt97uJMWQjYfGMuP0EywVwTIqhn6Zk5X5AqpfwFioykwe
	 8bgFukKLzZwnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D48C0218F
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173854535358.29174.5646297224093096833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1c661bae50eb3197566942b1e2c67fbae084f5248545cf02610cd766150be4
Date: Mon, 03 Feb 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738545353
