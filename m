Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4902E1A8F76
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733337354; cv=none; b=l0zaAEUJjtTqiDeGdgx/lqfkFzlfGtJWC3bJx6W70SqPunXjs/5BLLU4n5INSUonY/S0XniwveLnyDCFWfO0zCeDqNbTxmEhnrl37D5fd51f45n/bCjasCkWfzXYuWOcrJ/HegGzrIoPpBZystQJTstd2Kn7auS9u7TrbUkYEuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733337354; c=relaxed/simple;
	bh=RbBEnV3YhgOdm+J7IiQzXx93AXgT0ulmzJLmj81xM58=;
	h=To:Subject:From:Message-Id:Date; b=aYZqkDJNZdWQnZnPhpCwqKJewCeop/+Qv7t2Fn3mvilaAC8ZqjCvOebtiOZpWIvmPnO35dbzg0KPYJa3NhO/AKDDqvx3HIUr2QvBj5Wbon6diduQkYlbvbWraYlCgnpuHLkxZOecJZZDcN5wXPw2WjqhY7JQNtYsy+qYgr2EZxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FD4/TCWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FD4/TCWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74DCC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733337353;
	bh=RbBEnV3YhgOdm+J7IiQzXx93AXgT0ulmzJLmj81xM58=;
	h=To:Subject:From:Date:From;
	b=FD4/TCWetwkcoU0MAx9tdd1Qt71fgcUC5rDfhRNsVOF2parPcWZc2OrPoM4SUOvu1
	 WagxgrPoI6xRw7Hw7Z9U6lwhhzBOsT2DKRzwfH98jNSUfTSwgjUdIww1iwQT9p0XSA
	 uP/3IwngrD4ANm9Fv0/+5tONWgHTfnq1LqwkxaFxXD2Y3D0EoCDsFebn7n5GbRZyEB
	 rDCq18+hdABJyrPzBFnqyAMU7ntS45uyzsYxxvpsiufLTtH2HkNIkg8SQmsTV2VzaG
	 bRGcorT7dDIF+vUROt9cShydnsqN8TqcI5zyxwU625RmMg6ddLBL55Buxv+Lj4FV94
	 nChvVTyYhK7Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF50E7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173333735362.19580.11692030266730442375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd68ab2b258855d28a2c042ca704b1a9c49bbee07178bca2671c3818211bd45
Date: Wed, 04 Dec 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733337353
