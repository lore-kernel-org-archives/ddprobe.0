Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F0B2586C2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767387234; cv=none; b=pbMShu9xsL34FlVPAVtid1a8oAf9g/Wkc9TbZPWrtHRgDXMHwzuapSbcIB4aGo1e1p/REctiVtTRiiVl1GBeFAIX4YDO7RfSyGNZoCOgBGz/wloCyR21WtTF/7RymNbHrmFMlCBi6E5OJBCa178nD8+k3gXDP1rwEQnS7I90vk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767387234; c=relaxed/simple;
	bh=k+yu/Ol2JmuBJv4CzvzR/m1H/Sj1nfI8S+jLNq3UMhA=;
	h=To:Subject:From:Message-Id:Date; b=QCnmx1zZ4VYjJrMxDfPfVRopaferZ2882oHq/TNPdS084GUnYY0ALlsjTF9iAoGYm+HzjdzzO3KpUTzHI4+CyoiTkHvDH9SL51jCwX7ZpZrWZUTt5DmyKNC0fB8OTjMl8+srN2qp58pLmPbNLgzlmGmQ48nbocDaDM8lj2Uq23Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMAovwvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMAovwvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFD0C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767387233;
	bh=k+yu/Ol2JmuBJv4CzvzR/m1H/Sj1nfI8S+jLNq3UMhA=;
	h=To:Subject:From:Date:From;
	b=rMAovwvoWEZtB9P/9nyuTq0lCDjjGTAec+E6GkflSviTQ3Tsi4enKJ9yWYgsTuWmG
	 ArWMAJbP1xM2nLzARRvU+1M75Dhbu9KhInCUjcc8PqD7PA/Ht+b708xYwd60AqomIV
	 S5LwF6gDJesmj4//ECuYIDzGVEkFhqWTF7begZSlUPIS6KYux6vW/Tfx9aaD+70362
	 XxS5l+JMf+gi5QanfpwgjT9Q95rHNzKvONWhKc1iKO82Cv6B6VqB1cAXf3K5p6vmbl
	 tuFFWVItvPt4YTfPerFtOf1UbkUBLwwm53mu7ZXkwc/YCxqQkF0yCkUKCa+sjnSIBO
	 QKShRF91YH6pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF90FA3758
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738723357.13933.17485197940889858541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89574fb439feb6aad21f888580eed90b069ee4de0381c9ebb640a078582b6e5f
Date: Fri, 02 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767387233
