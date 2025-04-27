Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE3E69D2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745776794; cv=none; b=R4GnOXTIkMg5bepJKFXy6MnApO9u+xHOEJR8hPG2Opf+VJ7IuDXTJV6H4CAxXw+F4hyHnqXs84SvjFSE9USrzl/6S1U0gpNCMRofdBJyqkO1CWerQMzJQuBk01UiVsEd2pO2lvI6PD3DaaKD/Cg+/+JXuaJGxVI5HE4scgWo1LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745776794; c=relaxed/simple;
	bh=qIiAuiKEk+NAAl0GI/k1V1gdYKSe84/j2RUb5oqUAYA=;
	h=To:Subject:From:Message-Id:Date; b=QEnCZFjc8JRbPN9EpWr8tKv+R2ve+hgp8Xl7r0UoDWoT5G64C8m0j09BhwGB95rBQ+eLZ2XdCKuD14sz92rq7xD/uegeSHXVSAZR9y6jsFeXNimShB+xujTTBUThfNu84ut1iJi5RnFHLZvaQsnPgu/oVUxN2T2QagAQ5S2YDxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YegH5HqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YegH5HqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F42C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745776793;
	bh=qIiAuiKEk+NAAl0GI/k1V1gdYKSe84/j2RUb5oqUAYA=;
	h=To:Subject:From:Date:From;
	b=YegH5HqE1/cInWxFHkxBquqdifzeGjWUNpFzwAxZZhjfuH5PSARLSazo2i0G6THBT
	 aBKTq1YjfPrOZDFOCiGWXgHQNd1L9qDFsQppqbEvjJwUFBk+U1v20exiXbqG7Mv4tE
	 ER58pv11WwNE11N3MlYjfDl8WpAi3hrlVMqfcjgOCDzV+Qqtrh99OrJtKxb7Px070z
	 8g+Wa0H363IzaTtLxRtP78SPCqsRKSHoBnXWED9M2/lYyur7IH5atUOmopOYYBP7H5
	 XX1R/5WezFJinIHw6ZgIf8AKGRDfpmK7u8ESrBl+pTInKvqBz637djRHof8JNNFns+
	 f6MuagnuEW2JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932CBC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577679357.19142.17363242157267373936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc958c6fe9ed131c63e64fdc6aa1ba2d70d9b71afc508627a19c9d872f29d5b
Date: Sun, 27 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745776793
