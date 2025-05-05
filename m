Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27697192D6B
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746454194; cv=none; b=SEhyT5UNGpEaO0iv1A939pSx+gQDGzZ/raDWzVfqSLebcE4TMjVIs+O/iTbA4rj5HkSQrsUQSYbAhQdksxfbbD5V+sqIx0V40f92QFjuHF/G0nj5CACPT/8j3lhM+c9fZwKyyTD7/0HSZOdeFU4OmyThlwP7Ke1/7U1B0eCuUe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746454194; c=relaxed/simple;
	bh=WmqzucfHLCzHvFAiCUV/i7n41PPVrlW2YNnoeUbCdto=;
	h=To:Subject:From:Message-Id:Date; b=CgcHCyP7Fbg2F6GWzoZ2Qe89qC2kHrQJvjXLUS0vkz0NlZDyirsQm5JG4B4/U5Omd/oJG7y63crTPEdAqqAlhfkTBsMefFKl9W25WHoBRVMa2L1W6Vzukr2cVErMxXXw6wRLEswiz4uII5Xe29P93wVnDRpLwGVl8P+Zs4VtAp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzMBw23Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzMBw23Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC9EC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746454193;
	bh=WmqzucfHLCzHvFAiCUV/i7n41PPVrlW2YNnoeUbCdto=;
	h=To:Subject:From:Date:From;
	b=GzMBw23YXqhXK4keaX7a1b0WTDZYDQE/3kzNZPx3cCnHivn9G31XXd5LqlBUKwitf
	 ChTQfAX44AKbyCO0sZmg8gszzOPRYjd8hKlDMhBrNgPurCQxNS3C99UGNuu7Aww5U8
	 caeb81PwEmPmWBtcPTx3hezYvfPPwcu+P2KNx3RRJcEixEdsLBUSE/OvIZzSYCusct
	 Q8ZNG2q/6mqaYzA6pjXFAZhsqz09VunJI/hUzjEsyX4q6mcdP9vI+rX+qcgU64XWZr
	 FtLgQBaFh6svOMdkVcFDwLG2MgtcOjRjZYiwAUrNakyKJeBPWmol6kKGlwag8CJeaE
	 ZCo0ZKOzGArWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C8C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645419358.25282.12553933563512277132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbe7f03827b4db5c29c9f7165383d1bd087145bd029012d55c4188c3a8e2b3e
Date: Mon, 05 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746454193
